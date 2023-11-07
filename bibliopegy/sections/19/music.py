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

score = library.bibliopegy_score([(1, 8) for _ in range(1, 19)])

# music commands

# tape music

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 17)),
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
    preprocessor=trinton.fuse_preprocessor((5,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (18,)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    evans.PitchHandler([-1]),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\override NoteHead.stencil = #ly:text-interface::print",
                    r"""\override NoteHead.text = \markup \with-color "deeppink" { P }""",
                ],
                site="before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    library.duration_line(color="(css-color 'deeppink)"),
    voice=score["piano voice"],
)

# viola music

library.write_simultaneous_time_signatures(
    score=score,
    voice_name="viola voice",
    signature_pairs=[(3, 8), (5, 32), (3, 32)],
    measure_range=(13, 17),
    reset=False,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 12)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    evans.PitchHandler(["dqs'''"]),
    library.change_lines(lines=5, clef="altovarC"),
    library.duration_line(),
    trinton.noteheads_only(),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_logical_ties_by_index([0], first=True),
    ),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.linear_attachment_command(
        attachments=[
            evans.make_fancy_gliss(
                1,
                1,
                1,
                1,
                1,
                1,
                2,
                1,
                1,
                1,
                1,
                1,
                2,
                1,
                1,
                1,
                1,
                1,
                1,
                2,
                1,
                1,
                1,
                1,
                2,
                1,
                1,
                2,
                1,
                2,
                1,
                1,
                1,
                1,
                2,
            ),
            library._viola_processing_markups["1 on"],
            library._viola_processing_markups["1 off"],
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string="""\markup \with-color "darksalmon" { \musicglyph "noteheads.s0harmonic" "  11° / A3 ( I )" }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=9.5,
        right_padding=0,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'darksalmon)"],
        command="One",
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "darkred" { "flaut. moltiss." }""",
            library.return_fractional_scratch_markup("2 3", abbreviated=True),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=6.5,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
        command="Two",
    ),
    voice=score["viola voice"],
)

library.make_metric_music(
    evans.RhythmHandler(library.viola_ii_rhythm(index=5)),
    trinton.notehead_bracket_command(),
    score=score,
    voice_name="viola voice",
    second_range=(13, 17),
    measure_number_range=(1, 3),
)

library.make_metric_music(
    library.pitch_viola_ii(strings="III + IV", index=3),
    trinton.pitch_with_selector_command(
        pitch_list=[["g", "a,"]],
        selector=trinton.select_logical_ties_by_index([-1], grace=False, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Glissando(zero_padding=True),
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
        selector=trinton.select_leaves_by_index([0, 3]),
    ),
    trinton.attachment_command(
        attachments=[
            library.upbow,
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("marcato"),
        ],
        selector=trinton.select_leaves_by_index([-4, -3, -2, -1]),
    ),
    trinton.beam_groups(
        selector=trinton.ranged_selector(ranges=[range(0, 4), range(4, 8)], nested=True)
    ),
    trinton.linear_attachment_command(
        attachments=[
            library._viola_processing_markups["2 on"],
            trinton.make_custom_dynamic("sfffz p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ffff"),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 0, 0, 1],
            pitched=True,
        ),
    ),
    trinton.spanner_command(
        strings=library.return_fraction_string_list([(5, 7), (2, 7), (0, 7)]),
        selector=trinton.select_leaves_by_index(
            [0, 1, 1, 3],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=14,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
    ),
    score=score,
    voice_name="viola voice",
    second_range=(13, 17),
    measure_number_range=(1,),
)

library.make_metric_music(
    library.pitch_viola_ii(strings="I + II", index=5),
    trinton.force_accidentals_command(
        selector=trinton.select_leaves_by_index([0], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.logical_ties(pitched=True, first=True, grace=False),
    ),
    abjad.beam,
    score=score,
    voice_name="viola voice",
    second_range=(13, 17),
    measure_number_range=(2,),
)

library.make_metric_music(
    evans.PitchHandler(["c'", "af", "c'", "af", "df'"]),
    trinton.linear_attachment_command(
        attachments=[abjad.StartSlur(), abjad.StopSlur()],
        selector=trinton.select_leaves_by_index([1, 3]),
    ),
    abjad.beam,
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "rosybrown" { III }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=8.5,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'rosybrown)"],
        command="One",
    ),
    trinton.hooked_spanner_command(
        string=library.return_fractional_scratch_markup("1 3", abbreviated=True),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=5,
        full_string=True,
        tweaks=[r"- \tweak color #darkred"],
        command="Two",
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\override Staff.Stem.direction = #DOWN", site="before"
            ),
            abjad.LilyPondLiteral(r"\revert Staff.Stem.direction", site="before"),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TupletBracket.direction = #DOWN", site="before"
            ),
        ],
        selector=abjad.select.tuplets,
    ),
    score=score,
    voice_name="viola voice",
    second_range=(13, 17),
    measure_number_range=(3,),
)

