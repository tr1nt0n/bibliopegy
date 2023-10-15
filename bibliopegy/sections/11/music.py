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
    evans.RhythmHandler(evans.talea([100], 8)),
    evans.PitchHandler([-1]),
    library.duration_line(color="darkred", sustained=True),
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
    preprocessor=trinton.fuse_preprocessor((14,)),
)

# viola music

library.write_simultaneous_time_signatures(
    score=score,
    voice_name="viola voice",
    signature_pairs=[
        (5, 32),
        (2, 16),
        (11, 32),
        (3, 16),
        (11, 32),
        (7, 32),
        (5, 32),
        (7, 32),
    ],
    measure_range=(1, 14),
    reset=False,
)

library.make_metric_music(
    evans.RhythmHandler(library.viola_i_rhythm(index=6, extra_counts=True)),
    evans.PitchHandler([-5, 2]),
    library.viola_bridge_staff(),
    trinton.linear_attachment_command(
        attachments=[
            library._viola_processing_markups["1 on"],
            abjad.Dynamic("mp"),
            trinton.make_custom_dynamic("sf"),
            trinton.make_custom_dynamic("s mp"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                0,
                2,
                4,
            ],
            first=True,
        ),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "rosybrown" { II + III }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=15.5,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'rosybrown)"],
        command="One",
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "mediumblue" { 0° }""",
            r"""\markup \with-color "mediumblue" { -35° }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, -1], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=12.5,
        full_string=True,
        tweaks=[r"""- \tweak color #(css-color 'mediumblue)"""],
        command="Two",
    ),
    trinton.notehead_bracket_command(),
    score=score,
    voice_name="viola voice",
    second_range=(1, 14),
    measure_number_range=(1,),
)

library.make_metric_music(
    evans.RhythmHandler(library.viola_i_rhythm(index=7, extra_counts=False, stage=3)),
    evans.PitchHandler([9, 9, 7]),
    library.viola_bridge_staff(stage=3),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
            ],
            first=True,
        ),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "rosybrown" { I }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=8,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'rosybrown)"],
        command="One",
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "mediumblue" { -45° }""",
            r"""\markup \with-color "mediumblue" { +45° }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [-2, -1],
            first=True,
        ),
        style="solid-line-with-arrow",
        padding=5,
        right_padding=2,
        full_string=True,
        tweaks=[r"""- \tweak color #(css-color 'mediumblue)"""],
        command="Two",
    ),
    trinton.notehead_bracket_command(),
    score=score,
    voice_name="viola voice",
    second_range=(1, 14),
    measure_number_range=(2,),
)

library.make_metric_music(
    evans.RhythmHandler(library.viola_i_rhythm(index=8, extra_counts=True)),
    trinton.call_rmaker(
        rmaker=rmakers.force_augmentation, selector=trinton.select_tuplets_by_index([1])
    ),
    evans.PitchHandler(
        [
            -5,
            2,
            -5,
            2,
            -7,
            5,
            4,
            5,
            -5,
            4,
        ]
    ),
    library.viola_bridge_staff(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_logical_ties_by_index([0, 0, -1], first=True),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "rosybrown" { I }""",
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                2,
                4,
                10,
                12,
                14,
                16,
                27,
            ],
            first=True,
            pitched=True,
        ),
        padding=16.5,
        right_padding=0,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'rosybrown)"],
        command="One",
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "rosybrown" { II + III }""",
        selector=trinton.select_logical_ties_by_index(
            [2, 4, 11, 12, 14, 16, 28, -1], first=True, pitched=True
        ),
        padding=16.5,
        right_padding=0,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'rosybrown)"],
        command="One",
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "mediumblue" { -45° }""",
            r"""\markup \with-color "mediumblue" { -10° }""",
            r"""\markup \with-color "mediumblue" { 0° }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 16, 16, -1], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=14,
        full_string=True,
        tweaks=[r"""- \tweak color #(css-color 'mediumblue)"""],
        command="Two",
    ),
    trinton.notehead_bracket_command(),
    score=score,
    voice_name="viola voice",
    second_range=(1, 14),
    measure_number_range=(3, 5),
)

