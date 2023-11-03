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

score = library.bibliopegy_score([(1, 8) for _ in range(1, 8)])

# music commands

# tape music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
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
    preprocessor=trinton.fuse_preprocessor((5,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 7)),
    evans.RhythmHandler(evans.talea([100], 8)),
    library.duration_line(color="(css-color 'darksalmon)"),
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
    preprocessor=trinton.fuse_preprocessor((2,)),
)

# viola music

library.write_simultaneous_time_signatures(
    score=score,
    voice_name="viola voice",
    signature_pairs=[(1, 16), (5, 16)],
    measure_range=(5, 7),
    reset=False,
)

library.make_metric_music(
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(library._metronome_marks["1/1"], height=2),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    score=score,
    voice_name="viola voice",
    second_range=(5, 7),
    measure_number_range=(1,),
)

library.make_metric_music(
    evans.RhythmHandler(evans.tuplet([(1, 1, 1)])),
    rmakers.rewrite_dots,
    abjad.beam,
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 3)], nested=True),
        zero_padding=True,
    ),
    library.boxed_markup(string="Styrofoam", site="opening"),
    library.change_lines(lines=1, clef="varpercussion"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 1, 1, -1]),
    ),
    trinton.notehead_bracket_command(),
    score=score,
    voice_name="viola voice",
    second_range=(5, 7),
    measure_number_range=(2,),
)

# violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 7)),
    evans.RhythmHandler(evans.tuplet([(10, 1)])),
    evans.PitchHandler([24, "eqs''"]),
    trinton.change_notehead_command(
        notehead="highest", selector=trinton.select_leaves_by_index([0])
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 3)], nested=True),
        zero_padding=True,
    ),
    trinton.attachment_command(
        attachments=[
            trinton.make_custom_dynamic("fffff"),
        ],
        selector=trinton.select_logical_ties_by_index([0], first=True, pitched=True),
    ),
    library.duration_line(selector=trinton.select_logical_ties_by_index([-1])),
    abjad.slur,
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "indianred" { "tast. poss." }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=9,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'indianred)"],
        command="One",
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "darkred" { norm. }""",
            r"""\markup \with-color "darkred" { scratch }""",
        ],
        selector=trinton.select_leaves_by_index([0, 1, 1, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=7,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
        command="Two",
        end_hook=True,
    ),
    voice=score["violin voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)

# flute music

for voice_name, ratio in zip(["flute voice", "bassflute voice"], ["31/8", "29/4"]):
    trinton.make_music(
        lambda _: trinton.select_target(_, (6, 7)),
        evans.RhythmHandler(evans.talea([1000], 64)),
        evans.PitchHandler(["ef"]),
        evans.PitchHandler([ratio], as_ratios=True),
        trinton.force_accidentals_command(
            selector=trinton.logical_ties(first=True, pitched=True, grace=False)
        ),
        library.duration_line(),
        trinton.linear_attachment_command(
            attachments=[
                trinton.make_custom_dynamic("fffff"),
                abjad.StartHairpin(">o"),
                abjad.StopHairpin(),
            ],
            selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
        ),
        trinton.attachment_command(
            attachments=[abjad.Articulation(">")],
            selector=trinton.logical_ties(first=True, pitched=True, grace=False),
        ),
        voice=score[voice_name],
    )

# bass clarinet music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RhythmHandler(evans.talea([4, 1, 1, 1, 7, 1, 1, 1], 32, extra_counts=[4, 0])),
    evans.PitchHandler(["f", "g", "g", "g"]),
    library.duration_line(selector=trinton.select_logical_ties_by_index([0, 4, 8])),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.patterned_tie_index_selector(
            [1, 2, 3], 4, first=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("ppp"), abjad.Articulation("espressivo")],
        selector=trinton.patterned_tie_index_selector([0], 4, first=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p")],
        selector=trinton.patterned_tie_index_selector([1], 4, first=True, grace=False),
    ),
    library.color_fingerings(
        selector=trinton.patterned_tie_index_selector(
            [1, 2, 3], 4, first=True, grace=False
        ),
        index=0,
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "darksalmon" { slaptongue }""",
        selector=trinton.select_logical_ties_by_index(
            [
                1,
                3,
                5,
                7,
                9,
                11,
            ],
            first=True,
            grace=False,
        ),
        padding=6,
        full_string=True,
        right_padding=2.5,
        tweaks=[r"""- \tweak color #(css-color 'darksalmon)"""],
    ),
    voice=score["bassclarinet voice"],
    preprocessor=trinton.fuse_preprocessor((2, 3)),
)

