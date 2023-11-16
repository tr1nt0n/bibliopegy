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

# 11

score = library.bibliopegy_score([(1, 8) for _ in range(1, 34)])

# music commands

# tape music

for measures in [(1, 2), (11,), (18, 19), (26,)]:
    trinton.make_music(
        lambda _: trinton.select_target(_, measures),
        evans.RhythmHandler(evans.talea([1000], 8)),
        evans.PitchHandler([-1]),
        library.change_lines(lines=2, clef="percussion"),
        trinton.attachment_command(
            attachments=[
                abjad.LilyPondLiteral(
                    [
                        r"\override NoteHead.stencil = #ly:text-interface::print",
                        r"""\override NoteHead.text = \markup \with-color "forestgreen" \override #'(font-name . "Source Han Serif SC Bold") { 是 }""",
                    ],
                    site="before",
                ),
            ],
            selector=trinton.select_leaves_by_index([0]),
        ),
        library.duration_line(color="(css-color 'forestgreen)"),
        voice=score["piano voice"],
        preprocessor=trinton.fuse_preprocessor((7,)),
    )

# viola music

library.write_simultaneous_time_signatures(
    score=score,
    voice_name="viola voice",
    signature_pairs=[(13, 32), (9, 32), (7, 16)],
    measure_range=(2, 10),
)

library.make_metric_music(
    evans.RhythmHandler(evans.talea([2, 8, 1, -2], 32)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["g", ["g", "a,"], ["g", "c"]]),
    library.change_lines(lines=5, clef="altovarC"),
    trinton.beam_groups(
        selector=trinton.ranged_selector(ranges=[range(0, 2), range(3, 5)], nested=True)
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(1, 5)], nested=True),
        zero_padding=True,
    ),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                met_string=library._metronome_marks["1/1"],
                height=5,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            library._viola_processing_markups["2 on"],
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartSlur(),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mp"),
            abjad.StopSlur(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 1, -1, -1], pitched=True),
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "mediumblue" { -45° }""",
            r"""\markup \with-color "mediumblue" { -5° }""",
        ],
        selector=trinton.select_leaves_by_index(
            [0, -1],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=6,
        full_string=True,
        tweaks=[r"""- \tweak color #(css-color 'mediumblue)"""],
    ),
    trinton.notehead_bracket_command(),
    score=score,
    voice_name="viola voice",
    second_range=(2, 10),
    measure_number_range=(1,),
)

