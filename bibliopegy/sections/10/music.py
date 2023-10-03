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

score = library.bibliopegy_score([(1, 8) for _ in range(1, 18)])

# music commands

# tape music


trinton.make_music(
    lambda _: trinton.select_target(_, (1, 17)),
    evans.RhythmHandler(evans.talea([100], 8)),
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
                [-10, 5, -1, 1],
                8,
            ),
        ),
        direction=abjad.UP,
        voice_name="beta voice",
    ),
    voice=score["piano voice"],
    preprocessor=trinton.fuse_preprocessor((17,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 17)),
    library.duration_line(color="darkred", sustained=True),
    voice=score["piano voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 17)),
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
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["beta voice"],
)

# viola music

library.write_simultaneous_time_signatures(
    score=score,
    voice_name="viola voice",
    signature_pairs=[
        (3, 16),
        (9, 32),
        (7, 32),
        (3, 8),
        (3, 16),
        (15, 32),
        (3, 16),
        (7, 32),
    ],
    measure_range=(1, 17),
    reset=False,
)

for measure in [1, 3]:
    library.make_metric_music(
        evans.RhythmHandler(evans.even_division([16])),
        abjad.beam,
        library.aftergrace(selector=trinton.select_leaves_by_index([-1])),
        evans.PitchHandler([[5, 2], [2, -1]]),
        trinton.noteheads_only(selector=trinton.select_leaves_by_index([-1])),
        trinton.transparent_noteheads(selector=trinton.select_leaves_by_index([-1])),
        library.change_lines(lines=4, clef="varpercussion"),
        trinton.linear_attachment_command(
            attachments=[
                abjad.Dynamic("p"),
                abjad.StartHairpin("--"),
                abjad.StopHairpin(),
            ],
            selector=trinton.select_leaves_by_index([0, 0, -1]),
        ),
        trinton.notehead_bracket_command(),
        score=score,
        voice_name="viola voice",
        second_range=(1, 17),
        measure_number_range=(measure,),
    )

library.make_metric_music(
    trinton.attachment_command(
        attachments=[
            library._viola_processing_markups["3 on"],
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "indianred" \center-column { \line { crine molto pont. } \line { legno dietro pont. } }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=9.5,
        right_padding=0,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'indianred)"],
        command="One",
    ),
    trinton.spanner_command(
        strings=library.return_fraction_string_list([(1, 1), (0, 1), (1, 1), (0, 1)]),
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
                1,
                2,
                2,
                3,
            ],
            first=True,
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=4.5,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
        command="Two",
    ),
    trinton.notehead_bracket_command(),
    score=score,
    voice_name="viola voice",
    second_range=(1, 17),
    measure_number_range=(1,),
)

library.make_metric_music(
    library.boxed_markup(string="Viola", site="opening"),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "indianred" \center-column { \line { crine molto pont. } \line { legno dietro pont. } }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=13.5,
        right_padding=0,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'indianred)"],
        command="One",
    ),
    trinton.spanner_command(
        strings=library.return_fraction_string_list([(1, 1), (0, 1), (1, 1), (0, 1)]),
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
                1,
                2,
                2,
                3,
            ],
            first=True,
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=8.5,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
        command="Two",
    ),
    trinton.notehead_bracket_command(),
    score=score,
    voice_name="viola voice",
    second_range=(1, 17),
    measure_number_range=(3,),
)

for measure, sixty_fourth_amount in zip([2, 4], [9, 12]):
    library.make_metric_music(
        evans.RhythmHandler(evans.talea([sixty_fourth_amount], 64)),
        evans.RewriteMeterCommand(boundary_depth=-2),
        library.change_lines(lines=1, clef="varpercussion"),
        abjad.beam,
        trinton.linear_attachment_command(
            attachments=[
                abjad.Dynamic("ff"),
                abjad.StartHairpin("--"),
                abjad.StopHairpin(),
            ],
            selector=trinton.select_leaves_by_index([0, 0, -1]),
        ),
        trinton.attachment_command(
            attachments=[
                abjad.Articulation(">"),
            ],
            selector=trinton.logical_ties(first=True),
        ),
        library.boxed_markup(string="Styrofoam", site="opening"),
        trinton.notehead_bracket_command(),
        score=score,
        voice_name="viola voice",
        second_range=(1, 17),
        measure_number_range=(measure,),
    )