# flute music, bass flute music, violin music

for voice_name, pitch_index, extra_counts in zip(
    ["flute voice", "bassflute voice", "violin voice"],
    [0, 1, 2],
    [[0, 1], [1, 0], [1, 2]],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (14, 17)),
        evans.RhythmHandler(
            evans.talea(
                [
                    1,
                ],
                32,
                extra_counts=extra_counts,
            )
        ),
        evans.PitchHandler(
            pitch_list=trinton.rotated_sequence(pitch.delta_pitches, pitch_index)
        ),
        library.octave_up(
            selector=trinton.pleaves(),
        ),
        library.duration_line(),
        trinton.linear_attachment_command(
            attachments=[
                abjad.LilyPondLiteral(r"\slurDashed", site="before"),
                abjad.LilyPondLiteral(r"\slurSolid", site="after"),
            ],
            selector=trinton.select_leaves_by_index(
                [
                    0,
                    -1,
                ]
            ),
        ),
        trinton.linear_attachment_command(
            attachments=[
                abjad.StartSlur(),
                abjad.StartHairpin("o<"),
                abjad.Dynamic("ffff"),
                abjad.StopSlur(),
            ],
            selector=trinton.select_leaves_by_index(
                [
                    0,
                    0,
                    -1,
                    -1,
                ],
                pitched=True,
            ),
        ),
        voice=score[voice_name],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (14, 17)),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "darkred" { "flaut. moltiss." }""",
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                -1,
            ],
            first=True,
            pitched=True,
        ),
        padding=10,
        full_string=True,
        right_padding=0,
        tweaks=[r"""- \tweak color #darkred"""],
    ),
    voice=score["violin voice"],
)

# bass clarinet music

trinton.make_music(
    lambda _: trinton.select_target(_, (14, 17)),
    evans.RhythmHandler(evans.talea([-1, 1000], 16)),
    evans.PitchHandler([library._bass_clarinet_multiphonics[1][0]]),
    library.duration_line(),
    trinton.hooked_spanner_command(
        string=library._bass_clarinet_multiphonics[1][1],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=9,
        right_padding=0,
        full_string=True,
        tweaks=[r"""- \tweak color #(css-color 'seagreen) """],
        command="One",
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "darkred" { "norm." }""",
            r"""\markup \with-color "darkred" { "overblow" }""",
        ],
        selector=trinton.select_leaves_by_index([0, -2, -2, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=3.5,
        right_padding=0,
        end_hook=True,
        full_string=True,
        tweaks=[r"- \tweak color #darkred"],
        command="Two",
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("o<"), abjad.Dynamic("ffff")],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["bassclarinet voice"],
)

# percussion 1 music

trinton.make_music(
    lambda _: trinton.select_target(_, (16, 17)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    library.duration_line(),
    library.change_lines(
        lines=1,
        clef="percussion",
    ),
    library.boxed_markup(string="Timpani, one hand on Cymbal, the other on the Head"),
    trinton.linear_attachment_command(
        attachments=[
            evans.make_fancy_gliss(
                7,
                7,
                7,
                7,
                7,
            ),
            abjad.Dynamic("ffff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1]),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "darkmagenta" { \fontsize #3.5 \override #'(font-name . "ekmelos") \char ##xe222 }""",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=9,
        right_padding=1,
        full_string=True,
        tweaks=[r"- \tweak color #darkmagenta"],
    ),
    voice=score["percussion 1 voice"],
)

