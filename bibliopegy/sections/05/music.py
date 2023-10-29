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

score = library.bibliopegy_score([(1, 8) for _ in range(1, 13)])

# music commands

# tape music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 8)),
    evans.RhythmHandler(evans.talea([-1, 2, -1], 16)),
    library.duration_line(color="(css-color 'darksalmon)"),
    library.change_lines(lines=2, clef="percussion"),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\override NoteHead.stencil = #ly:text-interface::print",
                    r"""\override NoteHead.text = \markup \with-color "darksalmon" { γ }""",
                ],
                site="before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["piano voice"],
)

# viola music commands

library.write_simultaneous_time_signatures(
    score=score,
    voice_name="viola voice",
    signature_pairs=[(4, 16), (6, 32), (1, 16)],
    measure_range=(4, 7),
)

library.make_metric_music(
    evans.RhythmHandler(evans.tuplet([(3, 2)])),
    library.change_lines(lines=1, clef="varpercussion"),
    abjad.beam,
    library.duration_line(viola=True),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(library._metronome_marks["1/1"], height=12),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("s mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            trinton.make_custom_dynamic("s mf"),
            abjad.StartHairpin("<|"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 1, 2, 2, 3]),
    ),
    library.boxed_markup(string="Styrofoam", site="opening"),
    trinton.notehead_bracket_command(),
    score=score,
    voice_name="viola voice",
    second_range=(4, 7),
    measure_number_range=(1,),
)

library.make_metric_music(
    evans.RhythmHandler(
        evans.talea(
            [
                3,
            ],
            32,
        )
    ),
    abjad.beam,
    library.aftergrace(selector=trinton.select_leaves_by_index([-1])),
    evans.PitchHandler([[2, -1]]),
    trinton.noteheads_only(selector=trinton.select_leaves_by_index([-1])),
    trinton.transparent_noteheads(selector=trinton.select_leaves_by_index([-1])),
    library.change_lines(lines=4, clef="varpercussion"),
    library.boxed_markup(string="Viola", site="opening"),
    trinton.attachment_command(
        attachments=[
            library._viola_processing_markups["3 on"],
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("p"), abjad.StartHairpin("--"), abjad.StopHairpin()],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "indianred" \center-column { \line { legno molto pont. } \line { crine dietro pont. } }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=13.5,
        right_padding=0,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'indianred)"],
        command="One",
    ),
    trinton.spanner_command(
        strings=library.return_fraction_string_list([(1, 1), (0, 1), (1, 1)]),
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
                1,
                2,
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
    score=score,
    voice_name="viola voice",
    second_range=(4, 7),
    measure_number_range=(2,),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8,)),
    trinton.attachment_command(
        attachments=[
            library._viola_processing_markups["3 off"],
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["viola voice"],
)

# cello 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 6)),
    evans.RhythmHandler(
        evans.talea(
            [5, 3, 5, 11],
            32,
            extra_counts=[
                4,
            ],
        )
    ),
    evans.PitchHandler(["d,"]),
    evans.PitchHandler(["13/1"], as_ratios=True),
    library.change_lines(lines=5, clef="treble"),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True)
    ),
    trinton.transparent_noteheads(selector=trinton.logical_ties(all_except_first=True)),
    trinton.noteheads_only(selector=trinton.logical_ties(all_except_first=True)),
    library.duration_line(
        selector=trinton.patterned_tie_index_selector(
            [
                1,
            ],
            2,
        )
    ),
    trinton.attachment_command(
        attachments=[
            trinton.make_custom_dynamic("p +"),
        ],
        selector=trinton.patterned_tie_index_selector(
            [
                1,
            ],
            2,
            first=True,
            grace=False,
        ),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "darkred" { flaut. }""",
        selector=trinton.patterned_tie_index_selector(
            [
                1,
                2,
            ],
            3,
            first=True,
        ),
        padding=11.5,
        right_padding=0,
        full_string=True,
        tweaks=[r"""- \tweak color #"darkred" """],
    ),
    library.cello_trills(
        initial_width=0.4,
        y_scale=0.6,
        speed_factor=-0.4,
        selector=trinton.patterned_tie_index_selector(
            [
                1,
                2,
            ],
            3,
            first=True,
        ),
    ),
    library.cello_graces(
        selector=trinton.patterned_tie_index_selector(
            [
                0,
            ],
            2,
            grace=False,
        ),
        rotation=1,
        counter_offset=2,
    ),
    voice=score["cello 1 voice"],
    preprocessor=trinton.fuse_preprocessor((6,)),
)

