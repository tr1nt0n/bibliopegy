import abjad
import baca
import evans
import itertools
import trinton
from abjadext import rmakers
from abjadext import microtones
from bibliopegy import library
from bibliopegy import ts
from bibliopegy import pitch

# score

score = library.bibliopegy_score([(1, 8) for _ in range(1, 20)])

# music commands

# tape music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 19)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    evans.PitchHandler([-1]),
    library.change_lines(lines=2, clef="percussion"),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\override NoteHead.stencil = #ly:text-interface::print",
                    r"""\override NoteHead.text = \markup \with-color "forestgreen" \override #'(font-name . "Source Han Serif SC Bold") { 是 }""",
                ],
                site="before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    library.duration_line(color="(css-color 'forestgreen)"),
    voice=score["piano voice"],
    preprocessor=trinton.fuse_preprocessor((7,)),
)

# the second dune

library.dune_ii(
    voices=[
        score["violin voice"],
        score["bassflute voice"],
        score["flute voice"],
    ],
    measures=(13, 14),
    rotation=1,
    dynamics=["mp", "mf"],
)

library.dune_ii(
    voices=[
        score["bassclarinet voice"],
        score["violin voice"],
        score["bassflute voice"],
        score["flute voice"],
    ],
    measures=(15, 18),
    rotation=3,
    dynamics=["f", "mp", "ppp"],
)

# viola music

trinton.make_music(
    lambda _: trinton.select_target(_, (15, 19)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    library.duration_line(),
    trinton.noteheads_only(),
    library.change_lines(lines=1, clef="percussion"),
    library.boxed_markup(
        string="Rotate Baoding Balls in Hand, dynamics controlled by amplification"
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("o<"), abjad.Dynamic("mp")],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    voice=score["viola voice"],
    preprocessor=trinton.fuse_preprocessor((5,)),
)

# bass clarinet music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 6)),
    evans.RhythmHandler(evans.talea([1], 32)),
    evans.PitchHandler([library._bass_clarinet_multiphonics[1][0]]),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.patterned_tie_index_selector(
            [
                2,
                6,
                10,
                11,
                13,
                14,
            ],
            17,
            first=True,
            pitched=True,
            grace=False,
        ),
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 10)),
    evans.RhythmHandler(
        evans.talea(
            [1, 1, 1, 3, 1, 3, 1],
            32,
        )
    ),
    evans.PitchHandler([library._bass_clarinet_multiphonics[1][0]]),
    trinton.pitch_with_selector_command(
        pitch_list=[library._bass_clarinet_multiphonics[3][0]],
        selector=trinton.patterned_tie_index_selector(
            [
                3,
                5,
            ],
            7,
            pitched=True,
            grace=False,
        ),
    ),
    library.duration_line(
        selector=trinton.patterned_tie_index_selector(
            [
                3,
                5,
            ],
            7,
            pitched=True,
            grace=False,
        )
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.logical_ties(
            first=True, pitched=True, grace=False, exclude=[3, 5, 10]
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.patterned_tie_index_selector(
            [
                3,
                5,
            ],
            7,
            first=True,
            pitched=True,
            grace=False,
        ),
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 14)),
    evans.RhythmHandler(evans.talea([1], 4)),
    evans.PitchHandler([library._bass_clarinet_multiphonics[3][0]]),
    library.duration_line(),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 14)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, -2], pitched=True, first=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TextScript.whiteout = 0", site="before"
            ),
            abjad.Markup(
                r"""\markup \with-color "seagreen" \override #'(size . .6) { \hspace #1.7 \woodwind-diagram #'bass-clarinet #'((cc . (one two)) (lh . (thumb)) (rh . (two)))}""",
            ),
        ],
        selector=trinton.select_leaves_by_index([29]),
        direction=abjad.UP,
    ),
    trinton.hooked_spanner_command(
        string=library._bass_clarinet_multiphonics[1][1],
        selector=trinton.select_logical_ties_by_index(
            [0, 26, 32, 35], first=True, pitched=True
        ),
        padding=7,
        full_string=True,
        tweaks=[r"""- \tweak color #(css-color 'seagreen) """],
    ),
    trinton.hooked_spanner_command(
        string=library._bass_clarinet_multiphonics[3][1],
        selector=trinton.select_logical_ties_by_index(
            [27, 28, 30, 31, 36, -1], first=True, pitched=True
        ),
        padding=7,
        right_padding=0,
        full_string=True,
        tweaks=[r"""- \tweak color #(css-color 'seagreen) """],
    ),
    voice=score["bassclarinet voice"],
)