# celli music

for voice_name, ratio, padding in zip(
    ["cello 1 voice", "cello 2 voice", "cello 3 voice"],
    ["13/1", "11/1", "9/1"],
    [9.5, 9, 7],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (13, 17)),
        evans.RhythmHandler(
            evans.talea(
                [1000],
                8,
            )
        ),
        evans.PitchHandler(["ef,"]),
        evans.PitchHandler(
            [
                ratio,
            ],
            as_ratios=True,
        ),
        library.change_lines(lines=5, clef="treble"),
        trinton.force_accidentals_command(
            selector=trinton.logical_ties(first=True, pitched=True)
        ),
        library.duration_line(),
        trinton.spanner_command(
            strings=[
                r"""\markup \with-color "darkred" { "flaut. moltiss." }""",
                library.return_fractional_scratch_markup("1 3", abbreviated=True),
            ],
            selector=trinton.select_leaves_by_index([0, -1], pitched=True),
            style="solid-line-with-arrow",
            padding=padding,
            full_string=True,
            tweaks=[r"""- \tweak color #darkred"""],
        ),
        trinton.linear_attachment_command(
            attachments=[
                trinton.make_custom_dynamic("sfz pp"),
                abjad.StartHairpin("<"),
                abjad.Dynamic("ffff"),
            ],
            selector=trinton.select_leaves_by_index([0, 0, -1]),
        ),
        voice=score[voice_name],
    )

# tenor trombone music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 12)),
    evans.RhythmHandler(evans.talea([3, -2, 4, -5, 10], 16)),
    evans.PitchHandler(["c,"]),
    trinton.change_notehead_command(
        notehead="lowest",
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    library.duration_line(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
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
                0,
                0,
                0,
                0,
                0,
                1,
                2,
                3,
                4,
                5,
                5,
                5,
                5,
                5,
                5,
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, -1], first=True, pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.Dynamic("ff"),
                abjad.StartHairpin("--"),
                abjad.StartHairpin(">o"),
                abjad.StopHairpin(),
            ]
        ),
        selector=trinton.select_leaves_by_index([0, 0, 1, 2, 5, 5, 6, 8]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([-6, -3, -3, -1], pitched=True),
    ),
    voice=score["tenortrombone voice"],
)

# bass trombone music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 12)),
    evans.RhythmHandler(evans.talea([3, -7, 3, -3, 10], 16)),
    evans.PitchHandler(["c,"]),
    trinton.change_notehead_command(
        notehead="lowest",
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    library.duration_line(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
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
                0,
                0,
                0,
                0,
                0,
                1,
                2,
                3,
                4,
                5,
                5,
                5,
                5,
                5,
                5,
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, -1], first=True, pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.Dynamic("ff"),
                abjad.StartHairpin("--"),
                abjad.StartHairpin(">o"),
                abjad.StopHairpin(),
            ]
        ),
        selector=trinton.select_leaves_by_index([0, 0, 1, 2, 3, 3, 4, 5], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([-5, -2, -2, -1], pitched=True),
    ),
    voice=score["basstrombone voice"],
)

for voice_name in ["tenortrombone voice", "basstrombone voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (17,)),
        evans.RhythmHandler(evans.talea([1000], 8)),
        library.duration_line(),
        library.change_lines(lines=1, clef="varpercussion"),
        trinton.linear_attachment_command(
            attachments=[
                evans.make_fancy_gliss(
                    2,
                    2,
                    2,
                    2,
                    2,
                    2,
                    2,
                    2,
                    2,
                    2,
                    2,
                ),
                abjad.Dynamic("ffff"),
                abjad.StartHairpin("--"),
                abjad.StopHairpin(),
            ],
            selector=trinton.select_leaves_by_index([0, 0, 0, -1]),
        ),
        voice=score[voice_name],
    )

