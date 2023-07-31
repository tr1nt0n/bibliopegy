import fractions
import math
import trinton

# violin gamma pitches

seed = [
    fractions.Fraction(177, 4),
    "g''''",
    "g''''",
    "gqs''''",
    "af''''",
    fractions.Fraction(175, 4),
    "af''''",
    "gqs''''",
    "g''''",
]

seed_shifted = trinton.rotated_sequence(seed, 1)

seed_shuffled = []

for pitch1, pitch2 in zip(seed_shifted, seed):
    seed_shuffled.append(pitch1)
    seed_shuffled.append(pitch2)

violin_gamma_pitches = []

for pitch in seed:
    violin_gamma_pitches.append(pitch)

for pitch in seed_shuffled:
    violin_gamma_pitches.append(pitch)
