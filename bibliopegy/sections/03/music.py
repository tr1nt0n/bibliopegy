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

# dune ii music commands

library.dune_ii(
    voices=[
        score["cello 1 voice"],
        score["flute voice"],
        score["violin voice"],
        score["bassflute voice"],
        score["cello 2 voice"],
    ],
    measures=(10, 15),
    rotation=2,
    dynamics=["p +", "mf", "f"],
)

# flute music commands

for voice_name in ["flute voice", "bassflute voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (11, 12)),
        library.change_lines(
            lines=5,
        ),
        voice=score[voice_name],
    )

# tape music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 19)),
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
    lambda _: trinton.select_target(_, (1, 19)),
    evans.RhythmHandler(
        evans.talea(
            [
                5,
                5,
                5,
                9,
                5,
                10,
                2,
                15,
                6,
                8,
                100,
            ],
            32,
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["eqs"],
        selector=trinton.select_logical_ties_by_index([0, 1, 2, 3, 9, 10]),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["e"],
        selector=trinton.select_logical_ties_by_index(
            [
                7,
                8,
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
        selector=trinton.select_logical_ties_by_index([4, 5, 6], grace=False),
        sustained=True,
    ),
    library.duration_line(
        selector=trinton.select_logical_ties_by_index([7, 8], grace=False),
        sustained=True,
    ),
    library.duration_line(
        selector=trinton.select_logical_ties_by_index([9, 10], grace=False),
        sustained=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("f"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                0,
                1,
                1,
                2,
                2,
                3,
                3,
                4,
                4,
                5,
                5,
                6,
                6,
                7,
                7,
                8,
                9,
                9,
                10,
                10,
            ],
            first=True,
            pitched=True,
            grace=False,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin()], selector=trinton.select_leaves_by_index([-1])
    ),
    voice=score["bassclarinet voice"],
)

# cello 3 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 19)),
    evans.RhythmHandler(
        evans.talea(
            [
                2,
                1,
                3,
                1,
                5,
                4,
                8,
                9,
                10,
                15,
                8,
                4,
                100,
            ],
            32,
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["d,", "cqs,", "dqs,", "dqf,", "d,", "d,"],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
                2,
                3,
                4,
                5,
            ]
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["d,"],
        selector=trinton.logical_ties(
            exclude=[
                0,
                1,
                2,
                3,
                4,
                5,
            ]
        ),
    ),
    library.duration_line(
        selector=trinton.select_logical_ties_by_index(
            [1, 2, 3, 4, 6, 11, 12], grace=False
        )
    ),
    library.duration_line(
        sustained=True,
        selector=trinton.select_logical_ties_by_index(
            [
                7,
                8,
            ],
            grace=False,
        ),
    ),
    library.duration_line(
        sustained=True,
        selector=trinton.select_logical_ties_by_index(
            [
                9,
                10,
            ],
            grace=False,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ],
            pitched=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Glissando(zero_padding=True),
            abjad.BendAfter(
                1.5,
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                5,
            ],
            first=True,
            grace=False,
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation(">"),
            library.downbow,
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                2,
                4,
            ],
            first=True,
            grace=False,
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("marcato"),
            library.downbow,
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                1,
                3,
            ],
            first=True,
            grace=False,
        ),
    ),
    trinton.attachment_command(
        attachments=[library.upbow, abjad.Articulation("tenuto")],
        selector=trinton.select_logical_ties_by_index(
            [
                5,
            ],
            first=True,
            grace=False,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("sffz"),
            abjad.StartHairpin(">"),
            trinton.make_custom_dynamic("sf"),
            trinton.make_custom_dynamic("sff"),
            abjad.StartHairpin(">"),
            trinton.make_custom_dynamic("sf"),
            trinton.make_custom_dynamic("sff"),
            abjad.StartHairpin(">o"),
            abjad.StartHairpin("o<"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                0,
                1,
                2,
                2,
                3,
                4,
                4,
                5,
            ],
            first=True,
            grace=False,
        ),
    ),
    trinton.attachment_command(
        attachments=[
            evans.make_fancy_gliss(
                5,
                4,
                3,
                2.5,
                2,
                1.9,
                1.7,
                1.5,
                1.3,
                1,
                0.9,
                0.7,
                0.5,
                0.3,
                0.3,
                0.3,
                0.3,
                0.3,
                0.3,
                0.3,
                0.3,
                0.3,
                0.3,
                0.3,
                0.3,
                right_padding=-6,
            ),
        ],
        selector=trinton.select_logical_ties_by_index([2, 4], first=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                6,
                6,
                7,
                7,
                8,
                8,
                9,
                9,
                10,
                10,
                11,
                11,
                12,
                12,
            ],
            first=True,
            grace=False,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            evans.make_fancy_gliss(
                6,
                7,
                6,
                6,
                7,
                6,
                7,
                6,
                6,
                7,
                6,
                7,
                6,
                6,
                7,
                6,
                7,
                6,
                6,
                7,
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
                1,
                1,
                1,
                1,
                1,
                1,
                1,
                1,
                2,
                2,
                2,
                2,
                2,
                3,
                3,
                3,
                3,
                3,
                3,
                3,
                2,
                2,
                2,
                2,
                1,
                1,
                1,
                1,
                1,
                1,
                1,
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
                right_padding=-6,
            ),
            evans.make_fancy_gliss(
                7,
                7,
                7,
                3,
                3,
                3,
                3,
                2,
                2,
                2,
                1,
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
                1,
                2,
                3,
                3,
                right_padding=-6,
            ),
            evans.make_fancy_gliss(
                0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 1, 2, 3, 4, 5, right_padding=-6
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                6,
                7,
                9,
                11,
            ],
            first=True,
            grace=False,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin()], selector=trinton.select_leaves_by_index([-1])
    ),
    trinton.spanner_command(
        strings=[
            "\skin-default-notehead-markup",
            "\skin-diamond-notehead-markup",
            "\skin-default-notehead-markup",
        ],
        selector=trinton.select_logical_ties_by_index([0, 1, 1, 2], first=True),
        style="solid-line-with-arrow",
        padding=8,
        full_string=True,
        command="One",
        right_padding=0,
        tweaks=[r"""- \tweak color #(css-color 'darksalmon)"""],
    ),
    trinton.hooked_spanner_command(
        string="\skin-half-diamond-notehead-markup",
        selector=trinton.select_logical_ties_by_index([3, 4, 7, 8], first=True),
        padding=8,
        right_padding=0,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'darksalmon)"],
    ),
    trinton.spanner_command(
        strings=[
            "\skin-default-notehead-markup",
            "\skin-diamond-notehead-markup",
        ],
        selector=trinton.select_logical_ties_by_index([5, 6], first=True),
        style="solid-line-with-arrow",
        padding=8,
        full_string=True,
        command="One",
        right_padding=0,
        tweaks=[r"""- \tweak color #(css-color 'darksalmon)"""],
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "indianred" { norm. }""",
            r"""\markup \with-color "indianred" { "molto pont." }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                3,
                3,
                6,
            ],
            first=True,
        ),
        style="solid-line-with-arrow",
        padding=6,
        full_string=True,
        command="Two",
        right_padding=-1,
        end_hook=True,
        tweaks=[r"""- \tweak color #(css-color 'indianred)"""],
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup {  }""",
            r"""\markup \with-color "indianred" { "norm." }""",
        ],
        selector=trinton.select_logical_ties_by_index([7, 9], first=True),
        style="solid-line-with-arrow",
        padding=6,
        full_string=True,
        command="Two",
        right_padding=-1,
        tweaks=[r"""- \tweak color #(css-color 'indianred)"""],
    ),
    trinton.hooked_spanner_command(
        string=r"\skin-half-diamond-notehead-markup",
        selector=trinton.select_logical_ties_by_index([-4, -3], first=True),
        padding=8,
        right_padding=0,
        full_string=True,
        command="One",
        tweaks=[r"""- \tweak color #(css-color 'darksalmon)"""],
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "indianred" { "molto tast." }""",
        selector=trinton.select_logical_ties_by_index([-4, -1], first=True),
        padding=6,
        right_padding=0,
        full_string=True,
        command="Two",
        tweaks=[r"""- \tweak color #(css-color 'indianred)"""],
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color #(css-color 'goldenrod) { "( senza vib. )" }""",
        selector=trinton.select_logical_ties_by_index([-2, -1], first=True),
        padding=4,
        right_padding=0,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'goldenrod)"],
    ),
    voice=score["cello 3 voice"],
)

# trombone music commands

library.trombone_alpha(
    voices=[score["tenortrombone voice"], score["basstrombone voice"]],
    measures=(11, 15),
    rotation=2,
    dynamics=["p +"],
)

abjad.attach(abjad.Clef("bass"), abjad.select.leaf(score["basstrombone voice"], 0))

# percussion 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 19)),
    evans.RhythmHandler(
        evans.talea([10, 6, 6, 26, 7, 3, 5, 4, 3, 100], 32),
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
            abjad.Dynamic("mf"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                0,
                1,
                1,
                2,
                2,
                3,
                3,
                4,
                4,
                5,
                5,
                6,
                6,
                7,
                7,
                8,
                8,
                9,
                9,
            ],
            first=True,
            grace=False,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin()], selector=trinton.select_leaves_by_index([-1])
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
    global_context=score["Global Context"], second_range=(77, 95), measure_range=(1, 19)
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
    segment_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/sections/03",
    build_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/build",
    segment_name="03",
    includes=[
        "/Users/trintonprater/scores/bibliopegy/bibliopegy/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
