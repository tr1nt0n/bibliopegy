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

# viola music

library.write_simultaneous_time_signatures(
    score=score,
    voice_name="viola voice",
    signature_pairs=[
        (12, 8),
        (1, 8),
        (1, 8),
        (1, 8),
        (1, 8),
        (1, 8),
        (1, 8),
        (1, 8),
        (1, 8),
        (1, 8),
        (1, 8),
        (7, 32),
        (5, 32),
    ],
    measure_range=(1, 25),
    reset=False,
)

library.make_metric_music(
    evans.RhythmHandler(library.viola_ii_rhythm(index=6)),
    library.pitch_viola_ii(strings="III + IV", index=0),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("altovarC"),
            abjad.LilyPondLiteral(
                r"\once \override Dots.staff-position = #2", "before"
            ),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [abjad.StartSlur(), abjad.StopSlur()],
        ),
        selector=trinton.select_leaves_by_index([0, 1, 2, 4, 5, -1]),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            library.downbow,
        ],
        selector=trinton.select_leaves_by_index([0, 2]),
        direction=abjad.UP,
    ),
    trinton.beam_groups(
        selector=trinton.ranged_selector(ranges=[range(2, 5), range(5, 8)], nested=True)
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
            library._viola_processing_markups["2 on"],
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                1,
                2,
                2,
                4,
                5,
                5,
                5,
                7,
                7,
                -1,
            ],
            pitched=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\textSpannerDown"),
            abjad.LilyPondLiteral(r"\textSpannerUp"),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    trinton.spanner_command(
        strings=library.return_fraction_string_list([(0, 1), (1, 1)]),
        selector=trinton.select_leaves_by_index(
            [0, 1],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=9.5,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
    ),
    trinton.spanner_command(
        strings=library.return_fraction_string_list([(0, 5), (2, 5), (3, 5)]),
        selector=trinton.select_leaves_by_index(
            [
                2,
                3,
                3,
                4,
            ],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=12,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "darkred" { "flaut. moltissimo" }""",
        selector=trinton.select_leaves_by_index([-4, -1]),
        style="dashed-line-with-up-hook",
        padding=12,
        right_padding=7,
        full_string=True,
        tweaks=[r"""- \tweak color #"darkred" """],
    ),
    trinton.tremolo_command(selector=trinton.select_leaves_by_index([-4, -3, -2, -1])),
    trinton.notehead_bracket_command(),
    score=score,
    voice_name="viola voice",
    second_range=(1, 12),
    measure_number_range=(1,),
)

library.make_metric_music(
    trinton.attachment_command(
        attachments=[
            library._viola_processing_markups["2 off"],
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    score=score,
    voice_name="viola voice",
    second_range=(1, 25),
    measure_number_range=(2,),
)

library.make_metric_music(
    evans.RhythmHandler(evans.talea([6, 1, 4, 1], 32)),
    evans.PitchHandler([-5, [-5, -1], 2, [2, 5]]),
    library.change_lines(lines=4, clef="varpercussion"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("f"),
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.pleaves(),
    ),
    trinton.linear_attachment_command(
        attachments=[
            library._viola_processing_markups["4 on"],
            library._viola_processing_markups["4 off"],
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "indianred" { "dietro pont." }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=14,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'indianred)"],
        command="One",
    ),
    trinton.spanner_command(
        strings=[
            library.return_fractional_scratch_markup("1 6", abbreviated=True),
            r"""\markup \with-color "darkred" { scr. }""",
        ],
        selector=trinton.select_logical_ties_by_index([0, 1], first=True, pitched=True),
        style="solid-line-with-arrow",
        padding=11,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
        command="Two",
    ),
    trinton.spanner_command(
        strings=[
            library.return_fractional_scratch_markup("1 3", abbreviated=True),
            r"""\markup \with-color "darkred" { scr. }""",
        ],
        selector=trinton.select_logical_ties_by_index([2, 3], first=True, pitched=True),
        style="solid-line-with-arrow",
        padding=11,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
        command="Two",
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "mediumblue" { +45° }""",
            r"""\markup \with-color "mediumblue" { 0° }""",
        ],
        selector=trinton.select_logical_ties_by_index([0, 1], first=True, pitched=True),
        style="solid-line-with-arrow",
        padding=8,
        full_string=True,
        tweaks=[r"""- \tweak color #(css-color 'mediumblue)"""],
        command="Three",
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "mediumblue" { -45° }""",
            r"""\markup \with-color "mediumblue" { 0° }""",
        ],
        selector=trinton.select_logical_ties_by_index([2, 3], first=True, pitched=True),
        style="solid-line-with-arrow",
        padding=8,
        full_string=True,
        tweaks=[r"""- \tweak color #(css-color 'mediumblue)"""],
        command="Three",
    ),
    abjad.beam,
    score=score,
    voice_name="viola voice",
    second_range=(23, 25),
    measure_number_range=(1, 2),
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

library.set_all_time_signatures(score=score, exclude_viola=True)

# library.remove_redundant_time_signatures(score=score)

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

library.write_timestamps(
    global_context=score["Global Context"],
    second_range=(354, 1000),
    measure_range=(1, 25),
)

library.forbid_break(score=score, measures=[21, 22, 23, 24])

# cutaway

trinton.whiteout_empty_staves(
    score=score,
    cutaway="blank",
    voice_names=[_ for _ in library.all_voice_names if _ != "viola voice"],
    last_segment=True,
)

library.blank_measure_by_hand(
    score=score,
    voice_names=["viola voice time signatures"],
    measures=[
        13,
        14,
        15,
        16,
        17,
        18,
        19,
        20,
        21,
        22,
    ],
)

library.blank_measure_by_hand(
    score=score,
    voice_names=["viola voice temp"],
    measures=[
        13,
        14,
        15,
        16,
        17,
        18,
        19,
        20,
        21,
        22,
    ],
)


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
