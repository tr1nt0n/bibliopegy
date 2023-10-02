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

score = library.bibliopegy_score([(1, 8) for _ in range(1, 12)])

# music commands

# tape music


trinton.make_music(
    lambda _: trinton.select_target(_, (1, 11)),
    evans.RhythmHandler(evans.talea([100], 8)),
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
    preprocessor=trinton.fuse_preprocessor((11,)),
)

# viola music

library.write_simultaneous_time_signatures(
    score=score,
    voice_name="viola voice",
    signature_pairs=[
        (4, 16),
        (6, 32),
        (5, 32),
        (4, 32),
        (9, 32),
        (5, 32),
        (7, 32),
    ],
    measure_range=(1, 11),
    reset=False,
)

library.make_metric_music(
    evans.RhythmHandler(evans.tuplet([(3, 2)])),
    library.change_lines(lines=1, clef="varpercussion"),
    abjad.beam,
    library.duration_line(viola=True),
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
    second_range=(1, 2),
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
    second_range=(3, 4),
    measure_number_range=(1,),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    trinton.attachment_command(
        attachments=[
            library._viola_processing_markups["3 off"],
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["viola voice time signatures"],
)

library.make_metric_music(
    evans.RhythmHandler(rmakers.note),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([[2, 5], [2, -1], [2, -1]]),
    library.duration_line(
        selector=trinton.select_logical_ties_by_index([-1]), viola=True
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "indianred" { "dietro pont." }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=12,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'indianred)"],
        command="One",
    ),
    trinton.spanner_command(
        strings=[
            library.return_fractional_scratch_markup("1 3"),
            r"""\markup \with-color "darkred" { scratch }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 1, -1], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=9,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
        command="Two",
        end_hook=True,
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "mediumblue" { +45° }""",
        selector=trinton.select_leaves_by_index([0, 1], pitched=True),
        padding=6,
        right_padding=0,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'mediumblue)"],
        command="Three",
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup {  }""",
            r"""\markup \with-color "mediumblue" { 0° }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [1, -1], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=6,
        full_string=True,
        tweaks=[r"""- \tweak color #(css-color 'mediumblue)"""],
        command="Three",
    ),
    trinton.beam_groups(
        selector=trinton.ranged_selector(ranges=[range(0, 2)], nested=True),
    ),
    abjad.slur,
    trinton.linear_attachment_command(
        attachments=[
            library._viola_processing_markups["4 on"],
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<|"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            library._viola_processing_markups["4 off"],
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 1, 1, -1, -1]),
    ),
    score=score,
    voice_name="viola voice",
    second_range=(1, 11),
    measure_number_range=(4, 5),
)

library.make_metric_music(
    evans.RhythmHandler(library.viola_i_rhythm(index=0, extra_counts=True)),
    evans.PitchHandler([5, -7, 5, 0, 2, -3, 2, -3, 2, -3, 2, -3, 0, -1, 4, -7, 4, -5]),
    library.viola_bridge_staff(),
    trinton.linear_attachment_command(
        attachments=[
            library._viola_processing_markups["1 on"],
            abjad.Dynamic("ff"),
            abjad.Articulation(">"),
            trinton.make_custom_dynamic("s mp"),
            abjad.StartHairpin("<|"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">o"),
            trinton.make_custom_dynamic("s ff"),
            library._viola_processing_markups["1 off"],
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 0, 1, 1, 3, 3, 12, 13, -1], first=True
        ),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "rosybrown" { I }""",
        selector=trinton.select_leaves_by_index([0, 1, 4, 12], pitched=True),
        padding=15.5,
        right_padding=0,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'rosybrown)"],
        command="One",
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "rosybrown" { "III + IV" }""",
        selector=trinton.select_leaves_by_index([1, 3], pitched=True),
        padding=15.5,
        right_padding=0,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'rosybrown)"],
        command="One",
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "rosybrown" { "III + IV" }""",
        selector=trinton.select_leaves_by_index([13, -1], pitched=True),
        padding=15.5,
        right_padding=4,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'rosybrown)"],
        command="One",
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "mediumblue" { +45° }""",
            r"""\markup \with-color "mediumblue" { -45° }""",
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
    second_range=(1, 11),
    measure_number_range=(6, 7),
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
    second_range=(207, 219),
    measure_range=(1, 11),
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
    segment_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/sections/09",
    build_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/build",
    segment_name="09",
    includes=[
        "/Users/trintonprater/scores/bibliopegy/bibliopegy/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
