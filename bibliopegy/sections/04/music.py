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

score = library.bibliopegy_score([(1, 8) for _ in range(1, 22)])

# music commands

# tape music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 20)),
    evans.RhythmHandler(rmakers.note),
    evans.PitchHandler([-1]),
    library.duration_line(color="darkred"),
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
    voice=score["piano voice"],
    preprocessor=trinton.fuse_preprocessor((19,)),
)

# bass clarinet music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 20)),
    evans.RhythmHandler(
        evans.talea(
            [7, 5, 6, 6, 13, 9, 13, 9, 100],
            32,
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["eqs"],
        selector=trinton.select_logical_ties_by_index(
            [
                2,
                3,
                4,
                5,
                6,
                7,
            ]
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["e"],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
            ]
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["f"],
        selector=trinton.select_logical_ties_by_index([8]),
    ),
    library.duration_line(
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
                2,
                3,
            ],
            grace=False,
        ),
        sustained=True,
    ),
    library.duration_line(
        selector=trinton.select_logical_ties_by_index([0, 1], grace=False),
        sustained=True,
    ),
    library.duration_line(
        selector=trinton.select_logical_ties_by_index([2, 3, 8], grace=False),
    ),
    library.duration_line(
        selector=trinton.select_logical_ties_by_index([4, 5, 6, 7], grace=False),
        sustained=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pppp"),
            trinton.make_custom_dynamic("ffp"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                0,
                1,
                2,
                3,
                3,
                4,
                5,
                6,
                6,
                7,
                7,
                8,
                8,
            ],
            first=True,
            pitched=True,
            grace=False,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("mf")], selector=trinton.select_leaves_by_index([-1])
    ),
    voice=score["bassclarinet voice"],
)

# cello 3 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 21)),
    evans.RhythmHandler(
        evans.talea(
            [
                7,
                5,
                6,
                6,
                13,
                20,
                18,
                100,
            ],
            32,
        ),
    ),
    evans.PitchHandler(["d,"]),
    library.duration_line(
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
                2,
            ],
            grace=False,
        ),
        sustained=True,
    ),
    library.duration_line(
        selector=trinton.select_logical_ties_by_index(
            [
                3,
                4,
            ],
            grace=False,
        ),
        sustained=True,
    ),
    library.duration_line(
        selector=trinton.select_logical_ties_by_index(
            [
                5,
                6,
                7,
            ],
            grace=False,
        ),
        sustained=True,
    ),
    trinton.change_lines(lines=5, clef="bass"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
            trinton.make_custom_dynamic("ffp"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                0,
                1,
                2,
                3,
                3,
                4,
                5,
                6,
                6,
                7,
            ],
            first=True,
            grace=False,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            evans.make_fancy_gliss(
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                2,
                0.5,
                0.5,
                0.5,
                0.5,
                2,
                0.5,
                0.5,
                2,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                2,
                0.5,
                0.5,
                right_padding=-6,
            ),
            evans.make_fancy_gliss(
                5,
                4,
                3,
                2,
                1,
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
                0.5,
                0.5,
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
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                1,
                1.3,
                1.5,
                2,
                2.3,
                2.5,
                3,
                3.3,
                3.5,
                4,
                4.3,
                4.5,
                5,
                6,
                6,
                6,
                6,
                6,
                6,
                5,
                4.5,
                4.3,
                4,
                3.5,
                3.3,
                3,
                2.5,
                2.3,
                2,
                1.5,
                1.3,
                1,
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
                0,
                3,
                5,
            ],
            first=True,
            grace=False,
        ),
    ),
    voice=score["cello 3 voice"],
)

# cello flash music commands

for voice_name, extra_count in zip(
    ["cello 1 voice", "cello 2 voice", "cello 3 voice"],
    [1, 0, -1],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        evans.RhythmHandler(
            evans.talea(
                [
                    1,
                ],
                32,
                extra_counts=[extra_count],
            )
        ),
        evans.PitchHandler([5]),
        library.duration_line(),
        library.change_lines(lines=4, clef="varpercussion"),
        trinton.change_notehead_command(
            notehead="highest",
            selector=trinton.patterned_tie_index_selector([0], 2, grace=False),
        ),
        trinton.attachment_command(
            attachments=[abjad.Dynamic("p"), abjad.StartHairpin("--")],
            selector=trinton.patterned_tie_index_selector(
                [
                    2,
                ],
                4,
                first=True,
            ),
        ),
        trinton.attachment_command(
            attachments=[abjad.Dynamic("ff"), abjad.StartHairpin("--")],
            selector=trinton.patterned_tie_index_selector([0], 4, first=True),
        ),
        trinton.attachment_command(
            attachments=[abjad.StopHairpin()],
            selector=trinton.select_leaves_by_index([-1]),
        ),
        trinton.linear_attachment_command(
            attachments=[abjad.StartSlur(), abjad.StopSlur()],
            selector=trinton.select_leaves_by_index([0, -1]),
        ),
        trinton.hooked_spanner_command(
            string=r"""\markup \with-color "indianred" { pont. }""",
            selector=trinton.select_leaves_by_index([0, -1], pitched=True),
            padding=7.5,
            right_padding=0,
            full_string=True,
            tweaks=[r"- \tweak color #(css-color 'indianred)"],
            command="One",
        ),
        trinton.hooked_spanner_command(
            string=r"""\markup \with-color "darkred" { louré }""",
            selector=trinton.select_leaves_by_index([0, -1], pitched=True),
            padding=5.5,
            right_padding=0,
            full_string=True,
            tweaks=[r"""- \tweak color #darkred"""],
            command="Two",
        ),
        voice=score[voice_name],
    )

# percussion 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 20)),
    evans.RhythmHandler(
        evans.talea(
            [7, 5, 6, 6, 14, 8, 17, 100],
            32,
        ),
    ),
    evans.PitchHandler(["d,"]),
    library.duration_line(sustained=True),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("bass"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            trinton.make_custom_dynamic("ffp"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("<"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                0,
                1,
                2,
                3,
                3,
                4,
                5,
                6,
                6,
                7,
                7,
            ],
            first=True,
            grace=False,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("ff")], selector=trinton.select_leaves_by_index([-1])
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

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

library.write_timestamps(
    global_context=score["Global Context"],
    second_range=(80, 100),
    measure_range=(1, 21),
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
    segment_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/sections/04",
    build_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/build",
    segment_name="04",
    includes=[
        "/Users/trintonprater/scores/bibliopegy/bibliopegy/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
