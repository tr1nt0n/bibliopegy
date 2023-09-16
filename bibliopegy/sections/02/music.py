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

score = library.bibliopegy_score([(1, 8) for _ in range(1, 14)])
# music commands

# tape music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 11)),
    evans.RhythmHandler(rmakers.note),
    evans.PitchHandler([-3]),
    library.change_lines(lines=3, clef="percussion"),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\override NoteHead.stencil = #ly:text-interface::print",
                    r"""\override NoteHead.text = \markup \with-color "darkred" { α }""",
                ],
                site="before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    evans.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(
            evans.talea(
                [
                    9,
                ],
                8,
            ),
        ),
        direction=abjad.UP,
        voice_name="beta voice",
    ),
    voice=score["piano voice"],
    preprocessor=trinton.fuse_preprocessor((9,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 11)),
    library.duration_line(color="darkred"),
    voice=score["piano voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 11)),
    library.duration_line(color="(css-color 'indianred)"),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\override NoteHead.stencil = #ly:text-interface::print",
                    r"""\override NoteHead.text = \markup \with-color "indianred" { β }""",
                ],
                site="before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["beta voice"],
)

# flute music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 11)),
    evans.RhythmHandler(evans.talea([5, 4, 3], 32)),
    trinton.force_rest(
        selector=trinton.patterned_tie_index_selector(
            [
                1,
            ],
            2,
        )
    ),
    library.duration_line(),
    trinton.change_lines(lines=1, clef="varpercussion", tag=None),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
        ],
        selector=trinton.logical_ties(pitched=True, first=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin()],
        selector=trinton.grace_selector(),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "indianred" \center-column { \line { covering the entire } \line { mouthpiece with the lips } }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=4,
        right_padding=0,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'indianred)"],
    ),
    voice=score["flute voice"],
)

# bass flute music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 11)),
    evans.RhythmHandler(evans.talea([3, 5, 4], 32)),
    trinton.force_rest(
        selector=trinton.patterned_tie_index_selector(
            [
                0,
            ],
            2,
        )
    ),
    library.duration_line(),
    trinton.change_lines(lines=1, clef="varpercussion", tag=None),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
        ],
        selector=trinton.logical_ties(pitched=True, first=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin()],
        selector=trinton.grace_selector(),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "indianred" \center-column { \line { covering the entire } \line { mouthpiece with the lips } }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=4,
        right_padding=0,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'indianred)"],
    ),
    voice=score["bassflute voice"],
)

# violin music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 11)),
    evans.RhythmHandler(
        evans.talea(
            [
                5,
                2,
                4,
                4,
                6,
            ],
            32,
        ),
    ),
    evans.PitchHandler(pitch.violin_gamma_pitches),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True)
    ),
    library.duration_line(selector=trinton.logical_ties(exclude=[2, 4, 6])),
    trinton.linear_attachment_command(
        attachments=[abjad.BendAfter(2), abjad.BendAfter(-2), abjad.BendAfter(2)],
        selector=trinton.select_logical_ties_by_index(
            [2, 4, 6], first=True, grace=False
        ),
    ),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.linear_attachment_command(
        attachments=[
            evans.make_fancy_gliss(
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0.1,
                0.2,
                0.3,
                0.4,
                0.5,
                0.6,
                0.7,
                0.8,
                0.9,
                1,
                1.2,
                1.4,
                1.6,
                1.8,
                2,
                2.3,
                2.6,
                2.9,
                3,
                3.3,
                3.7,
                4,
                4.5,
                5,
                5,
                right_padding=-6,
            ),
            evans.make_fancy_gliss(
                5,
                2,
                3,
                2,
                5,
                3,
                5,
                1,
                2,
                5,
                2,
                3,
                1,
                3,
                5,
                right_padding=-6,
            ),
            evans.make_fancy_gliss(
                5,
                4,
                3.5,
                3,
                2.7,
                2.5,
                2.2,
                2,
                1.8,
                1.6,
                1.4,
                1.2,
                1,
                0.9,
                0.7,
                0.6,
                0.5,
                0.4,
                0.3,
                0.2,
                0.1,
                0.1,
                0.1,
                0.1,
                0.1,
                0.1,
                0.1,
                0.1,
                5,
                0.1,
                0.1,
                0.1,
                0.1,
                0.1,
                0.1,
                0.1,
                0.1,
                3,
                0.1,
                0.1,
                0.1,
                right_padding=-6,
            ),
            evans.make_fancy_gliss(
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                1,
                3,
                5,
                5,
                2,
                3,
                2,
                5,
                3,
                5,
                1,
                2,
                5,
                2,
                3,
                1,
                3,
                5,
                right_padding=-6,
            ),
            evans.make_fancy_gliss(
                5,
                2,
                3,
                2,
                5,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                right_padding=-6,
            ),
            evans.make_fancy_gliss(
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                5,
                5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                5,
                0.5,
                0.5,
                0.5,
                0.5,
                5.5,
                right_padding=-6,
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
                3,
                5,
                7,
                8,
            ],
            first=True,
            grace=False,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">o"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">o"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
                1,
                2,
                2,
                3,
                4,
                4,
                5,
                6,
                7,
                8,
            ],
            first=True,
            grace=False,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin()], selector=trinton.select_leaves_by_index([-1])
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(exclude=[4, 6], first=True, grace=False),
    ),
    trinton.spanner_command(
        strings=[
            library.return_fractional_scratch_markup("1 6"),
            r"""\markup \with-color "darkred" { scratch }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 2, 2, 5],
            first=True,
        ),
        style="solid-line-with-arrow",
        padding=9.5,
        full_string=True,
        command="One",
        right_padding=-1,
        tweaks=[r"""- \tweak color #darkred"""],
        end_hook=True,
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup { }""",
            library.return_fractional_scratch_markup("1 7"),
            r"""\markup \with-color "darkred" { scratch }""",
            library.return_fractional_scratch_markup("1 3"),
            r"""\markup \with-color "darkred" { scratch }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                5,
                7,
                7,
                8,
                8,
                10,
                10,
                11,
                11,
                12,
            ],
            first=True,
        ),
        style="solid-line-with-arrow",
        padding=9.5,
        full_string=True,
        command="One",
        right_padding=-1,
        tweaks=[r"""- \tweak color #darkred"""],
        end_hook=True,
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup { }""",
            r"""\markup \with-color "darkred" { norm. }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                -2,
                -1,
            ],
            first=True,
        ),
        style="solid-line-with-arrow",
        padding=9.5,
        full_string=True,
        command="One",
        right_padding=-1,
        tweaks=[r"""- \tweak color #darkred"""],
    ),
    voice=score["violin voice"],
    preprocessor=trinton.fuse_preprocessor((9,)),
)

