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

score = library.bibliopegy_score(
    [
        (3, 16),
        (1, 8),
        (1, 8),
        (1, 8),
        (1, 8),
        (1, 8),
        (1, 8),
        (1, 8),
        (1, 8),
        (1, 8),
        (1, 8),
        (1, 8),
        (1, 8),
    ]
)

# music commands

# tape music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 13)),
    evans.RhythmHandler(rmakers.note),
    evans.PitchHandler([-1]),
    library.duration_line(color="darkred"),
    library.change_lines(lines=2, clef="percussion"),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\override Staff.Clef.stencil = ##f", site="before"),
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
    voice=score["piano voice"],
    preprocessor=trinton.fuse_preprocessor((13,)),
)

# bass clarinet music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 13)),
    evans.RhythmHandler(
        evans.talea(
            [
                -1,
                7,
            ],
            16,
        ),
    ),
    evans.PitchHandler(["eqs"]),
    library.duration_line(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, -1], first=True, pitched=True
        ),
    ),
    voice=score["bassclarinet voice"],
)

# cello 3 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 13)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
            ],
            2,
        ),
    ),
    evans.PitchHandler(["d,"]),
    library.duration_line(sustained=True),
    trinton.linear_attachment_command(
        attachments=[
            evans.make_fancy_gliss(
                0.5,
                1,
                0.5,
                1,
                0.5,
                1,
                0.5,
                1,
                0.5,
                1,
                0.5,
                1,
                0.5,
                1,
                0.5,
                1,
                0.5,
                1,
                2,
                3,
                4,
                0.5,
                1,
                0.5,
                1,
                0.5,
                1,
                0.5,
                1,
                0.5,
            ),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_logical_ties_by_index([0, 0, 0, 1, 1, -1], first=True),
    ),
    voice=score["cello 3 voice"],
)

# percussion 2 music commands

abjad.attach(abjad.Clef("bass"), abjad.select.leaf(score["percussion 2 voice"], 0))

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 13)),
    evans.RhythmHandler(
        evans.talea([8, 9, 7], 16),
    ),
    evans.PitchHandler(["d,"]),
    library.duration_line(sustained=True),
    library.boxed_markup(string="Marimba"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 1, 1, 2, 2, -1], first=True
        ),
    ),
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
    voice=score["percussion 2 voice"],
)

# initial cleffing

for voice_name in [
    "basstrombone voice",
    "cello 3 voice",
    "percussion 2 voice",
]:
    abjad.attach(abjad.Clef("bass"), abjad.select.leaf(score[voice_name], 0))

abjad.attach(abjad.Clef("altovarC"), abjad.select.leaf(score["viola voice"], 0))

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.change_lines(
        lines=1,
        clef="percussion",
        selector=trinton.select_leaves_by_index([0]),
        tag=None,
    ),
    voice=score["percussion 1 voice"],
)

for voice_name in ["flute voice", "bassflute voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        trinton.change_lines(
            lines=1,
            clef="percussion",
            selector=trinton.select_leaves_by_index([0]),
            tag=None,
        ),
        voice=score[voice_name],
    )


# globals

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

library.write_timestamps(
    global_context=score["Global Context"], second_range=(38, 49), measure_range=(2, 13)
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            library.movements[0],
            abjad.LilyPondLiteral(
                r'\tweak text "0\" - 37\"" \startMeasureSpanner',
                "absolute_before",
            ),
            abjad.LilyPondLiteral(r"\stopMeasureSpanner", "after"),
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
)

# parts

trinton.extract_parts(score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/sections/01",
    build_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/build",
    segment_name="01",
    includes=[
        "/Users/trintonprater/scores/bibliopegy/bibliopegy/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
