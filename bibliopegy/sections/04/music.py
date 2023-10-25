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

score = library.bibliopegy_score([(1, 8) for _ in range(1, 3)])

# music commands

# cello music commands

for voice_name, extra_count in zip(
    ["cello 1 voice", "cello 2 voice", "cello 3 voice"],
    [1, 0, -1],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
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
        trinton.attachment_command(
            attachments=[abjad.Dynamic("p"), abjad.StartHairpin("--")],
            selector=trinton.patterned_tie_index_selector(
                [
                    2,
                ],
                4,
                first=True,
            ),
        ),
        trinton.attachment_command(
            attachments=[abjad.Dynamic("ff"), abjad.StartHairpin("--")],
            selector=trinton.patterned_tie_index_selector([0], 4, first=True),
        ),
        trinton.attachment_command(
            attachments=[abjad.StopHairpin()],
            selector=trinton.select_leaves_by_index([-1]),
        ),
        trinton.linear_attachment_command(
            attachments=[abjad.StartSlur(), abjad.StopSlur()],
            selector=trinton.select_leaves_by_index([0, -1]),
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

# globals

library.set_all_time_signatures(score=score)

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

library.silence(
    score=score,
    measures=[
        2,
    ],
    timestamps=[r"1\'37\" - 1\'44\""],
)

library.write_timestamps(
    global_context=score["Global Context"],
    second_range=(96,),
    measure_range=(1,),
)

# cutaway

trinton.whiteout_empty_staves(
    score=score,
    cutaway="blank",
)

# parts

trinton.extract_parts(score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/sections/04",
    build_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/build",
    segment_name="04",
    includes=[
        "/Users/trintonprater/scores/bibliopegy/bibliopegy/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