library.clean_onbeat_graces(
    voices=[
        score["cello 1 voice graces 1"],
        score["cello 1 voice graces 2"],
        score["cello 1 voice graces 3"],
    ],
    measures=(1, 6),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 6)),
    library.cello_trills(
        initial_width=3,
        y_scale=0.9,
        speed_factor=0.9,
    ),
    trinton.linear_attachment_command(
        attachments=[library.downbow, library.upbow],
        selector=trinton.select_leaves_by_index([0, 1]),
    ),
    trinton.spanner_command(
        strings=library.return_fraction_string_list(
            [
                (0, 7),
                (2, 7),
            ]
        ),
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
            ],
            first=True,
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=17,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 1, -1]),
        direction=abjad.DOWN,
    ),
    voice=score["cello 1 voice graces 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 6)),
    library.cello_trills(
        initial_width=5,
        y_scale=0.9,
        speed_factor=0.9,
    ),
    trinton.linear_attachment_command(
        attachments=[library.downbow, library.upbow],
        selector=trinton.select_leaves_by_index(
            [
                0,
                2,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([0, 1, 2, 3]),
    ),
    trinton.spanner_command(
        strings=library.return_fraction_string_list([(0, 5), (2, 5), (3, 5), (1, 5)]),
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
        padding=17,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            trinton.make_custom_dynamic("mp +"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 2, -1]),
        direction=abjad.DOWN,
    ),
    voice=score["cello 1 voice graces 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 6)),
    library.cello_trills(
        initial_width=5,
        y_scale=0.9,
        speed_factor=0.9,
    ),
    trinton.attachment_command(
        attachments=[library.upbow],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartSlur(), abjad.StopSlur()],
        selector=trinton.select_leaves_by_index([0, -2]),
    ),
    trinton.spanner_command(
        strings=library.return_fraction_string_list(
            [
                (7, 7),
                (6, 7),
                (5, 7),
            ]
        ),
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                1,
                2,
            ],
        ),
        style="solid-line-with-arrow",
        padding=17,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_leaves_by_index([0, 1, 1, -1]),
        direction=abjad.DOWN,
    ),
    voice=score["cello 1 voice graces 3"],
)

for voice_name, rotation, ratio, speed_factor in zip(
    ["cello 1 voice", "cello 2 voice", "cello 3 voice"],
    [
        2,
        1,
        0,
    ],
    [
        "13/1",
        "11/1",
        "9/1",
    ],
    [
        0.3,
        0.7,
        0.6,
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (9, 12)),
        evans.RhythmHandler(
            evans.talea(
                [11, 100],
                32,
            )
        ),
        evans.PitchHandler(["d,"]),
        evans.PitchHandler([ratio], as_ratios=True),
        trinton.force_accidentals_command(
            selector=trinton.logical_ties(first=True, pitched=True)
        ),
        trinton.noteheads_only(selector=trinton.logical_ties(all_except_first=True)),
        trinton.transparent_noteheads(
            selector=trinton.logical_ties(all_except_first=True)
        ),
        library.duration_line(selector=trinton.select_logical_ties_by_index([-1])),
        library.cello_trills(
            initial_width=4,
            y_scale=0.6,
            speed_factor=speed_factor,
            selector=trinton.select_logical_ties_by_index(
                [1, -1], pitched=True, first=True
            ),
        ),
        library.cello_graces(
            selector=trinton.select_logical_ties_by_index([0]),
            rotation=rotation,
            counter_offset=5,
            counter=4,
        ),
        voice=score[voice_name],
        preprocessor=trinton.fuse_preprocessor((4,)),
    )

    if voice_name == "cello 2 voice" or voice_name == "cello 3 voice":
        trinton.make_music(
            lambda _: trinton.select_target(_, (9, 12)),
            trinton.attachment_command(
                attachments=[
                    abjad.LilyPondLiteral(
                        r"\once \override NoteHead.X-extent = #'(0.5 . 0)", "opening"
                    ),
                ],
                selector=trinton.select_leaves_by_index([0], grace=False),
            ),
            voice=score[voice_name],
        )