library.make_metric_music(
    evans.RhythmHandler(library.viola_i_rhythm(index=8, extra_counts=False)),
    evans.PitchHandler([-8, -5, -7, -3, -5, -1, -3, 2, 0, 4, 2, 5, 4, 7, 5, 9]),
    library.viola_bridge_staff(stage=2),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.Dynamic("pp"),
            abjad.Dynamic("fff"),
            library._viola_processing_markups["1 off"],
        ],
        selector=trinton.select_logical_ties_by_index([0, 3, 11, -1], first=True),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "rosybrown" { II + III }""",
        selector=trinton.select_logical_ties_by_index([0, 3], first=True, pitched=True),
        padding=11,
        right_padding=0,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'rosybrown)"],
        command="One",
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "rosybrown" { I + II }""",
        selector=trinton.select_logical_ties_by_index(
            [3, 11], first=True, pitched=True
        ),
        padding=11,
        right_padding=-1,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'rosybrown)"],
        command="One",
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "rosybrown" { I }""",
        selector=trinton.select_logical_ties_by_index(
            [11, -1], first=True, pitched=True
        ),
        padding=11,
        right_padding=0,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'rosybrown)"],
        command="One",
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "mediumblue" { -45° }""",
            r"""\markup \with-color "mediumblue" { +45° }""",
            r"""\markup { }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                7,
                7,
                12,
            ],
            first=True,
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=8,
        full_string=True,
        tweaks=[r"""- \tweak color #(css-color 'mediumblue)"""],
        command="Two",
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "mediumblue" { -45° }""",
            r"""\markup \with-color "mediumblue" { +45° }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [12, -1], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=8,
        right_padding=4,
        full_string=True,
        tweaks=[r"""- \tweak color #(css-color 'mediumblue)"""],
        command="Two",
    ),
    trinton.notehead_bracket_command(),
    score=score,
    voice_name="viola voice",
    second_range=(1, 14),
    measure_number_range=(6, 8),
)

# percussion 2 music

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 6)),
    evans.RhythmHandler(library.marimba_alpha_iv(index=1)),
    library.marimba_graces(),
    evans.PitchHandler(["ef,"]),
    trinton.pitch_with_selector_command(
        selector=trinton.pleaves(grace=True),
        pitch_list=library._marimba_grace_pitch_list["6 first"],
    ),
    library.marimba_grace_ottavas(),
    library.duration_line(selector=trinton.pleaves(grace=False)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<|"),
            abjad.Dynamic("fff"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 0, 1, -2, -2, -1], first=True
        ),
    ),
    library.marimba_tremoli(),
    library.boxed_markup(string="Marimba", site="opening"),
    voice=score["percussion 2 voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 11)),
    evans.RhythmHandler(library.marimba_alpha_iv(index=3)),
    library.marimba_graces(counter_offset=2),
    evans.PitchHandler(["ef,"]),
    trinton.pitch_with_selector_command(
        selector=trinton.pleaves(grace=True),
        pitch_list=library._marimba_grace_pitch_list["5 first"],
    ),
    library.marimba_grace_ottavas(),
    library.duration_line(selector=trinton.pleaves(grace=False)),
    library.marimba_tremoli(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<|"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_logical_ties_by_index([0, 0, 1], first=True),
    ),
    voice=score["percussion 2 voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 14)),
    evans.RhythmHandler(library.marimba_alpha_iv(index=5)),
    library.marimba_graces(counter_offset=3),
    evans.PitchHandler(["ef,"]),
    trinton.pitch_with_selector_command(
        selector=trinton.pleaves(grace=True),
        pitch_list=library._marimba_grace_pitch_list["6 first"],
    ),
    library.marimba_grace_ottavas(),
    library.duration_line(selector=trinton.pleaves(grace=False)),
    library.marimba_tremoli(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_logical_ties_by_index([0, 0, 1], first=True),
    ),
    voice=score["percussion 2 voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
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
    second_range=(235, 248),
    measure_range=(1, 14),
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
    segment_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/sections/11",
    build_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/build",
    segment_name="11",
    includes=[
        "/Users/trintonprater/scores/bibliopegy/bibliopegy/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
