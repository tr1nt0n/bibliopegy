import abjad
import baca
import evans
import fractions
import itertools
import trinton
from abjadext import rmakers
from abjadext import microtones
from bibliopegy import library
from bibliopegy import ts
from bibliopegy import pitch

# score

score = library.bibliopegy_score(ts.cadenza_ts)

# music commands

abjad.attach(abjad.TimeSignature((1, 8)), abjad.select.leaf(score["viola voice"], 0))

abjad.attach(abjad.Clef("altovarC"), abjad.select.leaf(score["viola voice"], 0))

library.write_simultaneous_time_signatures(
    score=score,
    voice_name="viola voice",
    signature_pairs=ts.cadenza_ts[1:-1],
    measure_range=(2, 22),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 5)),
    evans.RhythmHandler(
        evans.talea([8, -2, 4, 4, 4, -4, 1, 2, 4, 4, 6, 1, 8, -100], 64)
    ),
    evans.PitchHandler(
        [
            "d'",
            "e'",
            "cs'",
            "e'",
            "b",
            "cs'",
            "d'",
            "e'",
            "cs'",
            "b",
            "a",
        ]
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \with-color "indianred" { tast. poss. sempre }""",
                ),
                r"- \tweak whiteout ##f",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \override #'(font-name . "Source Han Serif SC") { \hspace #-22 \center-column { \line { ベッドでは靴下を履いたまま、} \line { 木の影が芝生のプールに黒く横たわるのを見る。 } } }"""
                ),
                r"- \tweak padding #7",
            ),
            library.metronome_markups(
                met_string=library._metronome_marks["1/2"],
                height=3,
            ),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("--"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([2, 4, 5, 6, 11, -1], pitched=True),
    ),
    trinton.beam_groups(
        selector=trinton.ranged_selector(
            ranges=[
                range(2, 6),
                range(7, 9),
                range(9, 13),
                range(13, 15),
            ],
            nested=True,
        )
    ),
    voice=score["viola voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 10)),
    evans.RhythmHandler(
        evans.talea([8, -2, 1, 2, 4, 7, -4, 1, 1, 4, 4, 4, 8, -2, -100], 64)
    ),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(evans.tuplet([(1, 1, 1)])),
        selector=trinton.select_leaves_by_index([8, 9], pitched=True),
    ),
    evans.PitchHandler(
        [
            "d'",
            "cs'",
            "e'",
            "cs'",
            "e'",
            "b",
            "cs'",
            "d'",
            fractions.Fraction(9, 4),
            "e'",
            "cs'",
            "b",
            fractions.Fraction(3, 4),
        ]
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([3, 5, 6, 7], pitched=True),
    ),
    trinton.force_accidentals_command(
        selector=trinton.select_logical_ties_by_index([8], first=True, pitched=True)
    ),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin()],
        selector=trinton.select_leaves_by_index([-1], pitched=True),
    ),
    trinton.beam_groups(
        selector=trinton.ranged_selector(
            ranges=[
                range(2, 7),
                range(8, 10),
                range(10, 13),
                range(13, 16),
            ],
            nested=True,
        )
    ),
    trinton.notehead_bracket_command(),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\override Staff.BarLine.bar-extent = #'(-2 . 2)", site="after"
            ),
            abjad.LilyPondLiteral(
                r"\override Staff.BarLine.transparent = ##f", site="after"
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["viola voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 13)),
    evans.RhythmHandler(
        evans.talea([1, 7, 4, 2, 10, -2, 1, 1, 2, 2, 2, 4, 4, 12, -100], 64)
    ),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(evans.tuplet([(1, 1, 1)])),
        selector=trinton.select_leaves_by_index(
            [
                2,
            ],
            pitched=True,
        ),
    ),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(evans.tuplet([(1, 1, 1)])),
        selector=trinton.select_leaves_by_index(
            [
                5,
            ],
            pitched=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Tie()], selector=trinton.select_leaves_by_index([1, 7])
    ),
    evans.PitchHandler(
        [
            "e'",
            fractions.Fraction(23, 4),
            "e'",
            fractions.Fraction(29, 4),
            "fs'",
            "e'",
            fractions.Fraction(27, 4),
            "cqs'",
            "e'",
            "fs'",
            "fs'",
            "fs'",
            "e'",
            "d'",
            "b",
        ]
    ),
    trinton.force_accidentals_command(
        selector=trinton.select_logical_ties_by_index([1, 3], first=True, pitched=True)
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index(
            [
                0,
                2,
                5,
                9,
                10,
                11,
            ],
            pitched=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.select_logical_ties_by_index(
            [
                9,
                10,
                11,
                12,
                13,
            ],
            first=True,
            pitched=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Glissando(zero_padding=True)],
        selector=trinton.select_leaves_by_index(
            [0],
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("pmf"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin(">o"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                12,
                14,
                14,
            ],
            first=True,
            pitched=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin()], selector=trinton.select_leaves_by_index([-1])
    ),
    trinton.beam_groups(
        selector=trinton.ranged_selector(
            ranges=[
                range(0, 2),
                range(3, 5),
                range(5, 9),
                range(11, 16),
                range(16, 19),
            ],
            nested=True,
        )
    ),
    trinton.notehead_bracket_command(),
    voice=score["viola voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (14, 17)),
    evans.RhythmHandler(
        evans.talea([1, 1, 6, -2, 1, 4, 4, 5, -4, 1, 2, 4, 4, 4, 4, 4, -1, -100], 64)
    ),
    evans.PitchHandler(
        [
            "b",
            "cs'",
            "d'",
            "cqs'",
            "e'",
            "cs'",
            "e'",
            "cs'",
            "b",
            "cs'",
            "e'",
            "cs'",
            "e'",
            "dqs'",
        ]
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index(
            [
                5,
                8,
                9,
                10,
                11,
                13,
                14,
                15,
            ],
            pitched=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Glissando(zero_padding=True)],
        selector=trinton.select_leaves_by_index(
            [0, 1],
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    trinton.beam_groups(
        selector=trinton.ranged_selector(
            ranges=[
                range(0, 3),
                range(4, 10),
                range(11, 13),
                range(13, 16),
                range(16, 19),
            ],
            nested=True,
        )
    ),
    voice=score["viola voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (18, 22)),
    evans.RhythmHandler(
        evans.talea([1, 7, 2, 4, 4, 8, 4, 4, 4, 1, 2, 1, 4, 4, 4, 4, 2, 100], 64)
    ),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(evans.tuplet([(1, 1, 1)])),
        selector=trinton.select_leaves_by_index(
            [
                2,
            ],
            pitched=True,
        ),
    ),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(evans.tuplet([(1, 1, 1)])),
        selector=trinton.select_leaves_by_index(
            [
                9,
            ],
            pitched=True,
        ),
    ),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(evans.tuplet([(1, 1, 1)])),
        selector=trinton.select_leaves_by_index([-2], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Tie()],
        selector=trinton.select_leaves_by_index([1, -2], pitched=True),
    ),
    evans.PitchHandler(
        [
            "g'",
            "a'",
            "aqf'",
            "d''",
            "cs''",
            "b'",
            fractions.Fraction(51, 4),
            "b'",
            "cs''",
            "b'",
            "cs''",
            "cqs''",
            "b'",
            fractions.Fraction(53, 4),
            fractions.Fraction(51, 4),
            "b'",
            "a'",
            "fs'",
            fractions.Fraction(27, 4),
            "fs'",
            "e'",
            "g'",
        ]
    ),
    trinton.force_accidentals_command(
        selector=trinton.select_logical_ties_by_index([], first=True, pitched=True)
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index(
            [
                0,
                2,
            ],
            pitched=True,
        ),
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(19, 22)], nested=True),
        zero_padding=True,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">"), abjad.Articulation("tenuto")],
        selector=trinton.select_logical_ties_by_index(
            [
                4,
                5,
                6,
                10,
                11,
                13,
                15,
                16,
            ],
            first=True,
            pitched=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Glissando(zero_padding=True)],
        selector=trinton.select_logical_ties_by_index(
            [0, 15], first=True, pitched=True
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("f"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ffff"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                2,
                4,
                15,
                -1,
            ],
            first=True,
            pitched=True,
        ),
    ),
    trinton.beam_groups(
        selector=trinton.ranged_selector(
            ranges=[
                range(0, 3),
                range(
                    3,
                    5,
                ),
                range(5, 9),
                range(9, 12),
                range(12, 17),
                range(17, 23),
                range(23, 26),
            ],
            nested=True,
        )
    ),
    trinton.notehead_bracket_command(),
    voice=score["viola voice temp"],
)