library.clean_onbeat_graces(
    voices=[
        score["cello 1 voice graces 4"],
        score["cello 2 voice graces 4"],
        score["cello 3 voice graces 4"],
    ],
    measures=(9, 12),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 12)),
    library.cello_trills(
        initial_width=0.1,
        y_scale=0.9,
        speed_factor=-0.7,
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([library.upbow, library.downbow]),
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                2,
                3,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartSlur(), abjad.StopSlur()],
        selector=trinton.select_leaves_by_index([3, -2]),
    ),
    trinton.spanner_command(
        strings=library.return_fraction_string_list(
            [(5, 7), (4, 7), (6, 7), (0, 7), (2, 7), (3, 7)]
        ),
        selector=trinton.select_leaves_by_index(
            [
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
            ],
        ),
        style="solid-line-with-arrow",
        padding=16.5,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fff"),
            abjad.StartHairpin(">"),
            trinton.make_custom_dynamic("pp +"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
        direction=abjad.DOWN,
    ),
    voice=score["cello 1 voice graces 4"],
)

# cello 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 6)),
    evans.RhythmHandler(
        evans.talea(
            [5, 3, 5, 11],
            32,
            extra_counts=[
                3,
            ],
        )
    ),
    evans.PitchHandler(["d,"]),
    evans.PitchHandler(["11/1"], as_ratios=True),
    library.change_lines(lines=5, clef="treble"),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True)
    ),
    trinton.transparent_noteheads(
        selector=trinton.logical_ties(all_except_first=True, pitched=True)
    ),
    trinton.noteheads_only(
        selector=trinton.logical_ties(all_except_first=True, pitched=True)
    ),
    library.duration_line(
        selector=trinton.patterned_tie_index_selector(
            [
                1,
            ],
            2,
        )
    ),
    trinton.attachment_command(
        attachments=[
            trinton.make_custom_dynamic("p +"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                4,
            ],
            first=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override NoteHead.X-extent = #'(0.5 . 0)", "opening"
            ),
        ],
        selector=trinton.patterned_tie_index_selector(
            [
                0,
            ],
            2,
            first=True,
            grace=False,
        ),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "darkred" { flaut. }""",
        selector=trinton.patterned_tie_index_selector([1, 2], 3, first=True),
        padding=9,
        right_padding=0,
        full_string=True,
        tweaks=[r"""- \tweak color #"darkred" """],
    ),
    library.cello_trills(
        initial_width=4,
        y_scale=0.9,
        speed_factor=0.6,
        selector=trinton.patterned_tie_index_selector([1, 2], 3, first=True),
    ),
    library.cello_graces(
        selector=trinton.patterned_tie_index_selector(
            [
                0,
            ],
            2,
            grace=False,
        ),
        rotation=2,
        counter_offset=1,
    ),
    voice=score["cello 2 voice"],
    preprocessor=trinton.fuse_preprocessor((6,)),
)

