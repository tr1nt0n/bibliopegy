import abjad
import baca
import evans
import itertools
import trinton
from abjadext import rmakers
from abjadext import microtones
from bibliopegy import library
from bibliopegy import ts

# score

score = library.bibliopegy_score([(1, 8) for _ in range(1, 13)])

library.set_all_time_signatures(score=score)

# music commands

# tape music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 8)),
    evans.RhythmHandler(evans.talea([-1, 2, -1], 16)),
    library.duration_line(color="(css-color 'darksalmon)"),
    library.change_lines(lines=2, clef="percussion"),
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
)

# viola music commands

library.write_simultaneous_time_signatures(
    voice=score["viola voice"], signature_pairs=[(5, 16), (3, 16)], measure_range=(4, 7)
)
#
# trinton.make_music(
#     lambda _: trinton.select_target(_, (4, 7)),
#     evans.RhythmHandler(rmakers.note),
#     voice=score["viola voice"],
#     preprocessor=trinton.fuse_sixteenths_preprocessor((5, 3)),
# )

# trombone music commands

library.trombone_alpha(
    voices=[score["tenortrombone voice"], score["basstrombone voice"]],
    measures=(1, 6),
    rotation=0,
    dynamics=["mf", "mf +"],
)

library.trombone_alpha(
    voices=[score["tenortrombone voice"], score["basstrombone voice"]],
    measures=(8, 12),
    rotation=3,
    dynamics=["mf +", "f", "mf", "mf+"],
)

for voice_name in ["tenortrombone voice", "basstrombone voice"]:
    abjad.attach(abjad.Clef("bass"), abjad.select.leaf(score[voice_name], 0))

# globals

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

library.write_timestamps(
    global_context=score["Global Context"],
    second_range=(101, 112),
    measure_range=(1, 12),
)

# cutaway

# trinton.whiteout_empty_staves(
#     score=score,
#     cutaway="blank",
#     voice_names=[_ for _ in library.all_voice_names if _ != "viola voice"]
# )

# parts

trinton.extract_parts(score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/sections/05",
    build_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/build",
    segment_name="05",
    includes=[
        "/Users/trintonprater/scores/bibliopegy/bibliopegy/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
