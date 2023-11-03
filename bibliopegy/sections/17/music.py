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
    lambda _: trinton.select_target(_, (6, 15)),
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
        (7, 32),
        (13, 32),
        (4, 8),
        (11, 32),
        (9, 32),
    ],
    measure_range=(4, 17),
    reset=False,
)

library.make_metric_music(
    evans.RhythmHandler(evans.tuplet([(7, 1)])),
    trinton.call_rmaker(
        rmaker=rmakers.force_diminution, selector=trinton.select_tuplets_by_index([1])
    ),
    evans.PitchHandler([-7, 4, 4, -7]),
    library.viola_bridge_staff(stage=3),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin("<|"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">o"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                0,
                2,
                2,
                3,
                -1,
            ],
            first=True,
        ),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "rosybrown" { III + IV }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=14.5,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'rosybrown)"],
        command="One",
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "mediumblue" { 0° }""",
        selector=trinton.select_leaves_by_index([0, -2], pitched=True),
        padding=11.5,
        right_padding=0,
        full_string=True,
        tweaks=[r"""- \tweak color #(css-color 'mediumblue)"""],
        command="Two",
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup {  }""",
            r"""\markup \with-color "mediumblue" { +45° }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [-2, -1], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=11.5,
        full_string=True,
        tweaks=[r"""- \tweak color #(css-color 'mediumblue)"""],
        command="Two",
    ),
    trinton.beam_groups(selector=abjad.select.tuplets),
    trinton.notehead_bracket_command(),
    score=score,
    voice_name="viola voice",
    second_range=(4, 17),
    measure_number_range=(1, 3),
)

library.make_metric_music(
    evans.RhythmHandler(evans.tuplet([(6, 1, 6, 1)])),
    trinton.call_rmaker(
        rmaker=rmakers.force_augmentation, selector=trinton.select_tuplets_by_index([0])
    ),
    evans.PitchHandler([4, -7]),
    library.viola_bridge_staff(stage=1),
    trinton.linear_attachment_command(
        attachments=[
            library._viola_processing_markups["1 on"],
            abjad.Dynamic("mp"),
            abjad.Dynamic("f"),
            abjad.Dynamic("mp"),
            library._viola_processing_markups["1 off"],
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 1, 2, -1],
            first=True,
        ),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "rosybrown" { I + II }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=14.5,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'rosybrown)"],
        command="One",
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "mediumblue" { "( +45° )" }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=11.5,
        full_string=True,
        tweaks=[r"""- \tweak color #(css-color 'mediumblue)"""],
        command="Two",
    ),
    trinton.beam_groups(selector=abjad.select.tuplets),
    trinton.notehead_bracket_command(),
    score=score,
    voice_name="viola voice",
    second_range=(4, 17),
    measure_number_range=(4,),
)

library.make_metric_music(
    evans.RhythmHandler(
        evans.tuplet(
            [
                (
                    1,
                    1,
                    1,
                    1,
                    3,
                )
            ]
        )
    ),
    rmakers.rewrite_dots,
    evans.PitchHandler(
        [
            [
                "a",
                "aqs",
            ],
            [
                "a",
                "aqs",
            ],
            [
                "a",
                "aqs",
            ],
            [
                "a",
                "aqs",
            ],
            ["a", "aqs", "a,"],
        ]
    ),
    abjad.beam,
    library.duration_line(selector=trinton.select_leaves_by_index([-1]), viola=True),
    trinton.force_accidentals_command(selector=trinton.select_leaves_by_index([0])),
    trinton.invisible_accidentals_command(selector=trinton.pleaves(exclude=[0])),
    library.change_lines(lines=5, clef="altovarC"),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override NoteHead.no-ledgers = ##t", site="before"
            )
        ],
        selector=trinton.select_leaves_by_index([-2, -1]),
    ),
    library.boxed_markup(
        string="( Viola + Styrofoam )",
        selector=trinton.select_leaves_by_index([4]),
        site="opening",
    ),
    trinton.linear_attachment_command(
        attachments=[
            library._viola_processing_markups["3 on"],
            trinton.make_custom_dynamic("mp +"),
            trinton.make_custom_dynamic("sf"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
            library._viola_processing_markups["3 off"],
        ],
        selector=trinton.select_leaves_by_index([0, 0, 4, 4, -1, -1]),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "indianred" \center-column { \line { legno molto pont. } \line { crine dietro pont. } }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=16,
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
        padding=11,
        right_padding=-1,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
        command="Two",
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "rosybrown" { "( I + II )" }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=20,
        right_padding=0,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'rosybrown)"],
        command="Three",
    ),
    trinton.notehead_bracket_command(),
    score=score,
    voice_name="viola voice",
    second_range=(4, 17),
    measure_number_range=(5,),
)