library.make_metric_music(
    trinton.attachment_command(
        attachments=[
            library._viola_processing_markups["3 off"],
        ],
        selector=trinton.select_leaves_by_index([-1]),
    ),
    score=score,
    voice_name="viola voice",
    second_range=(1, 17),
    measure_number_range=(4,),
)

library.make_metric_music(
    evans.RhythmHandler(evans.talea([1, 3, 1, -1, 5, 5, 5, 1, 3, 1, -100], 32)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.pitch_with_selector_command(
        pitch_list=[[-1, -5]],
        selector=trinton.select_leaves_by_index([0, 1, 2, -3, -2, -1], pitched=True),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[[5, 2]],
        selector=trinton.select_logical_ties_by_index([3, 4, 5], pitched=True),
    ),
    library.change_lines(lines=4, clef="varpercussion"),
    library.duration_line(
        selector=trinton.select_logical_ties_by_index([3, 4, 5], pitched=True),
        sustained=True,
        viola=True,
    ),
    library.duration_line(
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                2,
            ],
            pitched=True,
        ),
        sustained=True,
        viola=True,
    ),
    library.duration_line(
        selector=trinton.select_leaves_by_index([-3, -2, -1], pitched=True),
        sustained=True,
        viola=True,
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "indianred" { "dietro pont." }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=13,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'indianred)"],
        command="One",
    ),
    trinton.spanner_command(
        strings=[
            library.return_fractional_scratch_markup("1 5"),
            r"""\markup \with-color "darkred" { scratch }""",
        ],
        selector=trinton.select_logical_ties_by_index([0, 3], first=True, pitched=True),
        style="solid-line-with-arrow",
        padding=10,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
        command="Two",
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "darkred" { norm. }""",
            r"""\markup \with-color "darkred" { scr. }""",
            r"""\markup \with-color "darkred" { norm. }""",
            library.return_fractional_scratch_markup("3 4", abbreviated=True),
            r"""\markup \with-color "darkred" { norm. }""",
            library.return_fractional_scratch_markup("1 2", abbreviated=True),
            r"""\markup \with-color "darkred" { norm. }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [
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
                10,
            ],
            first=True,
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=10,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
        command="Two",
    ),
    trinton.spanner_command(
        strings=[
            library.return_fractional_scratch_markup("1 5", abbreviated=True),
            r"""\markup \with-color "darkred" { scr. }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [-4, -1], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=10,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
        command="Two",
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "mediumblue" { +45° }""",
            r"""\markup \with-color "mediumblue" { -20° }""",
            r"""\markup \with-color "mediumblue" { +20° }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 1, 2, 2, 3], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=7,
        full_string=True,
        tweaks=[r"""- \tweak color #(css-color 'mediumblue)"""],
        command="Three",
        end_hook=True,
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "mediumblue" { -45° }""",
            r"""\markup \with-color "mediumblue" { -10° }""",
            r"""\markup \with-color "mediumblue" { -25° }""",
            r"""\markup \with-color "mediumblue" { 0° }""",
            r"""\markup \with-color "mediumblue" { -10° }""",
            r"""\markup \with-color "mediumblue" { +25° }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                4,
                5,
                5,
                6,
                6,
                7,
                7,
                8,
                8,
                10,
            ],
            first=True,
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=7,
        full_string=True,
        tweaks=[r"""- \tweak color #(css-color 'mediumblue)"""],
        command="Three",
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "mediumblue" { +45° }""",
            r"""\markup \with-color "mediumblue" { -20° }""",
            r"""\markup \with-color "mediumblue" { +20° }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [-4, -3, -3, -2, -2, -1], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=7,
        full_string=True,
        tweaks=[r"""- \tweak color #(css-color 'mediumblue)"""],
        command="Three",
        end_hook=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            library._viola_processing_markups["4 on"],
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin(">o"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">o"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
            library._viola_processing_markups["4 off"],
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                1,
                1,
                2,
                2,
                3,
                5,
                6,
                6,
                7,
                8,
                8,
                9,
                10,
                10,
                11,
                -5,
                -5,
                -4,
                -4,
                -3,
                -3,
                -2,
                -1,
            ]
        ),
    ),
    score=score,
    voice_name="viola voice",
    second_range=(1, 17),
    measure_number_range=(5, 7),
)

