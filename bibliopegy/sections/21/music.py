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

score = library.bibliopegy_score([(1, 8) for _ in range(1, 15)])

# music commands

# tape music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 14)),
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

# viola music

for measures in [(3, 4), (10, 11)]:
    trinton.make_music(
        lambda _: trinton.select_target(_, measures),
        evans.RhythmHandler(evans.talea([1000], 8)),
        library.duration_line(),
        evans.PitchHandler([-7, 4]),
        trinton.noteheads_only(),
        library.viola_bridge_staff(stage=3),
        trinton.linear_attachment_command(
            attachments=[
                abjad.Dynamic("ppp"),
                abjad.StartHairpin("<"),
                abjad.Dynamic("mf"),
                abjad.StartHairpin(">"),
                abjad.Dynamic("ppp"),
            ],
            selector=trinton.select_leaves_by_index([0, 0, 1, 1, -1]),
        ),
        trinton.hooked_spanner_command(
            string=r"""\markup \with-color "rosybrown" { II + III }""",
            selector=trinton.select_leaves_by_index([0, -1], pitched=True),
            padding=7,
            right_padding=0,
            full_string=True,
            tweaks=[r"- \tweak color #(css-color 'rosybrown)"],
            command="One",
        ),
        trinton.hooked_spanner_command(
            string=r"""\markup \with-color "mediumblue" { +45° }""",
            selector=trinton.select_leaves_by_index([0, -1], pitched=True),
            padding=4,
            right_padding=0,
            full_string=True,
            tweaks=[r"""- \tweak color #(css-color 'mediumblue)"""],
            command="Two",
        ),
        voice=score["viola voice"],
    )

# violin music

for measures in [(3, 4), (10, 11)]:
    trinton.make_music(
        lambda _: trinton.select_target(_, measures),
        evans.RhythmHandler(evans.talea([1000], 8)),
        evans.PitchHandler(["aqs''''"]),
        trinton.change_notehead_command(
            notehead="harmonic",
            selector=trinton.logical_ties(first=True, pitched=True, grace=False),
        ),
        library.duration_line(),
        trinton.ottava_command(
            octave=2, selector=trinton.select_leaves_by_index([0, -1])
        ),
        trinton.linear_attachment_command(
            attachments=[
                evans.make_fancy_gliss(
                    1,
                    1,
                    1,
                    1,
                    2,
                    1,
                    1,
                    2,
                    1,
                    1,
                    1,
                    1,
                    1,
                    2,
                    1,
                    2,
                    1,
                    2,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    2,
                ),
                abjad.Dynamic("ppp"),
                abjad.StartHairpin("<"),
                abjad.Dynamic("mf"),
                abjad.StartHairpin(">"),
                abjad.Dynamic("ppp"),
            ],
            selector=trinton.select_leaves_by_index([0, 0, 0, 1, 1, -1]),
        ),
        trinton.hooked_spanner_command(
            string="""\markup \with-color "darksalmon" { \musicglyph "noteheads.s0harmonic" "  11° / E5 ( I )" }""",
            selector=trinton.select_leaves_by_index([0, -1], pitched=True),
            padding=13,
            full_string=True,
            tweaks=[r"- \tweak color #(css-color 'darksalmon)"],
            command="One",
        ),
        trinton.hooked_spanner_command(
            string=r"""\markup \with-color "darkred" { "flaut. moltiss." }""",
            selector=trinton.select_leaves_by_index([0, -1], pitched=True),
            padding=10.5,
            full_string=True,
            tweaks=[r"""- \tweak color #darkred"""],
            command="Two",
        ),
        trinton.hooked_spanner_command(
            string=r"""\markup \with-color "darkmagenta" { \fontsize #3.5 \override #'(font-name . "ekmelos") \char ##xe222 }""",
            selector=trinton.select_leaves_by_index([0, -1]),
            padding=8,
            full_string=True,
            tweaks=[r"- \tweak color #darkmagenta"],
            command="Three",
        ),
        voice=score["violin voice"],
    )

# flute music