# percussion 1 music

trinton.make_music(
    lambda _: trinton.select_target(_, (17, 19)),
    evans.RhythmHandler(evans.tuplet([(1, 2)])),
    evans.PitchHandler([[-1, 2]]),
    library.duration_line(sustained=True, selector=trinton.pleaves()),
    library.change_lines(lines=2, clef="percussion"),
    library.boxed_markup(string="Anvils w/ Hammers"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 1, 1, -1], first=True, pitched=True
        ),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "darkmagenta" { \fontsize #3.5 \override #'(font-name . "ekmelos") \char ##xe222 }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=7,
        full_string=True,
        tweaks=[r"- \tweak color #darkmagenta"],
    ),
    voice=score["percussion 1 voice"],
    preprocessor=trinton.fuse_preprocessor((3,)),
)

# celli music

for voice_name in ["cello 1 voice", "cello 2 voice", "cello 3 voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (1, 19)),
        evans.RhythmHandler(evans.talea([19, 19], 16)),
        library.duration_line(
            selector=trinton.select_logical_ties_by_index(
                [-1], pitched=True, grace=False
            )
        ),
        trinton.glissando_command(
            selector=trinton.ranged_selector(ranges=[range(0, 3)], nested=True),
            zero_padding=True,
        ),
        evans.PitchHandler(["a'", "ef,", "a'"]),
        trinton.linear_attachment_command(
            attachments=[
                abjad.Clef("bass"),
                abjad.Dynamic("pppp"),
                abjad.StartHairpin("<"),
                abjad.Dynamic("f"),
                abjad.StartHairpin(">"),
                abjad.Dynamic("pppp"),
            ],
            selector=trinton.select_logical_ties_by_index(
                [0, 0, 0, 1, 1, -1], pitched=True, first=True
            ),
        ),
        trinton.linear_attachment_command(
            attachments=[
                abjad.StartSlur(),
                abjad.LilyPondLiteral(r"\slurDashed", site="before"),
                abjad.StopSlur(),
                abjad.LilyPondLiteral(r"\slurSolid", site="after"),
            ],
            selector=trinton.select_leaves_by_index([0, 0, -1, -1], pitched=True),
            direction=abjad.DOWN,
        ),
        voice=score[voice_name],
        preprocessor=trinton.fuse_preprocessor((20,)),
    )