for measure in [5, 7]:
    library.make_metric_music(
        trinton.beam_groups(
            selector=trinton.ranged_selector(ranges=[range(0, 3)], nested=True)
        ),
        score=score,
        voice_name="viola voice",
        second_range=(1, 17),
        measure_number_range=(measure,),
    )

library.make_metric_music(
    trinton.beam_groups(
        selector=trinton.ranged_selector(
            ranges=[
                range(0, 2),
                range(2, 4),
                range(4, 6),
            ],
            nested=True,
        )
    ),
    score=score,
    voice_name="viola voice",
    second_range=(1, 17),
    measure_number_range=(6,),
)

library.make_metric_music(
    library.viola_ii_rhythm(index=3),
    trinton.force_rest(selector=trinton.select_leaves_by_index([0, 1])),
    library.pitch_viola_ii(strings="I + II", index=2),
    library.change_lines(lines=5, clef="altovarC"),
    library.duration_line(
        selector=trinton.select_logical_ties_by_index([-1]), viola=True
    ),
    trinton.beam_groups(
        selector=trinton.ranged_selector(
            ranges=[range(2, 7)],
            nested=True,
        )
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.select_logical_ties_by_index([3, 4], first=True, pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartSlur(),
                abjad.StopSlur(),
            ]
        ),
        selector=trinton.select_leaves_by_index([0, 2], pitched=True),
        direction=abjad.DOWN,
    ),
    trinton.linear_attachment_command(
        attachments=[
            library._viola_processing_markups["2 on"],
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<|"),
            trinton.make_custom_dynamic("ffp"),
            abjad.StartHairpin("<|"),
            abjad.Dynamic("ff"),
            library._viola_processing_markups["2 off"],
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 3, 3, -1, -1], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([library.upbow, library.downbow]),
        selector=trinton.select_leaves_by_index([0, 3, 4], pitched=True),
    ),
    trinton.spanner_command(
        strings=library.return_fraction_string_list([(6, 7), (5, 7)]),
        selector=trinton.select_leaves_by_index(
            [0, 3],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=8,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
    ),
    trinton.spanner_command(
        strings=library.return_fraction_string_list([(5, 7), (4, 7)]),
        selector=trinton.select_leaves_by_index(
            [4, -1],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=8,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
    ),
    trinton.notehead_bracket_command(),
    score=score,
    voice_name="viola voice",
    second_range=(1, 17),
    measure_number_range=(8,),
)

# globals

library.set_all_time_signatures(score=score, exclude_viola=True)

# library.remove_redundant_time_signatures(score=score)

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

# library.forbid_break(
#     score=score, measures=[]
# )

library.write_timestamps(
    global_context=score["Global Context"],
    second_range=(218, 235),
    measure_range=(1, 17),
)

# cutaway

trinton.whiteout_empty_staves(
    score=score,
    cutaway="blank",
    voice_names=[
        _
        for _ in library.all_voice_names
        if _ != "viola voice"
        and _ != "viola voice time signatures"
        and _ != "piano voice"
    ],
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
    segment_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/sections/10",
    build_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/build",
    segment_name="10",
    includes=[
        "/Users/trintonprater/scores/bibliopegy/bibliopegy/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