for measures in [(1, 6), (8, 13)]:
    for voice_name, extra_counts in zip(
        ["flute voice", "bassflute voice"], [[0, 1, -1], [-1, 1, 0]]
    ):
        trinton.make_music(
            lambda _: trinton.select_target(_, measures),
            evans.RhythmHandler(
                evans.talea([1], 16, extra_counts=extra_counts),
            ),
            evans.PitchHandler(["ef'", "f'"]),
            trinton.change_notehead_command(
                notehead="la",
                selector=trinton.logical_ties(first=True, grace=False, pitched=True),
            ),
            library.duration_line(),
            trinton.attachment_command(
                attachments=[
                    abjad.StartSlur(),
                    trinton.make_custom_dynamic("fpp"),
                    abjad.StartHairpin("<"),
                ],
                selector=trinton.patterned_tie_index_selector(
                    [0], 5, first=True, grace=False, pitched=True
                ),
            ),
            trinton.attachment_command(
                attachments=[abjad.StopSlur()],
                selector=trinton.patterned_tie_index_selector(
                    [4], 5, first=True, grace=True, pitched=True
                ),
            ),
            trinton.linear_attachment_command(
                attachments=[
                    abjad.Dynamic("mp"),
                    abjad.Dynamic("ff"),
                ],
                selector=trinton.patterned_tie_index_selector(
                    [4], 5, first=True, grace=True, pitched=True
                ),
            ),
            trinton.attachment_command(
                attachments=[abjad.StopSlur(), abjad.Dynamic("p")],
                selector=trinton.select_leaves_by_index([-1]),
            ),
            voice=score[voice_name],
        )

for voice_name in ["flute voice", "bassflute voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        library.boxed_markup("Piccolo", site="opening"),
        voice=score[voice_name],
    )

# percussion 1 music

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 13)),
    evans.RhythmHandler(evans.talea([-1, 10, -100], 16)),
    library.change_lines(lines=1, clef="percussion"),
    library.duration_line(),
    library.boxed_markup(string="bow String of Thunder Tube"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("ppp"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 3, 3, -1], pitched=True),
    ),
    voice=score["percussion 1 voice"],
)

# celli music

for voice_name in ["cello 1 voice", "cello 2 voice", "cello 3 voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (9, 12)),
        evans.RhythmHandler(evans.talea([1000], 8)),
        evans.PitchHandler(["aqf,"]),
        library.duration_line(),
        trinton.change_notehead_command(
            notehead="harmonic",
            selector=trinton.logical_ties(first=True, pitched=True, grace=False),
        ),
        trinton.linear_attachment_command(
            attachments=[
                abjad.Clef("bass"),
                abjad.Dynamic("ppp"),
                abjad.StartHairpin("<"),
                abjad.Dynamic("mf"),
                abjad.StartHairpin(">"),
                abjad.Dynamic("ppp"),
            ],
            selector=trinton.select_leaves_by_index([0, 0, 0, 2, 2, -1]),
        ),
        trinton.hooked_spanner_command(
            string="""\markup \with-color "darksalmon" { \musicglyph "noteheads.s0harmonic" "  ( IV )" }""",
            selector=trinton.select_leaves_by_index([0, -1], pitched=True),
            padding=5.5,
            full_string=True,
            command="One",
            right_padding=0,
            tweaks=[r"""- \tweak color #(css-color 'darksalmon)"""],
        ),
        trinton.hooked_spanner_command(
            string=r"""\markup \with-color "indianred" { "molto tast." }""",
            selector=trinton.select_leaves_by_index([0, -1], pitched=True),
            padding=3.5,
            right_padding=0,
            full_string=True,
            tweaks=[r"- \tweak color #(css-color 'indianred)"],
            command="Two",
        ),
        voice=score[voice_name],
    )

# bass trombone music

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 13)),
    evans.RhythmHandler(evans.talea([-1, 10, -100], 16)),
    evans.PitchHandler([-24]),
    library.change_lines(lines=5, clef="bass"),
    trinton.change_notehead_command(
        notehead="lowest",
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    library.duration_line(),
    trinton.linear_attachment_command(
        attachments=[
            evans.make_fancy_gliss(
                1,
                1,
                1,
                1,
                1,
            ),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("ppp"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 3, 3, -1], pitched=True),
    ),
    voice=score["basstrombone voice"],
)

# percussion 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 11)),
    evans.RhythmHandler(evans.talea([1], 32)),
    evans.PitchHandler([["fs,", "g,", "df", "ef"]]),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("tenuto"),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 4, 4, -1]),
    ),
    voice=score["percussion 2 voice"],
)

# globals

library.set_all_time_signatures(score=score, exclude_viola=False)

# library.remove_redundant_time_signatures(score=score)

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

library.write_timestamps(
    global_context=score["Global Context"],
    second_range=(13, 1000),
    measure_range=(1, 6),
)

library.silence(score=score, measures=[7], timestamps=[r"19\" - 24\""])

library.write_timestamps(
    global_context=score["Global Context"],
    second_range=(25, 1000),
    measure_range=(8, 13),
)

library.silence(score=score, measures=[14], timestamps=[r"31\" - 38\""])

library.forbid_break(score=score, measures=[3, 4, 8, 9, 10, 11, 12])

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            library.movements[3],
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

# staff spacing

# staff spacing

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (17 16 17 19 27 17 17 17 17 17 17 17)))",
                site="before",
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)


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
    segment_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/sections/21",
    build_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/build",
    segment_name="21",
    includes=[
        "/Users/trintonprater/scores/bibliopegy/bibliopegy/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
