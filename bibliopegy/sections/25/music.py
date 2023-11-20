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

score = library.bibliopegy_score([(1, 8) for _ in range(1, 9)])

# pre globals

for voice_name in library.all_voice_names:
    library.write_simultaneous_time_signatures(
        score=score,
        voice_name=voice_name,
        signature_pairs=[(4, 8), (4, 8)],
        measure_range=(1, 8),
        reset=False,
    )

    beginning_literals = [
        abjad.LilyPondLiteral(
            r"""\once \override Staff.BarLine.glyph-name = ".|:" """, site="before"
        ),
        abjad.LilyPondLiteral(
            r"""\once \override Staff.BarLine.transparent = ##f""", site="before"
        ),
        abjad.BarLine(".|:", site="before"),
    ]

    if voice_name != "viola voice":
        for literal in [
            abjad.LilyPondLiteral(
                r"\override Staff.BarLine.bar-extent = #'(-2 . 2)", site="before"
            ),
            abjad.LilyPondLiteral(r"\revert Staff.Dots.stencil", site="before"),
            abjad.LilyPondLiteral(r"\revert Staff.Flag.stencil", site="before"),
            abjad.LilyPondLiteral(
                r"\revert Staff.NoteHead.duration-log", site="before"
            ),
            abjad.LilyPondLiteral(
                r"\override Staff.Rest.transparent = ##f", site="before"
            ),
            abjad.LilyPondLiteral(r"\revert Staff.Stem.stencil", site="before"),
            abjad.LilyPondLiteral(r"\revert Staff.Tie.stencil", site="before"),
            abjad.LilyPondLiteral(
                r"\revert Staff.TimeSignature.stencil", site="before"
            ),
            abjad.LilyPondLiteral(
                r"\revert Staff.TupletBracket.stencil", site="before"
            ),
            abjad.LilyPondLiteral(r"\revert Staff.TupletNumber.stencil", site="before"),
        ]:
            beginning_literals.append(literal)

    for literal in beginning_literals:
        abjad.attach(
            literal, abjad.select.leaf(score[f"{voice_name} time signatures"], 0)
        )

        abjad.attach(literal, abjad.select.leaf(score[voice_name], 0))

    ending_literals = [
        abjad.LilyPondLiteral(
            r"\once \override Staff.TimeSignature.stencil = ##f", site="before"
        ),
        abjad.LilyPondLiteral(
            r"""\once \override Staff.BarLine.glyph-name = "|" """,
            site="before",
        ),
        abjad.LilyPondLiteral(
            r"""\once \override Staff.BarLine.glyph-name = ":|." """, site="after"
        ),
        abjad.LilyPondLiteral(
            r"""\once \override Staff.BarLine.transparent = ##f""", site="after"
        ),
    ]

    if voice_name != "viola voice":

        for literal in [
            abjad.LilyPondLiteral(
                r"\revert Staff.BarLine.bar-extent", site="absolute_after"
            ),
            abjad.LilyPondLiteral(
                r"\override Staff.Dots.stencil = ##f", site="absolute_after"
            ),
            abjad.LilyPondLiteral(
                r"\override Staff.Flag.stencil = ##f", site="absolute_after"
            ),
            abjad.LilyPondLiteral(
                r"\override Staff.NoteHead.duration-log = 2", site="absolute_after"
            ),
            abjad.LilyPondLiteral(
                r"\override Staff.Rest.transparent = ##t", site="absolute_after"
            ),
            abjad.LilyPondLiteral(
                r"\override Staff.Stem.stencil = ##f", site="absolute_after"
            ),
            abjad.LilyPondLiteral(
                r"\override Staff.Tie.stencil = ##f", site="absolute_after"
            ),
            abjad.LilyPondLiteral(
                r"\override Staff.TimeSignature.stencil = ##f", site="before"
            ),
            abjad.LilyPondLiteral(
                r"\override Staff.TupletBracket.stencil = ##f", site="absolute_after"
            ),
            abjad.LilyPondLiteral(
                r"\override Staff.TupletNumber.stencil = ##f", site="absolute_after"
            ),
        ]:
            ending_literals.append(literal)

    for literal in ending_literals:
        abjad.attach(
            literal, abjad.select.leaf(score[f"{voice_name} time signatures"], -1)
        )

        abjad.attach(literal, abjad.select.leaf(score[voice_name], -1))

# music commands

# tape music