library.make_metric_music(
    evans.RhythmHandler(
        evans.tuplet([(6, 4, 1)]),
    ),
    evans.PitchHandler([["g", "c"]]),
    abjad.beam,
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 3)], nested=True),
        zero_padding=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Dots.staff-position = #2", site="before"
            ),
            trinton.make_custom_dynamic("sffz pp"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 1, -1], pitched=True),
    ),
    trinton.spanner_command(
        strings=[
            r"\markup {}",
            r"""\markup \with-color "darkmagenta" { \fontsize #3.5 \override #'(font-name . "ekmelos") \char ##xe222 }""",
        ],
        selector=trinton.select_leaves_by_index([1, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=14.5,
        full_string=True,
        tweaks=[r"- \tweak color #darkmagenta"],
        command="One",
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "mediumblue" { 0° }""",
        selector=trinton.select_leaves_by_index(
            [0, -1],
            pitched=True,
        ),
        padding=12.5,
        full_string=True,
        tweaks=[r"""- \tweak color #(css-color 'mediumblue)"""],
        command="Two",
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "darkred" { norm. }""",
            r"""\markup \with-color "darkred" { scratch }""",
        ],
        selector=trinton.select_leaves_by_index(
            [1, -1],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=10,
        right_padding=-2,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
        command="Three",
    ),
    trinton.notehead_bracket_command(),
    score=score,
    voice_name="viola voice",
    second_range=(2, 10),
    measure_number_range=(2,),
)

library.make_metric_music(
    evans.RhythmHandler(
        trinton.handwrite_nested_tuplets(
            tuplet_ratios=[(6, 5)],
            nested_ratios=[(1, 1, 1, 1, 1), (1, -1, 2, 2, 2, 2, 2)],
            nested_vectors=[0, 1],
            nested_period=2,
        )
    ),
    evans.PitchHandler([["g", "c"]]),
    trinton.beam_groups(
        selector=trinton.ranged_selector(
            ranges=[
                range(0, 12),
            ],
            nested=True,
        ),
        beam_rests=False,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.pleaves(),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin(">"), trinton.make_custom_dynamic("p +")],
        selector=trinton.select_leaves_by_index([0, 5]),
    ),
    trinton.attachment_command(
        attachments=[
            library._viola_processing_markups["2 off"],
        ],
        selector=trinton.select_leaves_by_index([-1]),
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "indianred" { "pont." }""",
            r"""\markup \with-color "indianred" { "tast." }""",
        ],
        selector=trinton.select_leaves_by_index(
            [0, 5, 5, -1],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=16,
        full_string=True,
        end_hook=True,
        tweaks=[r"- \tweak color #(css-color 'indianred)"],
        command="One",
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "darkred" { scratch }""",
            r"""\markup \with-color "darkred" { "molto flaut." }""",
        ],
        selector=trinton.select_leaves_by_index(
            [0, 5, 5, -1],
        ),
        style="solid-line-with-arrow",
        padding=13.5,
        full_string=True,
        end_hook=True,
        tweaks=[r"""- \tweak color #darkred"""],
        command="Two",
    ),
    trinton.notehead_bracket_command(),
    score=score,
    voice_name="viola voice",
    second_range=(2, 10),
    measure_number_range=(3,),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 33)),
    evans.RhythmHandler(evans.talea([6, -2, 6, -1, 3, 4], 8)),
    evans.PitchHandler(trinton.rotated_sequence(pitch.delta_pitches, 3)),
    library.octave_down(selector=trinton.pleaves()),
    library.octave_down(
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False)
    ),
    library.duration_line(),
    trinton.noteheads_only(),
    trinton.invisible_rests(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
            abjad.Dynamic("p"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.StartHairpin("--"),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin()],
        selector=trinton.logical_ties(first=True, pitched=True, grace=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            library._viola_processing_markups["4 on"],
            library._viola_processing_markups["4 off"],
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color #(css-color 'goldenrod) { "senza vib." }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=9,
        right_padding=0,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'goldenrod)"],
        command="One",
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "rosybrown" { "IV" }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=6.5,
        right_padding=0,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'rosybrown)"],
        command="Two",
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "indianred" { "tast." }""",
        selector=trinton.select_leaves_by_index(
            [0, -1],
            pitched=True,
        ),
        padding=4,
        right_padding=0,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'indianred)"],
        command="Three",
    ),
    voice=score["viola voice"],
)

# flute music

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 33)),
    evans.RhythmHandler(evans.talea([1000], 16)),
    evans.PitchHandler(["cs'''"]),
    library.duration_line(),
    library.boxed_markup(string="Piccolo"),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
        ],
        selector=trinton.patterned_leaf_index_selector([0], 5, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.StartHairpin(">"),
        ],
        selector=trinton.patterned_leaf_index_selector([3], 5, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin(), abjad.Dynamic("mf")],
        selector=trinton.select_leaves_by_index([-1], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.Dynamic("p"),
            abjad.Dynamic("p"),
            abjad.Dynamic("mp"),
        ],
        selector=trinton.patterned_leaf_index_selector([3], 5, pitched=True),
    ),
    voice=score["flute voice"],
)

# bass flute music

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 33)),
    evans.RhythmHandler(evans.talea([-5, 7, -7, 9, -5, 4, 8], 16)),
    evans.PitchHandler(
        [_ + 12 for _ in trinton.rotated_sequence(pitch.delta_pitches, 3)]
    ),
    # evans.PitchHandler(trinton.rotated_sequence(pitch.delta_pitches, 3)),
    library.octave_down(selector=trinton.pleaves()),
    library.octave_down(selector=trinton.pleaves()),
    evans.PitchHandler(pitch_list=["95/64", "3/2", "97/64"], as_ratios=True),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    ),
    library.duration_line(),
    trinton.attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
        ],
        selector=trinton.logical_ties(
            first=True, pitched=True, grace=False, exclude=[-1]
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.StopHairpin(),
        ],
        selector=trinton.logical_ties(
            first=True, pitched=True, grace=True, exclude=[-1]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">o"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">o"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_leaves_by_index([2, 2, 7, 7, 15], pitched=True),
    ),
    voice=score["bassflute voice"],
)

# violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 33)),
    evans.RhythmHandler(evans.talea([1000], 16)),
    evans.PitchHandler(["dqf''''"]),
    library.duration_line(),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
        ],
        selector=trinton.patterned_leaf_index_selector([0], 7, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.StartHairpin(">"),
        ],
        selector=trinton.patterned_leaf_index_selector([4], 7, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin(), abjad.Dynamic("f")],
        selector=trinton.select_leaves_by_index([-1], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("mf"),
        ],
        selector=trinton.patterned_leaf_index_selector([4], 7, pitched=True),
    ),
    trinton.ottava_command(
        selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    voice=score["violin voice"],
)

# bass clarinet music

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 33)),
    evans.RhythmHandler(evans.talea([-2, 4, -3, 5, -2, 2, 4], 8)),
    evans.PitchHandler(
        [_ + 14 for _ in trinton.rotated_sequence(pitch.delta_pitches, 3)]
    ),
    # evans.PitchHandler(trinton.rotated_sequence(pitch.delta_pitches, 3)),
    library.octave_down(selector=trinton.pleaves()),
    library.octave_down(
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False)
    ),
    library.octave_down(selector=trinton.pleaves()),
    evans.PitchHandler(pitch_list=["95/64", "3/2", "97/64"], as_ratios=True),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    ),
    library.duration_line(),
    trinton.attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
        ],
        selector=trinton.logical_ties(
            first=True, pitched=True, grace=False, exclude=[-1]
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.StopHairpin(),
        ],
        selector=trinton.logical_ties(
            first=True, pitched=True, grace=True, exclude=[-1]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">o"),
            abjad.Dynamic("p"),
            abjad.StartHairpin(">o"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_leaves_by_index([1, 1, 6, 6, 14], pitched=True),
    ),
    voice=score["bassclarinet voice"],
)

# cello 1 music

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 33)),
    evans.RhythmHandler(evans.talea([-7, 5, -9, 7, -7, 4, 8], 16)),
    evans.PitchHandler(
        [
            evans.ETPitch(
                fundamental="cs",
                repeating_ratio="95/64",
                number_of_divisions=3,
                scale_degree=-1,
            ),
            evans.ETPitch(
                fundamental="fs",
                repeating_ratio="3/2",
                number_of_divisions=3,
                scale_degree=-1,
            ),
            evans.ETPitch(
                fundamental="d'",
                repeating_ratio="97/64",
                number_of_divisions=3,
                scale_degree=-1,
            ),
            evans.ETPitch(
                fundamental="g",
                repeating_ratio="95/64",
                number_of_divisions=3,
                scale_degree=-1,
            ),
        ],
    ),
    trinton.detach_command(
        detachments=[abjad.Markup],
        selector=trinton.logical_ties(pitched=True, grace=False, all_except_first=True),
    ),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    ),
    library.duration_line(),
    trinton.attachment_command(
        attachments=[abjad.Articulation("espressivo")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("p"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 1, 2, 3], pitched=True, first=True, grace=False
        ),
    ),
    voice=score["cello 1 voice"],
)

# cello 2 music

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 33)),
    evans.RhythmHandler(evans.talea([-8, 4, -10, 6, -8, 4, 8], 16)),
    evans.PitchHandler(
        [
            evans.ETPitch(
                fundamental="cs",
                repeating_ratio="95/64",
                number_of_divisions=3,
                scale_degree=-2,
            ),
            evans.ETPitch(
                fundamental="fs",
                repeating_ratio="3/2",
                number_of_divisions=3,
                scale_degree=-2,
            ),
            evans.ETPitch(
                fundamental="d'",
                repeating_ratio="97/64",
                number_of_divisions=3,
                scale_degree=-2,
            ),
            evans.ETPitch(
                fundamental="g",
                repeating_ratio="95/64",
                number_of_divisions=3,
                scale_degree=-2,
            ),
        ],
    ),
    trinton.detach_command(
        detachments=[abjad.Markup],
        selector=trinton.logical_ties(pitched=True, grace=False, all_except_first=True),
    ),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    ),
    library.duration_line(),
    trinton.attachment_command(
        attachments=[abjad.Articulation("espressivo")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("p"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 1, 2, 3], pitched=True, first=True, grace=False
        ),
    ),
    voice=score["cello 2 voice"],
)

# cello 3 music

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 33)),
    evans.RhythmHandler(evans.talea([-3, 3, -4, 4, -3, 2, 4], 8)),
    evans.PitchHandler(trinton.rotated_sequence(pitch.delta_pitches, 3)),
    library.octave_down(selector=trinton.pleaves()),
    library.octave_down(
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False)
    ),
    library.double_octave_down(selector=trinton.pleaves()),
    evans.PitchHandler(
        pitch_list=[
            "25/6",
            "125/64",
            "25/12",
            "125/64",
        ],
        as_ratios=True,
    ),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    ),
    library.duration_line(),
    trinton.attachment_command(
        attachments=[
            abjad.StartHairpin("--"),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin()],
        selector=trinton.logical_ties(first=True, pitched=True, grace=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("p"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 1, 2, 3], pitched=True, first=True, grace=False
        ),
    ),
    voice=score["cello 3 voice"],
)

# globals

library.set_all_time_signatures(score=score, exclude_viola=False)

# library.remove_redundant_time_signatures(score=score)

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

library.silence(
    score=score,
    measures=[1, 11],
    timestamps=[r"1\'39\" - 1\'44\"", r"1\'54\" - 1\'57\""],
)

library.write_timestamps(
    global_context=score["Global Context"],
    second_range=(105, 1000),
    measure_range=(2, 10),
)

library.write_timestamps(
    global_context=score["Global Context"],
    second_range=(118, 1000),
    measure_range=(12, 33),
)

# library.forbid_break(score=score, measures=[3, 4, 8, 9, 10, 11, 12])


# cutaway

trinton.whiteout_empty_staves(
    score=score,
    cutaway="blank",
    voice_names=[_ for _ in library.all_voice_names if _ != "viola voice"],
    last_segment=True,
)

library.blank_measure_by_hand(
    score=score,
    voice_names=["viola voice"],
    measures=[1, 11, 18, 19, 26],
)

# library.blank_measure_by_hand(
#     score=score,
#     voice_names=["viola voice temp"],
#     measures=[
#         13,
#         14,
#         15,
#         16,
#         17,
#         18,
#         19,
#         20,
#         21,
#         22,
#     ],
# )


# parts

trinton.extract_parts(score)

# trinton.make_sc_file(score=score, tempo=((1, 4), 30), current_directory="/Users/trintonprater/scores/bibliopegy/bibliopegy/sections/24",)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/sections/24",
    build_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/build",
    segment_name="24",
    includes=[
        "/Users/trintonprater/scores/bibliopegy/bibliopegy/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