# globals

for voice_name in [_ for _ in library.all_voice_names if _ != "viola voice"]:
    measures = abjad.select.group_by_measure(score[voice_name])

    for measure, signature in zip(measures, ts.cadenza_ts):
        first_leaf = abjad.select.leaf(measure, 0)
        abjad.attach(abjad.TimeSignature(signature), first_leaf)

trinton.remove_redundant_time_signatures(score=score)

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

library.blank_measure_by_hand(
    score=score,
    voice_names=["viola voice"],
    measures=[23],
)

for voice_name in library.all_voice_names_include_time_signature_context:
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        trinton.attachment_command(
            attachments=[
                abjad.LilyPondLiteral(
                    r"\once \override Staff.BarLine.transparent = ##f", "after"
                ),
                abjad.BarLine(".|:", "after"),
            ],
            selector=trinton.select_leaves_by_index([-1]),
        ),
        voice=score[voice_name],
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, (22,)),
        trinton.attachment_command(
            attachments=[
                abjad.LilyPondLiteral(
                    r"\once \override Staff.BarLine.transparent = ##f"
                ),
                abjad.LilyPondLiteral(
                    r"\once \override Staff.BarLine.bar-extent = #'(-2 . 2)",
                    site="after",
                ),
                abjad.BarLine(":|.", "after"),
            ],
            selector=trinton.select_leaves_by_index([-1]),
        ),
        voice=score[voice_name],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            library.movements[2],
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #0 { \column { \line { "After the preceeding 6 seconds:" } \line { "- the clocks stop" } \line { "- all electronics are deactivated, including the viola's amplification" } \line { "- without removing the viola from its position, the violist places their chin on the chin rest" } \line { "- the violist places the palm of their left hand under the neck of the instrument, and wraps the fingers around to the strings, as in ordinary playing position" } \line { "- the violist places their bow across the strings, as in ordinary playing position" } \line { "- the violist plays the following passage, fingering the notated pitches' ordinary playing positions on the fingerboard, despite the strained position of the body, despite the instrument's alterations" } \line { "- the passage is played in its entirety without vibrato, not romantically, nevertheless struggling for the tenderness of the material" } \line { "- when the violist is finished, they assume their previous position, the amplification is reactivated, the clocks are reset, and the piece resumes." } } }""",
            ),
            # abjad.LilyPondLiteral(r"\once \override Staff.TextScript.Y-extent = ##f"),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \fontsize #5 \override #'(font-name . "Bodoni72 Book Italic") { \hspace #20 "Fine" }"""
                ),
                r"- \tweak padding 30",
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

