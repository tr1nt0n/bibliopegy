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
    score=score,
    voice_name="viola voice",
    signature_pairs=[(4, 16), (6, 32), (1, 16)],
    measure_range=(4, 7),
)

library.make_metric_music(
    evans.RhythmHandler(evans.tuplet([(3, 2)])),
    library.change_lines(lines=1, clef="varpercussion"),
    abjad.beam,
    library.duration_line(viola=True),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(library._metronome_marks["1/1"], height=12),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("s mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("<|"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 1, 2, 2, 3]),
    ),
    library.boxed_markup(string="Styrofoam", site="opening"),
    trinton.notehead_bracket_command(),
    score=score,
    voice_name="viola voice",
    second_range=(4, 7),
    measure_number_range=(1,),
)

library.make_metric_music(
    evans.RhythmHandler(
        evans.talea(
            [
                3,
            ],
            32,
        )
    ),
    evans.PitchHandler([[2, -1]]),
    abjad.beam,
    library.duration_line(selector=trinton.select_leaves_by_index([-1]), viola=True),
    trinton.attachment_command(
        attachments=[abjad.Glissando(zero_padding=True)],
        selector=trinton.select_leaves_by_index([0]),
    ),
    library.change_lines(lines=4, clef="varpercussion"),
    library.boxed_markup(string="Viola", site="opening"),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("p"), abjad.StartHairpin("--"), abjad.StopHairpin()],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "indianred" \center-column { \line { legno molto pont. } \line { crine dietro pont. } }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=13.5,
        right_padding=0,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'indianred)"],
        command="One",
    ),
    trinton.spanner_command(
        strings=library.return_fraction_string_list([(1, 1), (0, 1), (1, 1)]),
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
                1,
                2,
            ],
            first=True,
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=8.5,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
        command="Two",
    ),
    score=score,
    voice_name="viola voice",
    second_range=(4, 7),
    measure_number_range=(2,),
)

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

library.set_all_time_signatures(score=score)

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

library.write_timestamps(
    global_context=score["Global Context"],
    second_range=(101, 112),
    measure_range=(1, 12),
)

# cutaway

trinton.whiteout_empty_staves(
    score=score,
    cutaway="blank",
    voice_names=[_ for _ in library.all_voice_names if _ != "viola voice"],
)

library.blank_measure_by_hand(
    score=score,
    voice_names=["viola voice"],
    measures=[1, 2, 3, 8, 9, 10, 11, 12],
)

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