library.make_metric_music(
    evans.RhythmHandler(evans.talea([1000], 8)),
    evans.PitchHandler(pitch_list=[-1]),
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
    library.duration_line(color="(css-color 'forestgreen)", viola=True),
    score=score,
    voice_name="piano voice",
    second_range=(1, 8),
    measure_number_range=(1, 2),
    preprocessor=trinton.fuse_preprocessor((2,)),
)

# viola voice

library.make_metric_music(
    evans.RhythmHandler(evans.talea([1], 32, extra_counts=[2])),
    evans.PitchHandler([[-5, -1], [2, 5]]),
    library.change_lines(lines=4, clef="varpercussion"),
    abjad.beam,
    trinton.linear_attachment_command(
        attachments=[
            library._viola_processing_markups["3 on"],
            abjad.Dynamic("mf"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
            library._viola_processing_markups["3 off"],
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1, -1], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "indianred" { "pont." }""",
        selector=trinton.select_leaves_by_index(
            [0, -1],
            pitched=True,
        ),
        padding=5.5,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'indianred)"],
        command="One",
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "darkred" { "molto flaut." }""",
        selector=trinton.select_leaves_by_index(
            [0, -1],
        ),
        padding=3.5,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
        command="Two",
    ),
    trinton.notehead_bracket_command(),
    score=score,
    voice_name="viola voice",
    second_range=(1, 8),
    measure_number_range=(1, 2),
)

# bass clarinet music

library.make_metric_music(
    evans.RhythmHandler(evans.talea([1], 2)),
    evans.PitchHandler(["e", "gqf"]),
    library.duration_line(viola=True),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.Articulation(">"),
                trinton.make_custom_dynamic("sfffz mf"),
                abjad.StartHairpin(">"),
                abjad.Dynamic("p"),
            ]
        ),
        selector=trinton.select_leaves_by_index([0, 0, 0, 1, 2, 2, 2, -1]),
    ),
    score=score,
    voice_name="bassclarinet voice",
    second_range=(1, 8),
    measure_number_range=(1, 2),
)

# flute music

