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

# trinton.whiteout_empty_staves(
#     score=score,
#     cutaway="blank",
#     voice_names=[
#         _
#         for _ in library.all_voice_names
#         if _ != "viola voice" and _ != "viola voice time signatures"
#     ],
#     last_segment=True,
# )
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
