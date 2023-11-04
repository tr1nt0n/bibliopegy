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

score = library.bibliopegy_score([(1, 8) for _ in range(1, 26)])

# music commands

# tape music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 12)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    evans.PitchHandler([-1]),
    library.change_lines(lines=2, clef="percussion"),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\override NoteHead.stencil = #ly:text-interface::print",
                    r"""\override NoteHead.text = \markup \with-color "darkmagenta" { θ }""",
                ],
                site="before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    library.duration_line(color="darkmagenta"),
    voice=score["piano voice"],
    preprocessor=trinton.fuse_preprocessor((9,)),
)

# cello 1 music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    evans.PitchHandler(["ef,"]),
    evans.PitchHandler(
        [
            "13/1",
        ],
        as_ratios=True,
    ),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True)
    ),
    library.duration_line(),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "darkred" { "flaut. moltissimo" }""",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=10.5,
        right_padding=0,
        full_string=True,
        tweaks=[r"""- \tweak color #"darkred" """],
    ),
    library.cello_trills(
        initial_width=7,
        y_scale=0.6,
        speed_factor=0.7,
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin(">o"), abjad.StopHairpin()],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["cello 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 9)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    evans.PitchHandler([5]),
    library.change_lines(lines=4, clef="varpercussion"),
    library.duration_line(),
    library.cello_trills(
        initial_width=0.7,
        y_scale=0.6,
        speed_factor=0,
        selector=trinton.select_leaves_by_index([0, -1]),
        head=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
        ],
        selector=trinton.select_leaves_by_index([0, 2, 2, -1]),
    ),
    voice=score["cello 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 15)),
    evans.RhythmHandler(evans.talea([1], 32, extra_counts=[2, 3, 0, 0, -1, -2])),
    evans.PitchHandler([5]),
    trinton.change_notehead_command(
        notehead="highest",
        selector=trinton.patterned_tie_index_selector(
            [0], 2, first=True, pitched=True, grace=False
        ),
    ),
    library.duration_line(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\slurDashed", site="before"),
            abjad.StartSlur(),
            abjad.LilyPondLiteral(r"\slurSolid", site="after"),
            abjad.StopSlur(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                -1,
                -1,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True, grace=False),
    ),
    voice=score["cello 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (16, 25)),
    evans.RhythmHandler(
        evans.talea(
            [1, 31, 1, 23, 1, 7, 1, 7, 1, 7],
            64,
        )
    ),
    evans.PitchHandler([5]),
    trinton.change_notehead_command(
        notehead="highest",
        selector=trinton.patterned_tie_index_selector(
            [1], 2, first=True, pitched=True, grace=False
        ),
    ),
    library.duration_line(),
    trinton.attachment_command(
        attachments=[
            abjad.StartSlur(),
        ],
        selector=trinton.patterned_tie_index_selector(
            [0], 2, first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.StopSlur(),
        ],
        selector=trinton.patterned_tie_index_selector(
            [1], 2, first=True, pitched=True, grace=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.select_logical_ties_by_index(
            [4, 6, 8], first=True, pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("sffz p"),
            trinton.make_custom_dynamic("sffz p"),
            trinton.make_custom_dynamic("sffz p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 4, 8, 8, 16, 16, -1], first=True, pitched=True
        ),
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "darkred" { "norm." }""",
            r"""\markup \with-color "darkred" { "scratch" }""",
        ],
        selector=trinton.select_leaves_by_index([7, -1], pitched=True, grace=False),
        style="solid-line-with-arrow",
        padding=5,
        full_string=True,
        tweaks=[r"- \tweak color #darkred"],
    ),
    voice=score["cello 1 voice"],
)

# cello 2 music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    evans.PitchHandler(["ef,"]),
    evans.PitchHandler(
        [
            "11/1",
        ],
        as_ratios=True,
    ),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True)
    ),
    library.duration_line(),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "darkred" { "flaut. moltissimo" }""",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=9.5,
        right_padding=0,
        full_string=True,
        tweaks=[r"""- \tweak color #"darkred" """],
    ),
    library.cello_trills(
        initial_width=14,
        y_scale=0.6,
        speed_factor=0.7,
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin(">o"), abjad.StopHairpin()],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 12)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    evans.PitchHandler([5]),
    library.change_lines(lines=4, clef="varpercussion"),
    library.duration_line(),
    library.cello_trills(
        initial_width=0.7,
        y_scale=0.6,
        speed_factor=0,
        selector=trinton.select_leaves_by_index([0, -1]),
        head=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_leaves_by_index([0, 2, 2, -1]),
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 15)),
    evans.RhythmHandler(evans.talea([1], 32, extra_counts=[3, 0, -1])),
    evans.PitchHandler([5]),
    trinton.change_notehead_command(
        notehead="highest",
        selector=trinton.patterned_tie_index_selector(
            [0], 2, first=True, pitched=True, grace=False
        ),
    ),
    library.duration_line(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\slurDashed", site="before"),
            abjad.StartSlur(),
            abjad.LilyPondLiteral(r"\slurSolid", site="after"),
            abjad.StopSlur(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                -1,
                -1,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True, grace=False),
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (16, 25)),
    evans.RhythmHandler(
        evans.talea(
            [-1, 1, 31, 1, 22, 1, 7, 1, 7, 1, 7],
            64,
        )
    ),
    evans.PitchHandler([5]),
    trinton.change_notehead_command(
        notehead="highest",
        selector=trinton.patterned_tie_index_selector(
            [1], 2, first=True, pitched=True, grace=False
        ),
    ),
    library.duration_line(),
    trinton.attachment_command(
        attachments=[
            abjad.StartSlur(),
        ],
        selector=trinton.patterned_tie_index_selector(
            [0], 2, first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.StopSlur(),
        ],
        selector=trinton.patterned_tie_index_selector(
            [1], 2, first=True, pitched=True, grace=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.select_logical_ties_by_index(
            [4, 6, 8], first=True, pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("sffz p"),
            trinton.make_custom_dynamic("sffz p"),
            trinton.make_custom_dynamic("sffz p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 4, 8, 8, 16, 16, -1], first=True, pitched=True
        ),
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "darkred" { "norm." }""",
            r"""\markup \with-color "darkred" { "scratch" }""",
        ],
        selector=trinton.select_leaves_by_index([8, -1], pitched=True, grace=False),
        style="solid-line-with-arrow",
        padding=5,
        full_string=True,
        tweaks=[r"- \tweak color #darkred"],
    ),
    voice=score["cello 2 voice"],
)

# cello 3 music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    evans.PitchHandler(["ef,"]),
    evans.PitchHandler(
        [
            "9/1",
        ],
        as_ratios=True,
    ),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True)
    ),
    library.duration_line(),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "darkred" { "flaut. moltissimo" }""",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=8.5,
        right_padding=0,
        full_string=True,
        tweaks=[r"""- \tweak color #"darkred" """],
    ),
    library.cello_trills(
        initial_width=4,
        y_scale=0.6,
        speed_factor=0.7,
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin(">o"), abjad.StopHairpin()],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["cello 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 8)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    evans.PitchHandler([5]),
    library.change_lines(lines=4, clef="varpercussion"),
    library.duration_line(),
    library.cello_trills(
        initial_width=0.7,
        y_scale=0.6,
        speed_factor=0,
        selector=trinton.select_leaves_by_index([0, -1]),
        head=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
        ],
        selector=trinton.select_leaves_by_index([0, 3, 3, -1]),
    ),
    voice=score["cello 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 15)),
    evans.RhythmHandler(evans.talea([1], 32, extra_counts=[3, 3, 2, 1, 0, -1, -2])),
    evans.PitchHandler([5]),
    trinton.change_notehead_command(
        notehead="highest",
        selector=trinton.patterned_tie_index_selector(
            [0], 2, first=True, pitched=True, grace=False
        ),
    ),
    library.duration_line(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\slurDashed", site="before"),
            abjad.StartSlur(),
            abjad.LilyPondLiteral(r"\slurSolid", site="after"),
            abjad.StopSlur(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                -1,
                -1,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True, grace=False),
    ),
    voice=score["cello 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (16, 25)),
    evans.RhythmHandler(
        evans.talea(
            [-2, 1, 31, 1, 10, 1000],
            64,
        )
    ),
    evans.PitchHandler([5, 5, 5, 5, ["ef,", "c"]]),
    library.change_lines(
        lines=5,
        clef="bass",
        selector=trinton.select_logical_ties_by_index(
            [-1], first=True, pitched=True, grace=False
        ),
    ),
    trinton.change_notehead_command(
        notehead="highest",
        selector=trinton.select_logical_ties_by_index(
            [1, 3], first=True, pitched=True, grace=False
        ),
    ),
    trinton.artificial_harmonics(
        selector=trinton.select_logical_ties_by_index(
            [-1], first=True, pitched=True, grace=False
        )
    ),
    library.duration_line(),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_logical_ties_by_index(
            [0, 3, 4, 7],
            first=True,
            pitched=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("sffz p"),
            trinton.make_custom_dynamic("sffz p"),
            trinton.make_custom_dynamic("sffz p"),
            abjad.StartHairpin("<"),
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
                1,
                1,
                1,
                1,
                1,
                1,
                1,
                1.5,
                2,
                2.5,
                3,
                3,
                3,
                3,
                3,
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 2, 4, 4, 4], first=True, pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([-3, -3, -1], pitched=True),
    ),
    voice=score["cello 3 voice"],
)

# percussion 2 music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 9)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    evans.PitchHandler(["ef,"]),
    library.duration_line(),
    trinton.linear_attachment_command(
        attachments=[abjad.Clef("bass"), abjad.StartHairpin(">o"), abjad.StopHairpin()],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
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

trinton.make_music(
    lambda _: trinton.select_target(_, (23, 25)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    evans.PitchHandler(["ef,"]),
    library.duration_line(),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("o<"), abjad.Dynamic("ff")],
        selector=trinton.select_leaves_by_index([0, -1]),
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

library.set_all_time_signatures(score=score, exclude_viola=False)

# library.remove_redundant_time_signatures(score=score)

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

library.write_timestamps(
    global_context=score["Global Context"],
    second_range=(354, 1000),
    measure_range=(1, 25),
)

# library.forbid_break(score=score, measures=[9, 10, 11])

# cutaway

trinton.whiteout_empty_staves(
    score=score,
    cutaway="blank",
    # voice_names=[
    #     _
    #     for _ in library.all_voice_names
    #     if _ != "viola voice"
    #     and _ != "viola voice time signatures"
    #     and _ != "bassclarinet voice"
    # ],
    last_segment=True,
)

# library.blank_measure_by_hand(
#     score=score,
#     voice_names=["viola voice"],
#     measures=[1, 2, 3],
# )
#
# library.blank_measure_by_hand(
#     score=score,
#     voice_names=["bassclarinet voice"],
#     measures=[
#         16,
#         17,
#     ],
# )

# parts

trinton.extract_parts(score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/sections/18",
    build_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/build",
    segment_name="18",
    includes=[
        "/Users/trintonprater/scores/bibliopegy/bibliopegy/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