library.make_metric_music(
    evans.RhythmHandler(
        evans.talea(
            [
                8,
                2,
                2,
                -2,
                12,
                2,
                1,
                5,
            ],
            32,
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    abjad.beam,
    score=score,
    voice_name="flute voice",
    second_range=(1, 8),
    measure_number_range=(1, 2),
)

contents = abjad.Container(
    rmakers.talea(
        [(5, 16)],
        [
            1,
        ],
        16,
    ),
)
trinton.treat_tuplets()(contents)
contents = abjad.mutate.eject_contents(contents)

trinton.on_beat_grace_container(
    contents=contents,
    anchor_voice_selection=abjad.select.logical_tie(score["flute voice"], 0),
    leaf_duration=abjad.Duration((1, 40)),
    name="flute graces",
)

library.make_metric_music(
    trinton.pitch_with_selector_command(
        pitch_list=trinton.rotated_sequence(pitch.delta_pitches, 6),
        selector=trinton.logical_ties(grace=False),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["g'", "d'''", "g'''", "b'''"],
        selector=trinton.logical_ties(grace=True),
    ),
    library.octave_up(
        selector=trinton.select_logical_ties_by_index(
            [1, 2, 4], pitched=True, grace=False
        )
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_leaves_by_index([1, 2, 3], grace=True),
    ),
    trinton.ottava_command(selector=trinton.select_leaves_by_index([1, 3], grace=True)),
    trinton.linear_attachment_command(
        attachments=[abjad.StartSlur(), abjad.StopSlur()],
        selector=trinton.select_leaves_by_index([-3, -1]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book Italic") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #1 \box { "Flute ( do not play first repetition )" }""",
            ),
            trinton.make_custom_dynamic("sfffz mf"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.Articulation("tenuto"),
            abjad.Articulation(">"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 0, 1, 2, 2, 3, 4, 5, 5, 6, 6, -1], pitched=True, grace=False
        ),
    ),
    trinton.tremolo_command(selector=trinton.pleaves(grace=False, exclude=[0, 1, 2])),
    score=score,
    voice_name="flute voice",
    second_range=(1, 8),
    measure_number_range=(1, 2),
)

# bass flute music

library.make_metric_music(
    evans.RhythmHandler(
        evans.talea(
            [
                2,
                2,
                1,
                1,
                1,
                3,
                3,
                2,
                1,
                1000,
            ],
            16,
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.beam_durations(
        divisions=[(4, 8), (4, 8)], beam_rests=False, preprolated=True
    ),
    score=score,
    voice_name="bassflute voice",
    second_range=(1, 8),
    measure_number_range=(1, 2),
)

contents = abjad.Container(
    rmakers.talea(
        [(5, 16)],
        [
            1,
        ],
        16,
    ),
)
trinton.treat_tuplets()(contents)
contents = abjad.mutate.eject_contents(contents)

trinton.on_beat_grace_container(
    contents=contents,
    anchor_voice_selection=abjad.select.logical_tie(score["bassflute voice"], 1),
    leaf_duration=abjad.Duration((1, 40)),
    name="bassflute graces",
)

library.make_metric_music(
    trinton.pitch_with_selector_command(
        pitch_list=trinton.rotated_sequence(pitch.delta_pitches, 40),
        selector=trinton.logical_ties(grace=False),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["f''"],
        selector=trinton.select_logical_ties_by_index(
            [-4, -3, -2, -1], grace=False, pitched=True
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["af'", "ef'''", "af'''", "c''''"],
        selector=trinton.logical_ties(grace=True),
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_leaves_by_index([1, 2, 3], grace=True),
    ),
    trinton.ottava_command(selector=trinton.select_leaves_by_index([1, 3], grace=True)),
    trinton.attachment_command(
        attachments=[abjad.Articulation("espressivo")],
        selector=trinton.select_leaves_by_index([0, 1], grace=False),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato"), abjad.Articulation("marcato")],
        selector=trinton.select_leaves_by_index([2, 3, 4], grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.Dynamic("ff"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 1, 3, 3, 5, 6, 7, 7, 8, 8, -1], pitched=True, grace=False
        ),
    ),
    trinton.tremolo_command(
        selector=trinton.select_leaves_by_index([0, -4], grace=False)
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(10, 16)], nested=True),
        zero_padding=True,
        no_ties=True,
    ),
    score=score,
    voice_name="bassflute voice",
    second_range=(1, 8),
    measure_number_range=(1, 2),
)

# violin music

library.make_metric_music(
    evans.RhythmHandler(evans.talea([1], 2)),
    evans.PitchHandler(["d''", "e,"]),
    evans.PitchHandler(
        [
            ["4/3", "4/6"],
            ["9/2", "9/1"],
        ],
        as_ratios=True,
    ),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("sffz pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                1,
            ]
        ),
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "darkred" { "flaut. moltiss." }""",
            library.return_fractional_scratch_markup("1 4"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
            ],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=11,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
        command="Three",
    ),
    trinton.tremolo_command(selector=trinton.select_leaves_by_index([0])),
    score=score,
    voice_name="violin voice",
    second_range=(1, 8),
    measure_number_range=(1, 2),
)

# percussion 1 music

library.make_metric_music(
    evans.RhythmHandler(evans.tuplet([(-3, 1, -1), (-3, 1, -3)])),
    trinton.call_rmaker(
        rmaker=rmakers.force_augmentation,
        selector=trinton.select_tuplets_by_index([-1]),
    ),
    evans.GraceHandler(
        boolean_vector=[1],
        gesture_lengths=[1],
        remove_skips=True,
        name="Percussion Graces",
    ),
    evans.PitchHandler(pitch_list=[-5, -1]),
    library.change_lines(
        lines=4, clef="percussion", selector=trinton.select_leaves_by_index([0])
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book Italic") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #1 \box { \column { \line { "1. Bow Snare Drum on right side of Fishing Line" } \line { "2. Bow Snare Drum on left side of Fishing Line" } \line { "3. Strike Snare Drum on Cymbal" } \line { "4. Strike Timpani on Head" } } }""",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("marcato"),
        ],
        selector=trinton.logical_ties(pitched=True, grace=False, first=True),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.pleaves(),
    ),
    trinton.notehead_bracket_command(),
    evans.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(evans.talea([1000], 32, extra_counts=[2])),
        direction=abjad.UP,
        voice_name="snare voice",
    ),
    score=score,
    voice_name="percussion 1 voice",
    second_range=(1, 8),
    measure_number_range=(1, 2),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 8)),
    evans.RhythmHandler(evans.talea([1], 32, extra_counts=[1])),
    trinton.force_rest(selector=trinton.select_leaves_by_index([10, 24])),
    evans.PitchHandler([2, 5]),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                trinton.make_custom_dynamic("sfffz pp"),
                abjad.StartHairpin("<"),
                abjad.Dynamic("f"),
                abjad.StartHairpin(">"),
                abjad.Dynamic("p"),
            ]
        ),
        selector=trinton.select_leaves_by_index([0, 0, 10, 11, 16, 17, 17, 24, 25, -1]),
        direction=abjad.DOWN,
    ),
    abjad.beam,
    trinton.notehead_bracket_command(),
    voice=score["snare voice"],
    preprocessor=trinton.fuse_preprocessor((4,)),
)

