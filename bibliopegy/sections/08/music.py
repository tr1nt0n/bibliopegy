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

score = library.bibliopegy_score([(1, 8) for _ in range(1, 10)])

# music commands

# tape music


trinton.make_music(
    lambda _: trinton.select_target(_, (1, 9)),
    evans.RhythmHandler(evans.talea([6, 3], 8)),
    evans.PitchHandler([-5]),
    library.change_lines(lines=4, clef="percussion"),
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
                [6, -3],
                8,
            ),
        ),
        direction=abjad.UP,
        voice_name="beta voice",
    ),
    voice=score["piano voice"],
    preprocessor=trinton.fuse_preprocessor((9,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 9)),
    library.duration_line(color="darkred", sustained=True),
    voice=score["piano voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 9)),
    evans.PitchHandler([-1]),
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
        selector=trinton.select_leaves_by_index([0]),
    ),
    evans.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(
            evans.talea(
                [
                    6,
                    -3,
                ],
                8,
            ),
        ),
        direction=abjad.UP,
        voice_name="gamma voice",
    ),
    voice=score["beta voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 9)),
    library.duration_line(color="(css-color 'indianred)"),
    voice=score["beta voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 9)),
    evans.PitchHandler([4]),
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
    library.duration_line(color="(css-color 'darksalmon)"),
    voice=score["gamma voice"],
)

# viola music

library.write_simultaneous_time_signatures(
    score=score,
    voice_name="viola voice",
    signature_pairs=[(7, 32), (5, 16), (7, 32), (3, 8)],
    measure_range=(1, 9),
    reset=False,
)

library.make_metric_music(
    library.viola_ii_rhythm(),
    library.pitch_viola_ii(
        strings="I + II",
    ),
    library.change_lines(lines=5, clef="altovarC"),
    trinton.beam_groups(
        selector=trinton.ranged_selector(
            ranges=[range(0, 6), range(6, 15), range(15, 21), range(21, 28)],
            nested=True,
        )
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.select_logical_ties_by_index(
            [
                2,
                3,
                4,
                5,
                8,
                9,
                10,
                11,
                12,
                13,
                14,
                23,
                24,
                25,
                26,
                27,
            ],
            first=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartSlur(),
                abjad.StopSlur(),
            ]
        ),
        selector=trinton.select_leaves_by_index([0, 1, 6, 7, 21, 22]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 15, 21, 21, -1]),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([library.downbow, library.upbow]),
        selector=trinton.select_leaves_by_index([0, 6, 15, 16, 17, 18, 19, 20, 21]),
    ),
    trinton.spanner_command(
        strings=library.return_fraction_string_list([(0, 7), (3, 7)]),
        selector=trinton.select_leaves_by_index(
            [0, 1],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=8,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
    ),
    trinton.spanner_command(
        strings=library.return_fraction_string_list([(3, 5), (0, 5)]),
        selector=trinton.select_leaves_by_index(
            [6, 8],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=8,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
    ),
    trinton.spanner_command(
        strings=library.return_fraction_string_list(
            [(0, 5), (5, 5), (0, 5), (5, 5), (0, 5), (5, 5), (0, 5), (2, 5)]
        ),
        selector=trinton.select_leaves_by_index(
            [15, 16, 16, 17, 17, 18, 18, 19, 19, 20, 20, 21, 21, 22],
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
    second_range=(1, 9),
    measure_number_range=(1, 4),
)

library.make_metric_music(
    trinton.linear_attachment_command(
        attachments=[
            library.metronome_markups(library._metronome_marks["1/1"], height=-15),
            library._viola_processing_markups["2 on"],
            library._viola_processing_markups["2 off"],
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
        direction=abjad.DOWN,
    ),
    score=score,
    voice_name="viola voice",
    second_range=(1, 9),
    measure_number_range=(1, 4),
)

# flute music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 6)),
    evans.RhythmHandler(evans.talea([3, -5, 2, -5, 5, -3], 64)),
    evans.PitchHandler(["ef"]),
    evans.PitchHandler(["31/8"], as_ratios=True),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    ),
    library.duration_line(),
    library.change_lines(lines=5, clef="treble"),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("fffff"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    voice=score["flute voice"],
)

# bass flute music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 6)),
    evans.RhythmHandler(evans.talea([100], 8)),
    evans.PitchHandler(["ef"]),
    evans.PitchHandler(["29/4"], as_ratios=True),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    ),
    library.duration_line(),
    library.change_lines(lines=5, clef="treble"),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("fffff"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    voice=score["bassflute voice"],
)

# violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 6)),
    evans.RhythmHandler(evans.tuplet([(10, 1)])),
    evans.PitchHandler([24, "eqs''"]),
    trinton.change_notehead_command(
        notehead="highest", selector=trinton.select_leaves_by_index([0])
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Glissando(zero_padding=True),
            trinton.make_custom_dynamic("fffff"),
        ],
        selector=trinton.select_logical_ties_by_index([0], first=True, pitched=True),
    ),
    library.duration_line(selector=trinton.select_logical_ties_by_index([-1])),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "indianred" { "tast. poss." }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=8,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'indianred)"],
        command="One",
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "darkred" { norm. }""",
            r"""\markup \with-color "darkred" { scratch }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 1, -1], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=6,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
        command="Two",
        end_hook=True,
    ),
    voice=score["violin voice"],
    preprocessor=trinton.fuse_preprocessor((6,)),
)