# tenor trombone music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    evans.RhythmHandler(evans.talea([1], 32, extra_counts=[0, 1])),
    evans.PitchHandler([-24]),
    trinton.change_notehead_command(
        notehead="lowest",
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    library.change_lines(lines=5, clef="bass"),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.patterned_tie_index_selector(
            [
                2,
                6,
                10,
                11,
                13,
                14,
            ],
            17,
            first=True,
            pitched=True,
            grace=False,
        ),
    ),
    voice=score["tenortrombone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 10)),
    evans.RhythmHandler(
        evans.talea(
            [
                3,
                1,
                1,
                1,
                1,
                4,
                1,
                1,
                1,
                1,
                4,
            ],
            32,
            extra_counts=[0, 1],
        )
    ),
    evans.PitchHandler([-24]),
    trinton.change_notehead_command(
        notehead="lowest",
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    library.duration_line(
        selector=trinton.patterned_tie_index_selector(
            [0, 5, 10], 11, first=True, grace=False, pitched=True
        )
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.logical_ties(
            first=True, pitched=True, grace=False, exclude=[0, 5]
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.patterned_tie_index_selector(
            [0, 5, 10], 11, first=True, grace=False, pitched=True
        ),
    ),
    voice=score["tenortrombone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 14)),
    evans.RhythmHandler(
        evans.talea(
            [1],
            4,
        )
    ),
    evans.PitchHandler([-24]),
    trinton.change_notehead_command(
        notehead="lowest",
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    library.duration_line(),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    voice=score["tenortrombone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 11)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, -1], pitched=True, first=True, grace=False
        ),
    ),
    voice=score["tenortrombone voice"],
)

library.trombone_alpha(
    voices=[score["tenortrombone voice"], score["basstrombone voice"]],
    measures=(15, 18),
    rotation=4,
    # dynamics=["ff"],
    pitching=False,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (15, 18)),
    library.duration_line(),
    library.pitch_trombone_cascading_glissandi(starting_point=5, direction="down"),
    library.trombone_glissando_staff(),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin(">"), abjad.Dynamic("pppp")],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    voice=score["tenortrombone voice"],
)

# bass trombone music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RhythmHandler(evans.talea([1], 32, extra_counts=[-1, 0])),
    evans.PitchHandler([-24]),
    trinton.change_notehead_command(
        notehead="lowest",
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.patterned_tie_index_selector(
            [
                2,
                6,
                10,
                11,
                13,
                14,
            ],
            17,
            first=True,
            pitched=True,
            grace=False,
        ),
    ),
    voice=score["basstrombone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 10)),
    evans.RhythmHandler(
        evans.talea(
            [1, 1, 4, 1, 1, 1, 1, 5, 1, 1, 1, 1, 3, 4], 32, extra_counts=[-1, 0]
        )
    ),
    evans.PitchHandler([-24]),
    trinton.change_notehead_command(
        notehead="lowest",
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    library.duration_line(
        selector=trinton.patterned_tie_index_selector(
            [2, 7, 12, 13], 14, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.logical_ties(
            first=True, pitched=True, grace=False, exclude=[2, 7]
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.patterned_tie_index_selector(
            [2, 7, 12, 13], 14, first=True, pitched=True, grace=False
        ),
    ),
    voice=score["basstrombone voice"],
    preprocessor=trinton.fuse_preprocessor((3,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 14)),
    evans.RhythmHandler(
        evans.talea(
            [1],
            4,
        )
    ),
    evans.PitchHandler([-24]),
    trinton.change_notehead_command(
        notehead="lowest",
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    library.duration_line(),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    voice=score["basstrombone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 11)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, -1], pitched=True, first=True, grace=False
        ),
    ),
    voice=score["basstrombone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (15, 18)),
    library.duration_line(),
    library.pitch_trombone_cascading_glissandi(starting_point=-3, direction="up"),
    library.trombone_glissando_staff(),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin(">"), abjad.Dynamic("pppp")],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    voice=score["basstrombone voice"],
)

# percussion 2 music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 19)),
    evans.RhythmHandler(evans.talea([19, 19], 16)),
    library.duration_line(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False)
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 3)], nested=True),
        zero_padding=True,
    ),
    evans.PitchHandler(
        [
            "a'",
            "ef,",
            "a'",
        ]
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Glissando.style = #'trill", site="before"
            ),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("pppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pppp"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 0, 1, 1, -1], pitched=True, first=True
        ),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "darkmagenta" { \fontsize #3.5 \override #'(font-name . "ekmelos") \char ##xe222 }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        style="dashed-line-with-up-hook",
        direction="down",
        padding=9,
        full_string=True,
        tweaks=[r"- \tweak color #darkmagenta"],
    ),
    voice=score["percussion 2 voice"],
    preprocessor=trinton.fuse_preprocessor((20,)),
)

# globals

library.set_all_time_signatures(score=score, exclude_viola=False)

# library.remove_redundant_time_signatures(score=score)

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

library.write_timestamps(
    global_context=score["Global Context"],
    second_range=(39, 1000),
    measure_range=(1, 19),
)

# library.forbid_break(score=score, measures=[3, 4, 8, 9, 10, 11, 12])


# cutaway

trinton.whiteout_empty_staves(
    score=score,
    cutaway="blank",
    # voice_names=[_ for _ in library.all_voice_names if _ != "viola voice"],
    last_segment=True,
)

# library.blank_measure_by_hand(
#     score=score,
#     voice_names=["viola voice"],
#     measures=[
#         1,
#         2,
#         3,
#         4,
#         5,
#         6,
#         7,
#         8,
#         9,
#         18,
#     ],
# )

# library.blank_measure_by_hand(
#     score=score,
#     voice_names=["viola voice temp"],
#     measures=[
#         13,
#         14,
#         15,
#         16,
#         17,
#         18,
#         19,
#         20,
#         21,
#         22,
#     ],
# )


# parts

trinton.extract_parts(score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/sections/22",
    build_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/build",
    segment_name="22",
    includes=[
        "/Users/trintonprater/scores/bibliopegy/bibliopegy/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
