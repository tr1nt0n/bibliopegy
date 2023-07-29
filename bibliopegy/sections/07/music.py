import abjad
import baca
import evans
import itertools
import trinton
from abjadext import rmakers
from abjadext import microtones
from bibliopegy import library
from bibliopegy import ts

# score

score = library.bibliopegy_score([(1, 8) for _ in range(1, 37)])

# music commands

# tape music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 31)),
    evans.RhythmHandler(rmakers.note),
    evans.PitchHandler([-1]),
    library.change_lines(lines=2, clef="percussion"),
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
    library.duration_line(color="darkred"),
    voice=score["piano voice"],
    preprocessor=trinton.fuse_preprocessor((32,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (32, 35)),
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
                    100,
                ],
                32,
            ),
        ),
        direction=abjad.UP,
        voice_name="beta voice",
    ),
    voice=score["piano voice"],
    preprocessor=trinton.fuse_preprocessor((4,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (32, 35)),
    library.duration_line(color="darkred"),
    voice=score["piano voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (32, 35)),
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

# bass clarinet music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 35)),
    evans.RhythmHandler(
        evans.talea(
            [13, 4, 4, 4, 8, 6, 5, 1000],
            32,
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["eqs"],
        selector=trinton.select_logical_ties_by_index(
            [
                1,
                2,
                3,
                -1,
            ]
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["f"],
        selector=trinton.select_logical_ties_by_index(
            [
                4,
                5,
                6,
            ]
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["e"],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
            ]
        ),
    ),
    library.duration_line(
        selector=trinton.select_logical_ties_by_index([0, 1, 2, 3, -1], grace=False)
    ),
    library.duration_line(
        sustained=True,
        selector=trinton.select_logical_ties_by_index(
            [
                4,
                5,
                6,
            ],
            grace=False,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("espressivo")],
        selector=trinton.select_logical_ties_by_index(
            [
                1,
                2,
                3,
            ],
            first=True,
            grace=False,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("spp"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<|"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
                4,
                5,
                5,
                6,
                6,
                7,
            ],
            first=True,
            grace=False,
        ),
    ),
    voice=score["bassclarinet voice"],
)

# cello 3 music commands

abjad.attach(abjad.Clef("bass"), abjad.select.leaf(score["cello 3 voice"], 0))

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 35)),
    evans.RhythmHandler(
        evans.talea(
            [12, 6, 9, 15, 1000],
            32,
        ),
    ),
    evans.PitchHandler(["d,"]),
    library.duration_line(
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                3,
                4,
            ],
            first=True,
            grace=False,
        ),
    ),
    library.duration_line(
        sustained=True,
        selector=trinton.select_logical_ties_by_index(
            [
                1,
                2,
            ],
            first=True,
            grace=False,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("spp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
                2,
                2,
                3,
                3,
                4,
            ],
            first=True,
            grace=False,
        ),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color #(css-color 'goldenrod) { "( senza vib. )" }""",
        selector=trinton.select_logical_ties_by_index([0, 1], first=True),
        padding=4,
        right_padding=0,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'goldenrod)"],
    ),
    trinton.linear_attachment_command(
        attachments=[
            evans.make_fancy_gliss(
                5,
                4.5,
                4,
                3.5,
                3,
                2.5,
                2,
                1.5,
                1,
                0.7,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                1,
                1,
                1,
                1,
                2,
                2,
                2,
                3,
                3,
                3,
                4,
                4,
                4,
                5,
                5,
                right_padding=-6,
            ),
            evans.make_fancy_gliss(
                0.1,
                0.1,
                0.1,
                0.1,
                0.1,
                0.1,
                0.1,
                0.1,
                0.1,
                0.1,
                0.1,
                0.1,
                0.1,
                0.1,
                0.1,
                0.1,
                0.1,
                0.1,
                0.1,
                0.1,
                0.1,
                0.3,
                0.3,
                0.3,
                0.3,
                0.3,
                0.3,
                0.3,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                1,
                1.5,
                2,
                2.5,
                3,
                3.2,
                3.5,
                3.7,
                4,
                4.5,
                5,
                6,
                7,
                right_padding=-6,
            ),
            evans.make_fancy_gliss(
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                right_padding=-6,
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                1,
                3,
                4,
            ],
            first=True,
            grace=False,
        ),
    ),
    voice=score["cello 3 voice"],
)

# percussion 2 music commands

abjad.attach(abjad.Clef("bass"), abjad.select.leaf(score["percussion 2 voice"], 0))

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 35)),
    evans.RhythmHandler(
        evans.talea([11, 3, 4, 5, 6, 1000], 32),
    ),
    evans.PitchHandler(["d,"]),
    library.duration_line(sustained=True),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("spp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("mf"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
                2,
                2,
                3,
                3,
                4,
                4,
                5,
            ],
            first=True,
        ),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "darkmagenta" { \fontsize #3.5 \override #'(font-name . "ekmelos") \char ##xe222 }""",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=8.5,
        direction="down",
        right_padding=1,
        full_string=True,
        style="dashed-line-with-up-hook",
        tweaks=[r"- \tweak color #darkmagenta"],
    ),
    voice=score["percussion 2 voice"],
)

# globals

library.set_all_time_signatures(score=score)

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

library.write_timestamps(
    global_context=score["Global Context"],
    second_range=(122, 157),
    measure_range=(1, 36),
)

# cutaway

trinton.whiteout_empty_staves(
    score=score,
    cutaway="blank",
    # voice_names=[_ for _ in library.all_voice_names if _ != "viola voice"],
)

# library.blank_measure_by_hand(
#     score=score,
#     voice_names=["viola voice"],
#     measures=[1, 2, 3, 8, 9, 10, 11, 12],
# )

# parts

trinton.extract_parts(score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/sections/07",
    build_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/build",
    segment_name="07",
    includes=[
        "/Users/trintonprater/scores/bibliopegy/bibliopegy/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