# percussion 2 music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 12)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (1, 1, 1, 1, 1, 1, 1),
                (1,),
                (1,),
                (1,),
                (1, 1, 1, 1, 1, 1),
                (1,),
                (1,),
                (1, 1),
                (1, 1, 1),
                (1, 1, 1, 1, 1),
                (1, 1, 1, 1, 1, 1, 1),
                (1, 1, 1, 1, 1, 1, 1, 1, 1),
            ]
        )
    ),
    evans.PitchHandler(trinton.rotated_sequence(pitch.glockenspiel_pitches, 5)),
    trinton.pitch_with_selector_command(
        pitch_list=[11], selector=trinton.select_leaves_by_index([8, 9])
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[8], selector=trinton.select_leaves_by_index([17])
    ),
    library.octave_up(
        selector=trinton.select_logical_ties_by_index(
            [0, 2, 4, 5, 14, 15, 25, 30, 31, 37, 38, 39, 40, 41, 42, 43], grace=False
        )
    ),
    library.octave_down(
        selector=trinton.select_logical_ties_by_index([10, 20, 23, 35], grace=False)
    ),
    library.duration_line(
        selector=trinton.select_logical_ties_by_index(
            [7, 8, 9, 16, 17, 18, 19], grace=False
        )
    ),
    trinton.ficta_command(
        selector=trinton.select_logical_ties_by_index(
            [0, 6, 10, 15, 20, -1], first=True, grace=False
        )
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartSlur(),
                abjad.StopSlur(),
            ]
        ),
        selector=trinton.select_logical_ties_by_index(
            [0, 6, 10, 15, 20, -1], first=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("treble"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
            trinton.make_custom_dynamic("sfff"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("ff"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
            abjad.LaissezVibrer(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 0, 6, 7, 10, 10, 15, 16, 17, 18, 18, 20, 20, 31, 31, -1, -1],
            first=True,
            grace=False,
        ),
    ),
    library.boxed_markup(string="Glockenspiel"),
    voice=score["percussion 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (14, 17)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    evans.PitchHandler(["ef,"]),
    library.duration_line(),
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
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("ffff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    library.boxed_markup(string="Marimba"),
    voice=score["percussion 2 voice"],
)

# globals

library.set_all_time_signatures(score=score, exclude_viola=False)

# library.remove_redundant_time_signatures(score=score)

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

library.write_timestamps(
    global_context=score["Global Context"],
    second_range=(379, 1000),
    measure_range=(1, 17),
)

library.silence(score=score, measures=[18], timestamps=[r"6\'36\" - 6\'45\""])

library.forbid_break(score=score, measures=[8, 9, 10, 11])

for voice_name in library.all_voice_names_include_time_signature_context:
    trinton.make_music(
        lambda _: trinton.select_target(_, (18,)),
        trinton.attachment_command(
            attachments=[
                abjad.LilyPondLiteral(
                    r"\once \override Staff.BarLine.transparent = ##f", site="after"
                ),
                abjad.LilyPondLiteral(
                    r"""\once \override Staff.BarLine.glyph-name = "||" """,
                    site="absolute_after",
                ),
            ],
            selector=trinton.select_leaves_by_index([-1]),
        ),
        voice=score[voice_name],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (18,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\pageBreak", site="after"),
        ],
        selector=trinton.select_leaves_by_index([-1]),
    ),
    voice=score["Global Context"],
)

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
    measures=[
        1,
        2,
        3,
        4,
        5,
        6,
        7,
        8,
        9,
        18,
    ],
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

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/sections/19",
    build_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/build",
    segment_name="19",
    includes=[
        "/Users/trintonprater/scores/bibliopegy/bibliopegy/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
