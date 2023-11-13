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

score = library.bibliopegy_score([(1, 8) for _ in range(1, 42)])

# music commands

# tape music

trinton.make_music(
    lambda _: trinton.select_target(_, (18, 41)),
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

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 41)),
    evans.RhythmHandler(evans.talea([17, 1000], 8)),
    evans.PitchHandler([["g", "a,"], [-1, 2]]),
    library.change_lines(lines=5, clef="altovarC"),
    library.change_lines(
        lines=2,
        clef="percussion",
        selector=trinton.select_logical_ties_by_index(
            [1], first=True, pitched=True, grace=False
        ),
    ),
    library.duration_line(),
    trinton.noteheads_only(),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override NoteHead.no-ledgers = ##t", site="before"
            )
        ],
        selector=trinton.select_logical_ties_by_index([0], first=True, pitched=True),
    ),
    library.boxed_markup(string="Baoding Balls + Viola"),
    library.boxed_markup(
        string="Baoding Balls + Styrofoam",
        selector=trinton.select_logical_ties_by_index(
            [1], first=True, pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
            trinton.make_custom_dynamic("sff"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 17, 18, 30, -1]),
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "indianred" { "tast. moltiss." }""",
            r"""\markup \with-color "indianred" { "tast." }""",
            r"""\markup \with-color "indianred" { "molto tast." }""",
            r"""\markup \with-color "indianred" { "norm." }""",
            r"""\markup \with-color "indianred" { "tast." }""",
            r"""\markup \with-color "indianred" { "pont." }""",
            r"""\markup \with-color "indianred" { "norm." }""",
            r"""\markup \with-color "indianred" { "molto pont." }""",
            r"""\markup \with-color "indianred" { "pont." }""",
            r"""\markup \with-color "indianred" { "pont. moltiss." }""",
        ],
        selector=trinton.select_leaves_by_index(
            [0, 2, 2, 3, 3, 5, 5, 6, 6, 8, 8, 9, 9, 11, 11, 12, 12, 14, 14, 17],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=12,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'indianred)"],
        command="One",
        end_hook=True,
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "darkred" { scr. }""",
            library.return_fractional_scratch_markup("2 3", abbreviated=True),
            library.return_fractional_scratch_markup("3 4", abbreviated=True),
            library.return_fractional_scratch_markup("1 3", abbreviated=True),
            library.return_fractional_scratch_markup("1 2", abbreviated=True),
            library.return_fractional_scratch_markup("1 5", abbreviated=True),
            library.return_fractional_scratch_markup("1 4", abbreviated=True),
            library.return_fractional_scratch_markup("1 7", abbreviated=True),
            library.return_fractional_scratch_markup("1 6", abbreviated=True),
            r"""\markup \with-color "darkred" { ord. }""",
            library.return_fractional_scratch_markup("1 7", abbreviated=True),
            r"""\markup \with-color "darkred" { flaut. }""",
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                1,
                4,
                4,
                5,
                5,
                7,
                7,
                8,
                8,
                11,
                11,
                12,
                12,
                14,
                14,
                15,
                15,
                16,
                16,
                17,
            ],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=9,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
        command="Two",
    ),
    voice=score["viola voice"],
)

# percussion 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 17)),
    evans.RhythmHandler(
        evans.talea(
            [1, -4, 1, -3, 1, -2, 1],
            8,
        )
    ),
    evans.PitchHandler(pitch_list=trinton.rotated_sequence(pitch.third_dune_chords, 3)),
    library.octave_up(
        selector=trinton.select_logical_ties_by_index([1, 2], pitched=True, grace=False)
    ),
    library.octave_up(
        selector=trinton.notehead_selector(
            chord_indices=[0, -2, -1], head_indices_lists=[[0, 1, 2], [0], [1]]
        ),
    ),
    library.octave_down(
        selector=trinton.notehead_selector(
            chord_indices=[2], head_indices_lists=[[1, 3]]
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("tenuto"),
            abjad.LaissezVibrer(),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.Arpeggio(direction=abjad.DOWN)],
        selector=trinton.patterned_tie_index_selector(
            [0, 2], 3, first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Arpeggio(direction=abjad.UP)],
        selector=trinton.patterned_tie_index_selector(
            [1], 3, first=True, pitched=True, grace=False
        ),
    ),
    library.boxed_markup(
        string="Glockenspiel",
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.Dynamic("pp"),
            abjad.Dynamic("mf"),
            trinton.make_custom_dynamic("ppp +"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    voice=score["percussion 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (18, 27)),
    evans.RhythmHandler(
        evans.talea(
            [1000],
            8,
        )
    ),
    evans.PitchHandler(pitch_list=["d''"]),
    library.duration_line(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Articulation(">"),
            abjad.bundle(
                abjad.StartTrillSpan(pitch=abjad.NamedPitch("E5")),
                r"- \tweak color #(css-color 'goldenrod)",
            ),
            trinton.make_custom_dynamic("sf"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pppp"),
            abjad.LaissezVibrer(),
            abjad.StopHairpin(),
            abjad.StopTrillSpan(),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 0, 0, 3, -1, -1, -1, -1], pitched=True
        ),
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
    second_range=(58, 1000),
    measure_range=(1, 41),
)

# library.forbid_break(score=score, measures=[3, 4, 8, 9, 10, 11, 12])


# cutaway

trinton.whiteout_empty_staves(
    score=score,
    cutaway="blank",
    # voice_names=[_ for _ in library.all_voice_names if _ != "viola voice"],
    last_segment=True,
)

# library.blank_measure_by_hand(
#     score=score,
#     voice_names=["viola voice"],
#     measures=[
#         1,
#         2,
#         3,
#         4,
#         5,
#         6,
#         7,
#         8,
#         9,
#         18,
#     ],
# )

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
    segment_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/sections/23",
    build_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/build",
    segment_name="23",
    includes=[
        "/Users/trintonprater/scores/bibliopegy/bibliopegy/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