library.silence(
    score=score,
    measures=[1, 23],
    timestamps=[r"""6\'46\" - 6\'52\"""", r"""0\" - 12\""""],
)

for voice_name in library.all_voice_names_include_time_signature_context:
    trinton.make_music(
        lambda _: trinton.select_target(_, (23,)),
        trinton.attachment_command(
            attachments=[
                abjad.LilyPondLiteral(
                    r"\once \override Staff.BarLine.transparent = ##f", site="after"
                ),
                abjad.LilyPondLiteral(
                    r"""\once \override Staff.BarLine.glyph-name = "||" """,
                    site="absolute_after",
                ),
            ],
            selector=trinton.select_leaves_by_index([-1]),
        ),
        voice=score[voice_name],
    )

for measure in [9, 17]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\break", site="after")],
            selector=trinton.select_leaves_by_index([-1]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )

library.forbid_break(score=score, measures=[1, 22])

# cutaway

trinton.whiteout_empty_staves(
    score=score,
    cutaway="blank",
    voice_names=[_ for _ in library.all_voice_names if _ != "viola voice"],
)

# parts

trinton.extract_parts(score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/sections/20",
    build_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/build",
    segment_name="20",
    includes=[
        "/Users/trintonprater/scores/bibliopegy/bibliopegy/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