library.clean_onbeat_graces(
    voices=[
        score["cello 2 voice graces 1"],
        score["cello 2 voice graces 2"],
        score["cello 2 voice graces 3"],
    ],
    measures=(1, 6),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 6)),
    library.cello_trills(
        initial_width=0.2,
        y_scale=0.9,
        speed_factor=-0.9,
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([library.upbow, library.downbow]),
        selector=trinton.select_leaves_by_index([0, 1, 3]),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartSlur(), abjad.StopSlur()],
        selector=trinton.select_leaves_by_index([1, 2]),
    ),
    trinton.spanner_command(
        strings=library.return_fraction_string_list(
            [
                (4, 5),
                (1, 5),
                (2, 5),
                (3, 5),
            ]
        ),
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
        padding=16,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            trinton.make_custom_dynamic("p +"),
        ],
        selector=trinton.select_leaves_by_index([0, 1, 1, 3, -1]),
        direction=abjad.DOWN,
    ),
    voice=score["cello 2 voice graces 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 6)),
    library.cello_trills(
        initial_width=0.2,
        y_scale=0.9,
        speed_factor=-0.9,
    ),
    trinton.attachment_command(
        attachments=[
            library.downbow,
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                2,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                2,
                3,
            ]
        ),
    ),
    trinton.spanner_command(
        strings=library.return_fraction_string_list(
            [
                (0, 7),
                (1, 7),
            ]
        ),
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
            ],
            first=True,
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=17.5,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
    ),
    trinton.spanner_command(
        strings=library.return_fraction_string_list([(0, 5), (1, 5)]),
        selector=trinton.select_leaves_by_index(
            [
                2,
                -2,
            ],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=17.5,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 2, 2, -1]),
        direction=abjad.DOWN,
    ),
    voice=score["cello 2 voice graces 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 6)),
    library.cello_trills(
        initial_width=0.2,
        y_scale=0.9,
        speed_factor=-0.9,
    ),
    trinton.linear_attachment_command(
        attachments=[
            library.upbow,
            library.downbow,
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartSlur(), abjad.StopSlur()],
        selector=trinton.select_leaves_by_index([1, 2]),
    ),
    trinton.spanner_command(
        strings=library.return_fraction_string_list([(7, 7), (0, 7), (3, 7)]),
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                1,
                2,
            ],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=16,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 1, 1, -1]),
        direction=abjad.DOWN,
    ),
    voice=score["cello 2 voice graces 3"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 12)),
    library.cello_trills(
        initial_width=4,
        y_scale=0.9,
        speed_factor=0.5,
    ),
    trinton.linear_attachment_command(
        attachments=[library.downbow, library.downbow, library.upbow],
        selector=trinton.select_leaves_by_index(
            [
                0,
                3,
                5,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index(
            [
                0,
                2,
                3,
                4,
                5,
                6,
            ]
        ),
    ),
    trinton.spanner_command(
        strings=library.return_fraction_string_list([(3, 7), (4, 7), (7, 7)]),
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                1,
                2,
            ],
        ),
        style="solid-line-with-arrow",
        padding=16,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
    ),
    trinton.spanner_command(
        strings=library.return_fraction_string_list([(0, 5), (1, 5), (3, 5), (0, 5)]),
        selector=trinton.select_leaves_by_index(
            [
                3,
                4,
                4,
                5,
                5,
                6,
            ],
        ),
        style="solid-line-with-arrow",
        padding=16,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fff"),
            abjad.StartHairpin(">"),
            trinton.make_custom_dynamic("pp +"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
        direction=abjad.DOWN,
    ),
    voice=score["cello 2 voice graces 4"],
)

# cello 3 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 6)),
    evans.RhythmHandler(
        evans.talea(
            [5, 3, 5, 10],
            32,
            extra_counts=[
                1,
            ],
        )
    ),
    evans.PitchHandler(["d,"]),
    evans.PitchHandler(["9/1"], as_ratios=True),
    library.change_lines(lines=5, clef="treble"),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True)
    ),
    trinton.transparent_noteheads(
        selector=trinton.logical_ties(all_except_first=True, pitched=True)
    ),
    trinton.noteheads_only(
        selector=trinton.logical_ties(all_except_first=True, pitched=True)
    ),
    library.duration_line(
        selector=trinton.patterned_tie_index_selector(
            [
                1,
            ],
            2,
        )
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override NoteHead.X-extent = #'(0.5 . 0)", "opening"
            ),
        ],
        selector=trinton.patterned_tie_index_selector([0], 2, first=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("treble"),
            trinton.make_custom_dynamic("sp +"),
            trinton.make_custom_dynamic("sp +"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
                3,
            ],
            first=True,
            grace=False,
        ),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "darkred" { flaut. }""",
        selector=trinton.patterned_tie_index_selector([1, 2], 3, first=True),
        padding=9,
        right_padding=0,
        full_string=True,
        tweaks=[r"""- \tweak color #"darkred" """],
    ),
    library.cello_trills(
        initial_width=4,
        y_scale=0.9,
        speed_factor=0,
        selector=trinton.patterned_tie_index_selector([1, 2], 6, first=True),
    ),
    library.cello_trills(
        initial_width=9,
        y_scale=0.9,
        speed_factor=0.9,
        selector=trinton.patterned_tie_index_selector([4, 5], 6, first=True),
    ),
    library.cello_graces(
        selector=trinton.patterned_tie_index_selector(
            [
                0,
            ],
            2,
            grace=False,
        ),
        rotation=1,
        counter_offset=1,
    ),
    voice=score["cello 3 voice"],
    preprocessor=trinton.fuse_preprocessor((6,)),
)

