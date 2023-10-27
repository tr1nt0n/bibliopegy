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

score = library.bibliopegy_score([(1, 8) for _ in range(1, 18)])

# music commands

# tape music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 16)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    library.change_lines(lines=3, clef="percussion"),
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
    evans.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(
            evans.talea(
                [1, -1000],
                8,
            ),
        ),
        direction=abjad.UP,
        voice_name="alpha voice",
    ),
    voice=score["piano voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 16)),
    library.duration_line(color="darkmagenta"),
    voice=score["piano voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 16)),
    evans.PitchHandler([-3]),
    library.duration_line(color="darkred"),
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
    voice=score["alpha voice"],
)

# viola music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(rmakers.note),
    evans.PitchHandler([["g", "aqs", "a,"]]),
    library.duration_line(),
    trinton.noteheads_only(),
    library.change_lines(lines=5, clef="altovarC"),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override NoteHead.no-ledgers = ##t", site="before"
            )
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    library.boxed_markup(
        string="( Viola + Styrofoam )",
        selector=trinton.select_leaves_by_index([0]),
        site="opening",
    ),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("mf +"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "darkred" { "scratch" }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=8,
        right_padding=0,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
        command="One",
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "indianred" { "molto pont." }""",
            r"""\markup \with-color "indianred" { "tast. moltissimo" }""",
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=10,
        right_padding=-5,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'indianred)"],
        command="Two",
    ),
    voice=score["viola voice"],
)

# violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 8)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
            ],
            32,
            extra_counts=[3, 2, 1, 0, -1, -1, -2],
        )
    ),
    evans.PitchHandler(pitch_list=pitch.delta_pitches),
    library.double_octave_up(selector=trinton.ranged_selector(ranges=[range(0, 11)])),
    library.octave_up(selector=trinton.ranged_selector(ranges=[range(11, 23)])),
    library.octave_up(
        selector=trinton.select_leaves_by_index([24]),
    ),
    library.octave_down(
        selector=trinton.select_leaves_by_index([5, 9, -2, -1]),
    ),
    library.duration_line(),
    voice=score["violin voice"],
)

# globals

library.set_all_time_signatures(score=score, exclude_viola=False)

# library.remove_redundant_time_signatures(score=score)

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

# library.forbid_break(score=score, measures=[1, 2, 3, 4, 5, 6])

library.silence(score=score, measures=[1], timestamps=[r"""3\'52\" - 4\'4\""""])

library.write_timestamps(
    global_context=score["Global Context"],
    second_range=(245, 1000),
    measure_range=(2, 16),
)

library.silence(score=score, measures=[17], timestamps=[r"""4\'20\" - 4\'35\""""])

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            library.movements[1],
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

# cutaway

trinton.whiteout_empty_staves(
    score=score,
    cutaway="blank",
    voice_names=[
        _
        for _ in library.all_voice_names
        # if _ != "viola voice"
        # and _ != "viola voice time signatures"
        if _ != "piano voice"
        # and _ != "percussion 1 voice"
    ],
    last_segment=True,
)

library.blank_measure_by_hand(
    score=score,
    voice_names=["piano voice"],
    measures=[17],
)

# parts

trinton.extract_parts(score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/sections/13",
    build_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/build",
    segment_name="13",
    includes=[
        "/Users/trintonprater/scores/bibliopegy/bibliopegy/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