# percusion 1 music

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 7)),
    evans.RhythmHandler(rmakers.note),
    evans.PitchHandler([[-1, 2]]),
    library.duration_line(),
    library.change_lines(lines=2, clef="percussion"),
    library.boxed_markup(string="Anvils with pipe", site="opening"),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("o<"), abjad.Dynamic("fff")],
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
    voice=score["percussion 1 voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)

# cello 1 and cello 2 music

for voice_name, rotation, ratio in zip(
    ["cello 1 voice", "cello 2 voice"], [0, 1], ["13/1", "11/1"]
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (1, 5)),
        evans.RhythmHandler(
            evans.talea(
                trinton.rotated_sequence(
                    [10, 7],
                    rotation,
                ),
                64,
            )
        ),
        evans.PitchHandler(["ef,"]),
        evans.PitchHandler([ratio], as_ratios=True),
        trinton.force_accidentals_command(
            selector=trinton.logical_ties(first=True, pitched=True)
        ),
        library.duration_line(),
        trinton.attachment_command(
            attachments=[abjad.Dynamic("pp")],
            selector=trinton.select_leaves_by_index([0]),
        ),
        trinton.hooked_spanner_command(
            string=r"""\markup \with-color "darkred" { "flaut. moltissimo" }""",
            selector=trinton.select_leaves_by_index([0, -1]),
            command="One",
            padding=11.5,
            right_padding=0,
            full_string=True,
            tweaks=[r"""- \tweak color #"darkred" """],
        ),
        trinton.spanner_command(
            strings=trinton.rotated_sequence(
                [
                    r"""\markup \with-color "indianred" { "molto pont." }""",
                    r"""\markup \with-color "indianred" { "tast." }""",
                    r"""\markup \with-color "indianred" { "molto pont." }""",
                    r"""\markup \with-color "indianred" { "tast." }""",
                    r"""\markup \with-color "indianred" { "molto pont." }""",
                    r"""\markup \with-color "indianred" { "tast." }""",
                ],
                rotation,
            ),
            selector=trinton.select_logical_ties_by_index(
                [0, 2, 2, 4, 4, 6, 6, 8, 8, 9], first=True, pitched=True
            ),
            style="solid-line-with-arrow",
            padding=13.5,
            full_string=True,
            command="Two",
            tweaks=[r"""- \tweak color #(css-color 'indianred)"""],
        ),
        library.cello_trills(
            initial_width=0.7,
            y_scale=-0.6,
            speed_factor=-0.6,
            selector=trinton.patterned_tie_index_selector(
                [
                    0,
                    1,
                ],
                4,
                first=True,
            ),
        ),
        library.cello_trills(
            initial_width=2.7,
            y_scale=-0.6,
            speed_factor=0.6,
            selector=trinton.patterned_tie_index_selector(
                [2, 3],
                4,
                first=True,
            ),
        ),
        voice=score[voice_name],
        preprocessor=trinton.fuse_preprocessor((5,)),
    )