library.clean_onbeat_graces(
    voices=[
        score["cello 3 voice graces 1"],
        score["cello 3 voice graces 2"],
        score["cello 3 voice graces 3"],
    ],
    measures=(1, 6),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 6)),
    library.cello_trills(
        initial_width=0.4,
        y_scale=0.9,
        speed_factor=-0.9,
    ),
    trinton.attachment_command(
        attachments=[
            library.upbow,
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartSlur(), abjad.StopSlur()],
        selector=trinton.select_leaves_by_index([0, -2]),
    ),
    trinton.spanner_command(
        strings=library.return_fraction_string_list([(4, 4), (2, 4), (1, 4)]),
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                1,
                2,
            ],
        ),
        style="solid-line-with-arrow",
        padding=15,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
    ),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("ffp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
        direction=abjad.DOWN,
    ),
    voice=score["cello 3 voice graces 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 6)),
    library.cello_trills(
        initial_width=0.4,
        y_scale=0.9,
        speed_factor=-0.9,
    ),
    trinton.attachment_command(
        attachments=[
            library.downbow,
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartSlur(), abjad.StopSlur()],
        selector=trinton.select_leaves_by_index([0, -2]),
    ),
    trinton.spanner_command(
        strings=library.return_fraction_string_list(
            [
                (0, 5),
                (3, 5),
            ]
        ),
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
            ],
        ),
        style="solid-line-with-arrow",
        padding=14.5,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
        direction=abjad.DOWN,
    ),
    voice=score["cello 3 voice graces 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 6)),
    library.cello_trills(
        initial_width=0.4,
        y_scale=0.9,
        speed_factor=-0.9,
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                library.downbow,
                library.upbow,
            ]
        ),
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                2,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartSlur(), abjad.StopSlur()],
        selector=trinton.select_leaves_by_index([0, -2]),
    ),
    trinton.spanner_command(
        strings=library.return_fraction_string_list(
            [
                (0, 1),
                (1, 1),
                (0, 1),
            ]
        ),
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                1,
                2,
            ],
        ),
        style="solid-line-with-arrow",
        padding=16.5,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("f"),
            abjad.StartHairpin("|>o"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("|>o"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 1, 1, 2, 2, -1]),
        direction=abjad.DOWN,
    ),
    voice=score["cello 3 voice graces 3"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 12)),
    library.cello_trills(
        initial_width=4,
        y_scale=0.9,
        speed_factor=-0.3,
    ),
    trinton.attachment_command(
        attachments=[library.downbow],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartSlur(), abjad.StopSlur()],
        selector=trinton.select_leaves_by_index([0, -2]),
    ),
    trinton.spanner_command(
        strings=library.return_fraction_string_list(
            [
                (0, 9),
                (1, 9),
                (2, 9),
                (3, 9),
                (4, 9),
                (5, 9),
                (6, 9),
            ]
        ),
        selector=trinton.select_leaves_by_index(
            [
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
            ],
        ),
        style="solid-line-with-arrow",
        padding=15,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fff"),
            abjad.StartHairpin(">"),
            trinton.make_custom_dynamic("pp +"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
        direction=abjad.DOWN,
    ),
    voice=score["cello 3 voice graces 4"],
)

# trombone music commands

library.trombone_alpha(
    voices=[score["tenortrombone voice"], score["basstrombone voice"]],
    measures=(1, 6),
    rotation=0,
    dynamics=["mf", "mf +"],
)

library.trombone_alpha(
    voices=[score["tenortrombone voice"], score["basstrombone voice"]],
    measures=(8, 12),
    rotation=3,
    dynamics=["mf +", "f", "mf", "mf+"],
)

abjad.attach(abjad.Clef("bass"), abjad.select.leaf(score["basstrombone voice"], 0))

# globals

library.set_all_time_signatures(score=score)

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

library.write_timestamps(
    global_context=score["Global Context"],
    second_range=(105, 1000),
    measure_range=(1, 12),
)

library.forbid_break(score=score, measures=[4])

# cutaway

trinton.whiteout_empty_staves(
    score=score,
    cutaway="blank",
    voice_names=[_ for _ in library.all_voice_names if _ != "viola voice"],
)

library.blank_measure_by_hand(
    score=score,
    voice_names=["viola voice"],
    measures=[1, 2, 3, 8, 9, 10, 11, 12],
)

# parts

trinton.extract_parts(score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/sections/05",
    build_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/build",
    segment_name="05",
    includes=[
        "/Users/trintonprater/scores/bibliopegy/bibliopegy/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