# bass clarinet music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 6)),
    evans.RhythmHandler(rmakers.note),
    evans.PitchHandler([library._bass_clarinet_multiphonics[3][0]]),
    library.duration_line(),
    trinton.hooked_spanner_command(
        string=library._bass_clarinet_multiphonics[3][1],
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=7,
        right_padding=0,
        full_string=True,
        tweaks=[r"""- \tweak color #(css-color 'seagreen) """],
    ),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("fffff"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    voice=score["bassclarinet voice"],
    preprocessor=trinton.fuse_preprocessor((6,)),
)

# percussion 1 music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 6)),
    evans.RhythmHandler(evans.talea([3, -2, 2, -3, 3], 32)),
    library.duration_line(),
    trinton.change_lines(lines=1, clef="percussion", tag=None),
    library.boxed_markup(string="Timpani on Cymbal", site="opening"),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                evans.make_fancy_gliss(
                    7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, right_padding=-6
                ),
                evans.make_fancy_gliss(
                    1, 2, 3, 4, 5, 6, 7, 7, 6, 5, 4, 3, 2, 1, right_padding=-6
                ),
            ]
        ),
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("fffff"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "darkmagenta" { \fontsize #3.5 \override #'(font-name . "ekmelos") \char ##xe222 }""",
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

# cello music

for voice_name, extra_count in zip(
    ["cello 1 voice", "cello 2 voice", "cello 3 voice"],
    [1, 0, -1],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (1, 6)),
        evans.RhythmHandler(
            evans.talea(
                [
                    1,
                ],
                32,
                extra_counts=[extra_count],
            )
        ),
        evans.PitchHandler([5]),
        library.duration_line(),
        library.change_lines(lines=4, clef="varpercussion"),
        trinton.change_notehead_command(
            notehead="highest",
            selector=trinton.patterned_tie_index_selector([1], 2, grace=False),
        ),
        trinton.linear_attachment_command(
            attachments=[
                trinton.make_custom_dynamic("fffff"),
                abjad.StartHairpin("|>o"),
                abjad.StopHairpin(),
            ],
            selector=trinton.select_leaves_by_index([0, 0, -1]),
        ),
        trinton.linear_attachment_command(
            attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
            selector=trinton.patterned_tie_index_selector([0, 5], 6, first=True),
        ),
        trinton.hooked_spanner_command(
            string=r"""\markup \with-color "indianred" { pont. }""",
            selector=trinton.select_leaves_by_index([0, -1], pitched=True),
            padding=7.5,
            right_padding=0,
            full_string=True,
            tweaks=[r"- \tweak color #(css-color 'indianred)"],
            command="One",
        ),
        trinton.hooked_spanner_command(
            string=r"""\markup \with-color "darkred" { louré }""",
            selector=trinton.select_leaves_by_index([0, -1], pitched=True),
            padding=5.5,
            right_padding=0,
            full_string=True,
            tweaks=[r"""- \tweak color #darkred"""],
            command="Two",
        ),
        voice=score[voice_name],
    )

# tenor trombone music

for voice_name, extra_count in zip(
    ["tenortrombone voice", "basstrombone voice"], [10, 0]
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (1, 6)),
        evans.RhythmHandler(
            evans.talea([4, -3, 3, -4, 2], 64, extra_counts=[extra_count])
        ),
        library.change_lines(lines=1, clef="varpercussion"),
        library.duration_line(),
        library.boxed_markup(string="w/ Bassoon mouthpiece", site="opening"),
        trinton.attachment_command(
            attachments=[evans.make_fancy_gliss(1, 1, 1, 1, 1, 1, 1, right_padding=-6)],
            selector=trinton.logical_ties(first=True, pitched=True, grace=False),
        ),
        trinton.linear_attachment_command(
            attachments=[
                trinton.make_custom_dynamic("fffff"),
                abjad.StartHairpin("|>o"),
                abjad.StopHairpin(),
            ],
            selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
        ),
        voice=score[voice_name],
        preprocessor=trinton.fuse_preprocessor((6,)),
    )

# percussion 2 music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 6)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
            ],
            64,
            extra_counts=[6, 6, -2],
        )
    ),
    evans.PitchHandler(pitch.glockenspiel_pitches),
    abjad.slur,
    library.boxed_markup(string="Glockenspiel"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("treble"),
            trinton.make_custom_dynamic("fffff"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1]),
    ),
    trinton.ficta_command(selector=trinton.select_leaves_by_index([0, -1])),
    voice=score["percussion 2 voice"],
    preprocessor=trinton.fuse_preprocessor((1, 2, 3)),
)

# globals

library.set_all_time_signatures(score=score, exclude_viola=True)

library.remove_redundant_time_signatures(score=score)

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

# library.forbid_break(
#     score=score, measures=[]
# )

library.write_timestamps(
    global_context=score["Global Context"],
    second_range=(198, 207),
    measure_range=(1, 9),
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
    segment_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/sections/08",
    build_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/build",
    segment_name="08",
    includes=[
        "/Users/trintonprater/scores/bibliopegy/bibliopegy/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