# bass clarinet music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RhythmHandler(
        evans.talea(
            [1, -1, 1, -5, 1, 1, 1, -3, 1, -5, 1, -1000],
            32,
            extra_counts=[1, 0, 1, 0, 0],
        )
    ),
    evans.PitchHandler(["g", "g", "g", "bf", "f'", "af'", "a'"]),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("staccato"),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    library.color_fingerings(
        selector=trinton.select_leaves_by_index([0, 1, 2], pitched=True), index=3
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "darksalmon" { slaptongue }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=6,
        full_string=True,
        right_padding=2.5,
        tweaks=[r"""- \tweak color #(css-color 'darksalmon)"""],
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
            abjad.Dynamic("p"),
            abjad.Dynamic("f"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 0, 1, 2, 3, 4, 4, 5, 6], pitched=True
        ),
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 15)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
                2,
                3,
                4,
            ],
            8,
        )
    ),
    evans.PitchHandler(
        [
            library._bass_clarinet_multiphonics[1][0],
            library._bass_clarinet_multiphonics[2][0],
            library._bass_clarinet_multiphonics[1][0],
            library._bass_clarinet_multiphonics[3][0],
        ]
    ),
    library.duration_line(),
    trinton.hooked_spanner_command(
        string=library._bass_clarinet_multiphonics[1][1],
        selector=trinton.select_logical_ties_by_index([0, 1, 4, 5], first=True),
        padding=7,
        right_padding=0,
        full_string=True,
        tweaks=[r"""- \tweak color #(css-color 'seagreen) """],
    ),
    trinton.hooked_spanner_command(
        string=library._bass_clarinet_multiphonics[2][1],
        selector=trinton.select_logical_ties_by_index([2, 3], first=True),
        padding=8.2,
        right_padding=0,
        full_string=True,
        tweaks=[r"""- \tweak color #(css-color 'seagreen) """],
    ),
    trinton.hooked_spanner_command(
        string=library._bass_clarinet_multiphonics[3][1],
        selector=trinton.select_logical_ties_by_index([6, 7], first=True),
        padding=7,
        right_padding=0,
        full_string=True,
        tweaks=[r"""- \tweak color #(css-color 'seagreen) """],
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("espressivo"),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    voice=score["bassclarinet voice"],
    preprocessor=trinton.fuse_preprocessor((10,)),
)

# percussion 1 music

trinton.make_music(
    lambda _: trinton.select_target(_, (17,)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    evans.PitchHandler([[-1, 2]]),
    library.duration_line(),
    library.change_lines(lines=2, clef="percussion"),
    library.boxed_markup(string="Snare w/ Bow", site="opening"),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("f"), abjad.Articulation("espressivo")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "darkmagenta" { \fontsize #3.5 \override #'(font-name . "ekmelos") \char ##xe222 \override #'(font-name . "Bodoni72 Italic") " ( trem. largo )" }""",
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

# cello 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (14, 17)),
    evans.RhythmHandler(
        evans.talea(
            [1000],
            8,
        )
    ),
    evans.PitchHandler(["ef,"]),
    evans.PitchHandler(
        [
            "13/1",
        ],
        as_ratios=True,
    ),
    library.change_lines(lines=5, clef="treble"),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True)
    ),
    library.duration_line(),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "darkred" { "flaut. moltissimo" }""",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=11,
        right_padding=0,
        full_string=True,
        tweaks=[r"""- \tweak color #"darkred" """],
    ),
    library.cello_trills(
        initial_width=0.3,
        y_scale=-0.6,
        speed_factor=-0.6,
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("o<"), abjad.Dynamic("mf")],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["cello 1 voice"],
)

# cello 2 music

trinton.make_music(
    lambda _: trinton.select_target(_, (14, 17)),
    evans.RhythmHandler(
        evans.talea(
            [1000],
            8,
        )
    ),
    evans.PitchHandler(["ef,"]),
    evans.PitchHandler(
        [
            "11/1",
        ],
        as_ratios=True,
    ),
    library.change_lines(lines=5, clef="treble"),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True)
    ),
    library.duration_line(),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "darkred" { "flaut. moltissimo" }""",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=10,
        right_padding=0,
        full_string=True,
        tweaks=[r"""- \tweak color #"darkred" """],
    ),
    library.cello_trills(
        initial_width=0.3,
        y_scale=-0.6,
        speed_factor=-0.6,
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("o<"), abjad.Dynamic("mf")],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["cello 2 voice"],
)

# cello 3 music

trinton.make_music(
    lambda _: trinton.select_target(_, (14, 17)),
    evans.RhythmHandler(
        evans.talea(
            [1000],
            8,
        )
    ),
    evans.PitchHandler(["ef,"]),
    evans.PitchHandler(
        [
            "9/1",
        ],
        as_ratios=True,
    ),
    library.change_lines(lines=5, clef="treble"),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True)
    ),
    library.duration_line(),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "darkred" { "flaut. moltissimo" }""",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=9,
        right_padding=0,
        full_string=True,
        tweaks=[r"""- \tweak color #"darkred" """],
    ),
    library.cello_trills(
        initial_width=0.3,
        y_scale=-0.6,
        speed_factor=-0.6,
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("o<"), abjad.Dynamic("mf")],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["cello 3 voice"],
)

# percussion 2 music

trinton.make_music(
    lambda _: trinton.select_target(_, (15, 17)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    evans.PitchHandler(["ef,"]),
    library.duration_line(),
    library.boxed_markup(string="Marimba"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            trinton.make_custom_dynamic("sffz pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1]),
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
    second_range=(337, 1000),
    measure_range=(1, 17),
)

# library.forbid_break(score=score, measures=[9, 10, 11])

# cutaway

trinton.whiteout_empty_staves(
    score=score,
    cutaway="blank",
    voice_names=[
        _
        for _ in library.all_voice_names
        if _ != "viola voice"
        and _ != "viola voice time signatures"
        and _ != "bassclarinet voice"
    ],
    last_segment=True,
)

library.blank_measure_by_hand(
    score=score,
    voice_names=["viola voice"],
    measures=[1, 2, 3],
)

library.blank_measure_by_hand(
    score=score,
    voice_names=["bassclarinet voice"],
    measures=[
        16,
        17,
    ],
)

# parts

trinton.extract_parts(score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/sections/17",
    build_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/build",
    segment_name="17",
    includes=[
        "/Users/trintonprater/scores/bibliopegy/bibliopegy/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