# cello 1 music

library.make_metric_music(
    evans.RhythmHandler(evans.talea([1], 2)),
    evans.PitchHandler(["d,", "e,"]),
    evans.PitchHandler(
        [
            ["72/11", "36/11"],
            ["85/16", "85/32"],
        ],
        as_ratios=True,
    ),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("tenorvarC"),
            trinton.make_custom_dynamic("sffz pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                0,
                1,
            ]
        ),
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "darkred" { "flaut. moltiss." }""",
            library.return_fractional_scratch_markup("1 4"),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 1],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=12,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
        command="Three",
    ),
    trinton.tremolo_command(selector=trinton.select_leaves_by_index([0])),
    score=score,
    voice_name="cello 1 voice",
    second_range=(1, 8),
    measure_number_range=(1, 2),
)

# cello 2 music

library.make_metric_music(
    evans.RhythmHandler(evans.talea([1], 2)),
    evans.PitchHandler(["d", "e"]),
    evans.PitchHandler(
        [
            ["3/1", "3/2"],
            ["11/8", "11/4"],
        ],
        as_ratios=True,
    ),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("tenorvarC"),
            trinton.make_custom_dynamic("sffz pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                0,
                1,
            ]
        ),
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "darkred" { "flaut. moltiss." }""",
            library.return_fractional_scratch_markup("1 4"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
            ],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=12,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
        command="Three",
    ),
    trinton.tremolo_command(selector=trinton.select_leaves_by_index([0])),
    score=score,
    voice_name="cello 2 voice",
    second_range=(1, 8),
    measure_number_range=(1, 2),
)

# cello 3 music

library.make_metric_music(
    evans.RhythmHandler(evans.talea([1], 2)),
    evans.PitchHandler(["d,", "e,"]),
    evans.PitchHandler(
        [
            ["15/8", "15/4"],
            ["13/8", "13/4"],
        ],
        as_ratios=True,
    ),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            trinton.make_custom_dynamic("sffz pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                0,
                1,
            ]
        ),
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "darkred" { "flaut. moltiss." }""",
            library.return_fractional_scratch_markup("1 4"),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 1],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=12,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
        command="Three",
    ),
    trinton.tremolo_command(selector=trinton.select_leaves_by_index([0])),
    score=score,
    voice_name="cello 3 voice",
    second_range=(1, 8),
    measure_number_range=(1, 2),
)

# percussion 2 music

library.make_metric_music(
    evans.RhythmHandler(evans.talea([1], 2)),
    evans.PitchHandler([["d,", "d", "d'", "d''"], ["e,", "e", "e'", "e''"]]),
    library.duration_line(viola=True),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")], selector=trinton.select_leaves_by_index([0])
    ),
    library.boxed_markup(string="Marimba", site="opening"),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.Articulation(">"),
                trinton.make_custom_dynamic("sfffz mf"),
                abjad.StartHairpin(">"),
                abjad.Dynamic("p"),
            ]
        ),
        selector=trinton.select_leaves_by_index([0, 0, 0, 1, 2, 2, 2, -1]),
    ),
    trinton.tremolo_command(),
    score=score,
    voice_name="percussion 2 voice",
    second_range=(1, 8),
    measure_number_range=(1, 2),
)

# post globals

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #8 \box { ×9 }""",
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 { " 2\'20\" - 3\'32\" " }"""
            ),
            library.metronome_markups(
                met_string=library._metronome_marks["1/1"],
                height=0,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

# library.remove_redundant_time_signatures(score=score)

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)


# library.forbid_break(score=score, measures=[3, 4, 8, 9, 10, 11, 12])


# cutaway

# trinton.whiteout_empty_staves(
#     score=score,
#     cutaway="blank",
#     voice_names=[_ for _ in library.all_voice_names if _ != "viola voice"],
#     last_segment=True,
# )

for voice_name in ["tenortrombone voice", "basstrombone voice"]:
    library.blank_measure_by_hand(
        score=score,
        voice_names=[voice_name],
        measures=[1, 2, 3, 4, 5, 6, 7, 8],
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
    segment_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/sections/25",
    build_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/build",
    segment_name="25",
    includes=[
        "/Users/trintonprater/scores/bibliopegy/bibliopegy/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