# cello 3 music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RhythmHandler(evans.talea([-3, 5, -1, 4, -1, 7, -1], 32)),
    evans.PitchHandler(["ef,", "eqf,", "ef,", "eqs,"]),
    library.duration_line(
        selector=trinton.select_logical_ties_by_index([0, -1], pitched=True)
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.BendAfter(-3)],
        selector=trinton.select_logical_ties_by_index(
            [
                1,
            ],
            pitched=True,
            first=True,
            grace=False,
        ),
    ),
    trinton.attachment_command(
        attachments=[
            library.downbow,
            trinton.make_custom_dynamic("sfz mp"),
            abjad.StartHairpin(">o"),
        ],
        selector=trinton.logical_ties(pitched=True, first=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([3, 5, -1]),
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            evans.make_fancy_gliss(
                1,
                1,
                2,
                1,
                1,
                1,
                2,
                1,
                1,
                2,
                1,
                1,
                1,
                1,
                2,
                1,
                2,
                1,
                1,
                2,
            ),
            evans.make_fancy_gliss(
                7,
                5,
                4,
                3,
                2,
                1.5,
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
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, -1], first=True, pitched=True, grace=False
        ),
    ),
    trinton.spanner_command(
        strings=[
            "\skin-default-notehead-markup",
            "\skin-half-diamond-notehead-markup",
        ],
        selector=trinton.select_logical_ties_by_index([1, 4, 4, 5], first=True),
        style="solid-line-with-arrow",
        padding=7,
        full_string=True,
        end_hook=True,
        command="One",
        tweaks=[r"""- \tweak color #(css-color 'darksalmon)"""],
    ),
    trinton.spanner_command(
        strings=[
            "\skin-diamond-notehead-markup",
            "\skin-default-notehead-markup",
        ],
        selector=trinton.select_logical_ties_by_index(
            [-2, -1], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=7,
        full_string=True,
        end_hook=False,
        command="One",
        tweaks=[r"""- \tweak color #(css-color 'darksalmon)"""],
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "indianred" { "molto pont." }""",
            r"""\markup \with-color "indianred" { "ord." }""",
        ],
        selector=trinton.select_logical_ties_by_index([0, 1], first=True, pitched=True),
        style="solid-line-with-arrow",
        padding=5,
        full_string=True,
        command="Two",
        tweaks=[r"""- \tweak color #(css-color 'indianred)"""],
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "indianred" { "molto pont." }""",
            r"""\markup \with-color "indianred" { "ord." }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [4, 5],
            first=True,
        ),
        style="solid-line-with-arrow",
        padding=5,
        full_string=True,
        command="Two",
        tweaks=[r"""- \tweak color #(css-color 'indianred)"""],
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "indianred" { "molto pont." }""",
            r"""\markup \with-color "indianred" { "ord." }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [-2, -1], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=5,
        full_string=True,
        command="Two",
        tweaks=[r"""- \tweak color #(css-color 'indianred)"""],
    ),
    voice=score["cello 3 voice"],
    preprocessor=trinton.fuse_preprocessor((5,)),
)

# trombone music

for voice_name, rotation in zip(["tenortrombone voice", "basstrombone voice"], [1, 0]):
    trinton.make_music(
        lambda _: trinton.select_target(_, (3, 4)),
        evans.RhythmHandler(
            evans.talea(
                trinton.rotated_sequence(
                    [1, -2, 1, -1, 1, -4, 1, -3, 1, -2, 1, -3], rotation
                ),
                32,
            )
        ),
        library.change_lines(lines=1, clef="varpercussion"),
        trinton.attachment_command(
            attachments=[abjad.Articulation("staccato"), abjad.BendAfter(3)],
            selector=trinton.logical_ties(first=True, pitched=True),
        ),
        trinton.linear_attachment_command(
            attachments=[
                abjad.Dynamic("mp"),
                abjad.StartHairpin("--"),
                abjad.StopHairpin(),
            ],
            selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
        ),
        voice=score[voice_name],
        preprocessor=trinton.fuse_preprocessor((2,)),
    )

# percussion 2 music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RhythmHandler(library.marimba_alpha_iv(index=4)),
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
            abjad.Dynamic("mf"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<|"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 0, 1, 10, 10, 11, 19], first=True
        ),
    ),
    library.marimba_tremoli(),
    voice=score["percussion 2 voice"],
    preprocessor=trinton.fuse_preprocessor((5,)),
)

# globals

library.set_all_time_signatures(score=score)

# library.remove_redundant_time_signatures(score=score)

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

library.forbid_break(score=score, measures=[1, 3, 4])

library.write_timestamps(
    global_context=score["Global Context"],
    second_range=(205, 1000),
    measure_range=(1, 7),
)

# cutaway

trinton.whiteout_empty_staves(
    score=score,
    cutaway="blank",
    voice_names=[
        _
        for _ in library.all_voice_names
        if _ != "viola voice" and _ != "viola voice time signatures"
    ],
)

library.blank_measure_by_hand(
    score=score,
    voice_names=["viola voice"],
    measures=[1, 2, 3, 4],
)

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
