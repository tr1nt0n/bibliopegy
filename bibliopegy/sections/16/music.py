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

score = library.bibliopegy_score([(1, 8) for _ in range(1, 23)])

# music commands

# tape music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 20)),
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
    preprocessor=trinton.fuse_preprocessor((12,)),
)

# violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 6)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
            ],
            32,
            extra_counts=[0, 1],
        )
    ),
    trinton.force_rest(selector=trinton.select_leaves_by_index([4, 5, 15, 16, 17])),
    evans.PitchHandler(pitch_list=trinton.rotated_sequence(pitch.delta_pitches, 6)),
    library.octave_up(selector=trinton.ranged_selector(ranges=[range(18, 27)])),
    library.octave_up(
        selector=trinton.select_leaves_by_index([13, 14, -4]),
    ),
    library.octave_down(
        selector=trinton.select_leaves_by_index(
            [
                0,
                3,
                4,
                5,
            ],
            pitched=True,
        ),
    ),
    library.octave_up(
        selector=trinton.select_leaves_by_index([-3, -4]),
    ),
    library.double_octave_up(selector=trinton.select_leaves_by_index([-2, -1])),
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
    trinton.attachment_command(
        attachments=[
            abjad.StartSlur(),
            abjad.StartHairpin("o<"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                4,
                13,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopSlur()],
        selector=trinton.select_leaves_by_index([3, 12, -1], pitched=True, grace=True),
    ),
    trinton.ottava_command(selector=trinton.select_leaves_by_index([-8, -1])),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("mf +"),
            abjad.Dynamic("ff"),
            trinton.make_custom_dynamic("fff +"),
        ],
        selector=trinton.select_leaves_by_index([3, 12, -1], pitched=True, grace=True),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "darkred" { "flaut. moltissimo" }""",
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                -1,
            ],
            first=True,
            pitched=True,
        ),
        padding=10.5,
        full_string=True,
        right_padding=0,
        tweaks=[r"""- \tweak color #darkred"""],
    ),
    voice=score["violin voice"],
)

# flute music

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 6)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
            ],
            32,
            extra_counts=[1, 0, 1, 1, 2],
        )
    ),
    trinton.force_rest(selector=trinton.select_leaves_by_index([0, 1, 2, 11, 12, 13])),
    evans.PitchHandler(pitch_list=trinton.rotated_sequence(pitch.delta_pitches, 11)),
    library.octave_up(
        selector=trinton.select_leaves_by_index(
            [6, 7, 8, 9, 10, 11, 12, 15, 16, 17, 18], pitched=True
        ),
    ),
    library.double_octave_up(
        selector=trinton.select_leaves_by_index(
            [
                13,
            ],
            pitched=True,
        ),
    ),
    library.octave_down(
        selector=trinton.select_leaves_by_index(
            [
                0,
            ],
            pitched=True,
        ),
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
            ],
            pitched=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.StartSlur(),
            abjad.StartHairpin("o<"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                8,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopSlur()],
        selector=trinton.select_leaves_by_index([7, -1], pitched=True, grace=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            trinton.make_custom_dynamic("fff +"),
        ],
        selector=trinton.select_leaves_by_index([7, -1], pitched=True, grace=True),
    ),
    voice=score["flute voice"],
)

# bass flute music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RhythmHandler(evans.talea([5, 6], 32)),
    evans.PitchHandler(["d'", "ef'"]),
    library.duration_line(),
    voice=score["bassflute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(evans.talea([1], 32, extra_counts=[3])),
    evans.PitchHandler(pitch_list=trinton.rotated_sequence(pitch.delta_pitches, 2)),
    library.octave_up(selector=trinton.pleaves(exclude=[0, 1])),
    library.duration_line(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\slurDashed", site="before"),
            abjad.StartSlur(),
            abjad.LilyPondLiteral(r"\slurSolid", site="after"),
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
    voice=score["bassflute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    evans.RhythmHandler(
        evans.talea(
            [
                1000,
            ],
            32,
        )
    ),
    evans.PitchHandler(["d'", "ef'"]),
    library.duration_line(),
    voice=score["bassflute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("p"), abjad.StartHairpin("<"), abjad.Dynamic("f")],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["bassflute voice"],
)

# percussion 1 music

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 22)),
    evans.RhythmHandler(evans.talea([-1, 3, -2, 4, -2, 7, -2, 1000], 16)),
    library.duration_line(),
    library.change_lines(lines=1, clef="percussion"),
    library.boxed_markup(
        string="Timpani, one hand on Cymbal, the other on the Head", site="opening"
    ),
    trinton.attachment_command(
        attachments=[
            evans.make_fancy_gliss(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.StopHairpin(),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=True),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "darkmagenta" { \fontsize #3.5 \override #'(font-name . "ekmelos") \char ##xe222 }""",
        selector=trinton.logical_ties(first=True, pitched=True),
        padding=7,
        direction="down",
        right_padding=1,
        full_string=True,
        style="dashed-line-with-up-hook",
        tweaks=[r"- \tweak color #darkmagenta"],
    ),
    voice=score["percussion 1 voice"],
)

# bass clarinet music

trinton.make_music(
    lambda _: trinton.select_target(_, (17, 22)),
    evans.RhythmHandler(evans.talea([-1, 1000], 16)),
    evans.PitchHandler([-3]),
    library.duration_line(),
    trinton.change_notehead_command(
        notehead="lowest", selector=trinton.select_leaves_by_index([0], pitched=True)
    ),
    library.cello_trills(
        initial_width=7,
        y_scale=0.6,
        speed_factor=0.7,
        selector=trinton.select_leaves_by_index([0, 1], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 1, 1, -1], pitched=True),
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "darkred" { "norm." }""",
            r"""\markup \with-color "darkred" { "overblow" }""",
        ],
        selector=trinton.select_leaves_by_index([0, 1, 1, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=5.5,
        right_padding=0,
        full_string=True,
        tweaks=[r"- \tweak color #darkred"],
        end_hook=True,
    ),
    voice=score["bassclarinet voice"],
    preprocessor=trinton.fuse_preprocessor((4, 2)),
)

# globals

library.set_all_time_signatures(score=score, exclude_viola=False)

# library.remove_redundant_time_signatures(score=score)

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

library.write_timestamps(
    global_context=score["Global Context"],
    second_range=(315, 1000),
    measure_range=(1, 22),
)

# library.forbid_break(score=score, measures=[9, 10, 11])

# cutaway

trinton.whiteout_empty_staves(
    score=score,
    cutaway="blank",
    # voice_names=[
    #     _
    #     for _ in library.all_voice_names
    #     if _ != "viola voice" and _ != "viola voice time signatures"
    # ],
    last_segment=True,
)
#
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
#         13,
#     ],
# )

# parts

trinton.extract_parts(score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/sections/16",
    build_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/build",
    segment_name="16",
    includes=[
        "/Users/trintonprater/scores/bibliopegy/bibliopegy/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
