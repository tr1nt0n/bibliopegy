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

score = library.bibliopegy_score([(1, 4)])

# music commands

# globals

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

# cutaway

# trinton.whiteout_empty_staves(
#     score=score,
#     cutaway="blank",
# )

# parts

trinton.extract_parts(score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/sections/01",
    build_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/build",
    segment_name="01",
    includes=[
        "/Users/trintonprater/scores/bibliopegy/bibliopegy/build/bibliopegy-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
