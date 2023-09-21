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

# glockenspiel pitches

part_1 = [
    12,
    12,
    12,
    12,
    14,
    12,
    11,
    9,
    11,
    7,
    9,
    7,
    6,
    7,
    7,
    9,
    12,
    10,
    9,
    12,
    10,
    9,
    10,
    7,
    9,
    7,
    6,
    7,
    6,
    7,
    9,
]

part_2 = [7, 10, 9, 7, 6, 7, 5, 3, 2, 3, 0, 2, 0, -5, -3, 0, 2, -5, 2, 0, 2, 4]

part_3 = [0, -2, 0, 2, 0, -2, -3, -5, 6, 7, 5, 7, 5, 7, 2, 0, 11, 9]

transposed_3 = []

for _ in part_3:
    _ = _ + 6
    transposed_3.append(_)

transposed_2 = []

for _ in part_2:
    _ = _ + 5
    transposed_2.append(_)

glockenspiel_pitches = []

for pitch_1, pitch_2, pitch_3 in zip(part_1, transposed_2, transposed_3):
    glockenspiel_pitches.append(pitch_2)
    glockenspiel_pitches.append(pitch_3)
    glockenspiel_pitches.append(pitch_1)

for pitch_1, pitch_2 in zip(transposed_2[18:], part_1[18:]):
    glockenspiel_pitches.append(pitch_2)
    glockenspiel_pitches.append(pitch_1)

for pitch in part_1[22:]:
    glockenspiel_pitches.append(pitch)
