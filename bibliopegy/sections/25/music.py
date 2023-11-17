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

# 11

score = library.bibliopegy_score([(1, 8) for _ in range(1, 9)])

# music commands


# pre globals

for voice_name in library.all_voice_names:
    library.write_simultaneous_time_signatures(
        score=score,
        voice_name=voice_name,
        signature_pairs=[(4, 8), (4, 8)],
        measure_range=(1, 8),
        reset=False,
    )

    beginning_literals = [
        abjad.LilyPondLiteral(
            r"""\once \override Staff.BarLine.glyph-name = ".|:" """, site="before"
        ),
        abjad.LilyPondLiteral(
            r"""\once \override Staff.BarLine.transparent = ##f""", site="before"
        ),
    ]

    if voice_name != "viola voice":
        for literal in [
            abjad.LilyPondLiteral(
                r"\override Staff.BarLine.bar-extent = #'(-2 . 2)", site="before"
            ),
            abjad.LilyPondLiteral(r"\revert Staff.Dots.stencil", site="before"),
            abjad.LilyPondLiteral(r"\revert Staff.Flag.stencil", site="before"),
            abjad.LilyPondLiteral(
                r"\revert Staff.NoteHead.duration-log", site="before"
            ),
            abjad.LilyPondLiteral(
                r"\override Staff.Rest.transparent = ##f", site="before"
            ),
            abjad.LilyPondLiteral(r"\revert Staff.Stem.stencil", site="before"),
            abjad.LilyPondLiteral(r"\revert Staff.Tie.stencil", site="before"),
            abjad.LilyPondLiteral(
                r"\revert Staff.TimeSignature.stencil", site="before"
            ),
            abjad.LilyPondLiteral(
                r"\revert Staff.TupletBracket.stencil", site="before"
            ),
            abjad.LilyPondLiteral(r"\revert Staff.TupletNumber.stencil", site="before"),
        ]:
            beginning_literals.append(literal)

    for literal in beginning_literals:
        abjad.attach(
            literal, abjad.select.leaf(score[f"{voice_name} time signatures"], 0)
        )

        abjad.attach(literal, abjad.select.leaf(score[voice_name], 0))

    if voice_name != "viola voice":
        abjad.attach(
            library.metronome_markups(
                met_string=library._metronome_marks["1/1"],
                height=5,
            ),
            abjad.select.leaf(score[f"{voice_name} time signatures"], 0),
        )

    ending_literals = [
        abjad.LilyPondLiteral(
            r"\once \override Staff.TimeSignature.stencil = ##f", site="before"
        ),
        abjad.LilyPondLiteral(
            r"""\once \override Staff.BarLine.glyph-name = "|" """,
            site="before",
        ),
        abjad.LilyPondLiteral(
            r"""\once \override Staff.BarLine.glyph-name = ":|." """, site="after"
        ),
        abjad.LilyPondLiteral(
            r"""\once \override Staff.BarLine.transparent = ##f""", site="after"
        ),
    ]

    if voice_name != "viola voice":

        for literal in [
            abjad.LilyPondLiteral(
                r"\revert Staff.BarLine.bar-extent", site="absolute_after"
            ),
            abjad.LilyPondLiteral(
                r"\override Staff.Dots.stencil = ##f", site="absolute_after"
            ),
            abjad.LilyPondLiteral(
                r"\override Staff.Flag.stencil = ##f", site="absolute_after"
            ),
            abjad.LilyPondLiteral(
                r"\override Staff.NoteHead.duration-log = 2", site="absolute_after"
            ),
            abjad.LilyPondLiteral(
                r"\override Staff.Rest.transparent = ##t", site="absolute_after"
            ),
            abjad.LilyPondLiteral(
                r"\override Staff.Stem.stencil = ##f", site="absolute_after"
            ),
            abjad.LilyPondLiteral(
                r"\override Staff.Tie.stencil = ##f", site="absolute_after"
            ),
            abjad.LilyPondLiteral(
                r"\override Staff.TimeSignature.stencil = ##f", site="before"
            ),
            abjad.LilyPondLiteral(
                r"\override Staff.TupletBracket.stencil = ##f", site="absolute_after"
            ),
            abjad.LilyPondLiteral(
                r"\override Staff.TupletNumber.stencil = ##f", site="absolute_after"
            ),
        ]:
            ending_literals.append(literal)

    for literal in ending_literals:
        abjad.attach(
            literal, abjad.select.leaf(score[f"{voice_name} time signatures"], -1)
        )

        abjad.attach(literal, abjad.select.leaf(score[voice_name], -1))

# post globals

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #8 \box { ×9 }""",
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 { " 2\'20\" - 3\'32\" " }"""
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

# library.remove_redundant_time_signatures(score=score)

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)


# library.forbid_break(score=score, measures=[3, 4, 8, 9, 10, 11, 12])


# cutaway

# trinton.whiteout_empty_staves(
#     score=score,
#     cutaway="blank",
#     voice_names=[_ for _ in library.all_voice_names if _ != "viola voice"],
#     last_segment=True,
# )
#
# library.blank_measure_by_hand(
#     score=score,
#     voice_names=["viola voice"],
#     measures=[1, 11, 18, 19, 26],
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

# trinton.make_sc_file(score=score, tempo=((1, 4), 30), current_directory="/Users/trintonprater/scores/bibliopegy/bibliopegy/sections/24",)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/sections/25",
    build_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/build",
    segment_name="25",
    includes=[
        "/Users/trintonprater/scores/bibliopegy/bibliopegy/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