# bass clarinet music commands

for measure in [1, 12]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(rmakers.note),
        evans.PitchHandler([library._bass_clarinet_multiphonics[3][0]]),
        library.duration_line(),
        trinton.hooked_spanner_command(
            string=library._bass_clarinet_multiphonics[3][1],
            selector=trinton.select_leaves_by_index([0, -1]),
            padding=7,
            right_padding=0,
            full_string=True,
            tweaks=[r"""- \tweak color #(css-color 'seagreen) """],
        ),
        trinton.linear_attachment_command(
            attachments=[
                abjad.Dynamic("fff"),
                abjad.StartHairpin("--"),
                abjad.StopHairpin(),
            ],
            selector=trinton.select_leaves_by_index([0, 0, -1]),
        ),
        voice=score["bassclarinet voice"],
    )

# percussion 1 music commands

for measure in [1, 12]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(rmakers.note),
        library.duration_line(),
        trinton.change_lines(lines=1, clef="percussion", tag=None),
        library.boxed_markup(string="Timpani on Cymbal", site="opening"),
        trinton.linear_attachment_command(
            attachments=[
                evans.make_fancy_gliss(
                    7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, right_padding=-6
                ),
                abjad.Dynamic("fff"),
                abjad.StartHairpin("--"),
                abjad.StopHairpin(),
            ],
            selector=trinton.select_leaves_by_index([0, 0, 0, -1]),
        ),
        trinton.hooked_spanner_command(
            string=r"""\markup \with-color "darkmagenta" { \fontsize #3.5 \override #'(font-name . "ekmelos") \char ##xe222 }""",
            selector=trinton.select_leaves_by_index([0, -1]),
            padding=7,
            direction="down",
            right_padding=1,
            full_string=True,
            style="dashed-line-with-up-hook",
            tweaks=[r"- \tweak color #darkmagenta"],
        ),
        voice=score["percussion 1 voice"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 10)),
    evans.RhythmHandler(
        evans.talea(
            [
                3,
                1,
                1,
                1,
                1,
                2,
                2,
                2,
                11,
                1,
                1,
                2,
                3,
                4,
            ],
            32,
            extra_counts=[1, 0, 0, 0, 0, 0, 2, 3],
        ),
    ),
    evans.PitchHandler(
        [
            -1,
            2,
            2,
            2,
            2,
            2,
            -1,
            2,
            -1,
            -1,
            2,
            2,
            2,
        ]
    ),
    library.duration_line(
        selector=trinton.select_logical_ties_by_index([5, 6, 7, -1]),
    ),
    library.duration_line(
        selector=trinton.select_leaves_by_index([11, 12, 13, 14]), sustained=True
    ),
    library.change_lines(lines=2, clef="percussion"),
    library.boxed_markup(
        string="Anvils with pipe",
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("marcato"),
            abjad.LaissezVibrer(),
        ],
        selector=trinton.select_logical_ties_by_index([0, -3], first=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("staccato"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                1,
                2,
                3,
                4,
                -4,
            ],
            first=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("f"),
            abjad.Dynamic("sp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("f"),
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("f"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
                1,
                4,
                5,
                6,
                7,
                8,
                9,
                10,
                11,
                12,
                12,
                14,
                15,
                16,
                16,
                -1,
            ],
            first=True,
        ),
    ),
    voice=score["percussion 1 voice"],
)

# globals

library.set_all_time_signatures(score=score)

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

library.write_timestamps(
    global_context=score["Global Context"], second_range=(50,), measure_range=(1,)
)

library.forbid_break(score=score, measures=list(range(3, 8)))

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 { "51\" - 58\""  }"""
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

library.write_timestamps(
    global_context=score["Global Context"], second_range=(59, 69), measure_range=(3, 12)
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13,)),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 { "1\'9\" - 1\'16\""  }"""
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
)

# parts

trinton.extract_parts(score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/sections/02",
    build_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/build",
    segment_name="02",
    includes=[
        "/Users/trintonprater/scores/bibliopegy/bibliopegy/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
