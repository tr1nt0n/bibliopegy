import abjad
import baca
import evans
import fractions
import itertools
import math
import trinton
import random
import quicktions
from abjadext import rmakers
from abjadext import microtones
from itertools import cycle
from bibliopegy import library

# score


def bibliopegy_score(time_signatures):
    score = trinton.make_empty_score(
        instruments=[
            abjad.Piano(),
            abjad.Viola(),
            abjad.Flute(),
            abjad.BassFlute(),
            abjad.Violin(),
            abjad.BassClarinet(),
            abjad.Percussion(),
            abjad.Cello(),
            abjad.Cello(),
            abjad.Cello(),
            abjad.TenorTrombone(),
            abjad.BassTrombone(),
            abjad.Percussion(),
        ],
        groups=[
            1,
            1,
            3,
            2,
            3,
            3,
        ],
        inner_staff=["SquareBracketGroup"],
        staff_types=[
            "UnmeteredStaff",
            "Staff",
            [
                "UnmeteredStaff",
                "UnmeteredStaff",
                "UnmeteredStaff",
            ],
            [
                "UnmeteredStaff",
                "UnmeteredStaff",
            ],
            [
                "UnmeteredStaff",
                "UnmeteredStaff",
                "UnmeteredStaff",
            ],
            [
                "UnmeteredStaff",
                "UnmeteredStaff",
                "UnmeteredStaff",
            ],
        ],
        time_signatures=time_signatures,
        filler=abjad.Skip,
    )

    return score


# immutables

all_voice_names = eval(
    """[
        "piano voice",
        "viola voice",
        "flute voice",
        "bassflute voice",
        "violin voice",
        "bassclarinet voice",
        "percussion 1 voice",
        "cello 1 voice",
        "cello 2 voice",
        "cello 3 voice",
        "tenortrombone voice",
        "basstrombone voice",
        "percussion 2 voice"
    ]"""
)

# markup


def boxed_markup(
    string,
    selector=trinton.select_leaves_by_index(
        [0],
        pitched=True,
    ),
    site="after",
):
    literal = abjad.LilyPondLiteral(rf'\boxed-markup "{string}" 1', site)
    command = trinton.attachment_command(
        attachments=[literal],
        selector=selector,
    )
    return command


def return_boxed_markup(string, font=None):
    if font == "italic":
        boxed_string = rf"""\markup \override #'(font-name . "Bodoni72 Book Italic") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line {{ {string} }}"""
    else:
        boxed_string = rf"""\markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line {{ {string} }}"""

    return boxed_string


def return_fractional_scratch_markup(fraction):
    markup = rf"""\markup \with-color "darkred" {{ {{ \fraction {fraction} }} \hspace #0.5 {{ scratch }} }}"""

    return markup


all_instrument_names = [
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { tape }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { viola }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { flute }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { bass flute }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { violin }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { bass clarinet }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { percussion i }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { violoncello i }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { violoncello ii }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { violoncello iii }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { tenor trombone }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { bass trombone }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { percussion ii }'
        ),
    ),
]

all_short_instrument_names = [
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic"){ tp. }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { vla. }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { fl. }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { b. fl. }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { vln. }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic"){ b. cl. }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { perc. i }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { vc. i }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { vc. ii }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { vc. iii }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { t. tbn. }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { b. tbn. }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { perc. ii }'
        ),
    ),
]


def write_instrument_names(score):
    for voice_name, markup in zip(all_voice_names, all_instrument_names):
        trinton.attach(
            voice=score[voice_name],
            leaves=[0],
            attachment=markup,
        )


def write_short_instrument_names(score):
    for voice_name, markup in zip(all_voice_names, all_short_instrument_names):
        trinton.attach(
            voice=score[voice_name],
            leaves=[0],
            attachment=markup,
        )


def write_timestamps(global_context, second_range, measure_range):
    second_range = range(second_range[0], second_range[-1] + 1)
    markup_list = []
    for second in second_range:
        if second > 59:
            second_stamp = second % 60
            minute_stamp = second / 60
            minute_stamp = math.floor(minute_stamp)
            string = f"{minute_stamp}\\'{second_stamp}\\\""
            markup = abjad.Markup(
                f"""\markup \override #'(font-name . "Bodoni72 Book Italic") \\fontsize #6 \center-column {{ \"{string}\"  }}"""
            )
            markup_list.append(markup)
        else:
            string = f'{second}\\"'
            markup = abjad.Markup(
                f"""\markup \override #'(font-name . "Bodoni72 Book Italic") \\fontsize #6 \center-column {{ \"{string}\"  }}"""
            )
            markup_list.append(markup)

    trinton.make_music(
        lambda _: trinton.select_target(_, measure_range),
        trinton.linear_attachment_command(
            attachments=markup_list,
            selector=abjad.select.leaves,
        ),
        voice=global_context,
    )


movements = [
    abjad.Markup(
        r"""\markup \override #'(font-name . "Source Han Serif SC Bold") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #8 \box { \center-column { \line { I. 鬼火 } \line { ( 粦 ) } } }""",
    ),
    abjad.Markup(
        r"""\markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #8 \box \line { II. Perros de paja }""",
    ),
    abjad.Markup(
        r"""\markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #8 \box { \center-column { \line { III. Five Dunes } \line { ( desiderata ) } } }""",
    ),
]

movements = [abjad.bundle(movement, r"- \tweak padding #14") for movement in movements]


# notation tools


def set_all_time_signatures(score):
    for voice_name in all_voice_names:
        abjad.attach(
            abjad.TimeSignature((1, 8)), abjad.select.leaf(score[voice_name], 0)
        )


def duration_line(selector=trinton.pleaves(), color=False, sustained=False):
    def line(argument):
        selections = selector(argument)
        pties = abjad.select.logical_ties(selections, pitched=True, grace=False)

        if sustained is True:

            relevant_leaf = pties[-1][-1]

            tie_pitch = relevant_leaf.written_pitch.get_name()
            container = abjad.AfterGraceContainer(f"{tie_pitch}16")
            abjad.attach(container, relevant_leaf)

            with_grace = abjad.select.with_next_leaf(pties)

            abjad.override(with_grace[-1]).NoteHead.transparent = True
            abjad.attach(
                abjad.LilyPondLiteral(
                    r"\once \override NoteHead.no-ledgers = ##t", "before"
                ),
                with_grace[-1],
            )
            abjad.attach(
                abjad.LilyPondLiteral(
                    r"\once \override Accidental.stencil = ##f", "before"
                ),
                with_grace[-1],
            )

            if color is False:
                abjad.glissando(
                    with_grace,
                    hide_middle_note_heads=True,
                    allow_repeats=True,
                    allow_ties=True,
                    zero_padding=True,
                )

            else:
                abjad.glissando(
                    with_grace,
                    abjad.Tweak(rf"- \tweak color #{color}"),
                    hide_middle_note_heads=True,
                    allow_repeats=True,
                    allow_ties=True,
                    zero_padding=True,
                )

        else:

            for tie in pties:
                tie_pitch = tie[-1].written_pitch.get_name()
                container = abjad.AfterGraceContainer(f"{tie_pitch}16")
                abjad.attach(container, tie[-1])

                with_grace = abjad.select.with_next_leaf(tie)

                abjad.override(with_grace[-1]).NoteHead.transparent = True
                abjad.attach(
                    abjad.LilyPondLiteral(
                        r"\once \override NoteHead.no-ledgers = ##t", "before"
                    ),
                    with_grace[-1],
                )
                abjad.attach(
                    abjad.LilyPondLiteral(
                        r"\once \override Accidental.stencil = ##f", "before"
                    ),
                    with_grace[-1],
                )

                if color is False:
                    abjad.glissando(
                        with_grace,
                        hide_middle_note_heads=True,
                        allow_repeats=True,
                        allow_ties=True,
                        zero_padding=True,
                    )

                else:
                    abjad.glissando(
                        with_grace,
                        abjad.Tweak(rf"- \tweak color #{color}"),
                        hide_middle_note_heads=True,
                        allow_repeats=True,
                        allow_ties=True,
                        zero_padding=True,
                    )

    return line


def change_lines(
    lines,
    selector=trinton.select_leaves_by_index([0], pitched=True),
    clef="treble",
):
    def change(argument):
        selections = selector(argument)
        for selection in selections:
            abjad.attach(abjad.Clef(clef), selection)
            abjad.attach(
                abjad.LilyPondLiteral(
                    rf"\staff-line-count {lines}",
                    site="absolute_before",
                ),
                selection,
            )

    return change


# pitch

_bass_clarinet_multiphonics = {
    1: (
        8,
        r"""\markup \override \with-color "seagreen" #'(size . .6) { \woodwind-diagram #'bass-clarinet #'((cc . (one two)) (lh . (thumb)) (rh . (two)))}""",
    ),
    2: (
        6,
        r"""\markup \override \with-color "seagreen" #'(size . .6) { \woodwind-diagram #'bass-clarinet #'((cc . (one two three four five six)) (lh . ()) (rh . (e)))}""",
    ),
    3: (
        2.5,
        r"""\markup \with-color "seagreen" \override #'(size . .6) { \woodwind-diagram #'bass-clarinet #'((cc . (two three four five)) (lh . (thumb)) (rh . ()))}""",
    ),
}

# rhythm


def dune_ii(voices, measures, rotation=0, dynamics=["ff"]):

    talea_seed = eval("""[[4, 2, 2,], [2, 3, 2], [4, 3, 2], [2, 2, 2]]""")
    counts_seed = eval("""[[0, 1], [2, 1], [0, 2], [-1, 2]]""")

    talea = trinton.rotated_sequence(talea_seed, rotation)
    talea = abjad.sequence.flatten(talea)

    counts = trinton.rotated_sequence(counts_seed, rotation + talea[1] * -1)
    counts = abjad.sequence.flatten(counts)

    for voice in voices:
        participant_number = voices.index(voice)

        if participant_number % 2 == 0:
            ratio = "13/2"

        else:
            ratio = "7/1"

        if voice.name == "bassflute voice":
            fundamental = "ef'"

        else:
            fundamental = "ef"

        rest_leaves = [_ for _ in range(0, len(voices))]

        rest_leaves.pop(participant_number)

        dynamic_list = [
            (abjad.StartHairpin("o<|"), trinton.make_custom_dynamic(_))
            for _ in dynamics
        ]

        line_spanner_list = []

        for pair in dynamic_list:
            line_spanner_list.append(pair[0])
            line_spanner_list.append(pair[-1])

        trinton.make_music(
            lambda _: trinton.select_target(_, measures),
            evans.RhythmHandler(
                evans.talea(talea, 32, extra_counts=counts, treat_tuplets=False),
            ),
            trinton.force_rest(
                selector=trinton.patterned_tie_index_selector(rest_leaves, len(voices))
            ),
            trinton.treat_tuplets(),
            evans.PitchHandler([fundamental]),
            evans.PitchHandler([ratio], as_ratios=True),
            trinton.force_accidentals_command(
                selector=trinton.logical_ties(first=True, pitched=True, grace=False),
            ),
            library.duration_line(),
            trinton.linear_attachment_command(
                attachments=cycle(line_spanner_list),
                selector=trinton.logical_ties(first=True, pitched=True),
            ),
            voice=voice,
        )

        if voice.name == "bassflute voice":
            trinton.make_music(
                lambda _: trinton.select_target(_, measures),
                trinton.ottava_command(
                    selector=trinton.select_leaves_by_index([0, -1], pitched=True)
                ),
                voice=voice,
            )


def trombone_alpha(voices, measures, rotation=0, dynamics=["ff"]):

    talea_seed = eval("""[[3, 2, 5,], [4, 3, 4,], [2, 5, 2,], [2, 3, 4,]]""")
    counts_seed = eval("""[[0, 4], [-2, 1], [0, 5], [-3, 2]]""")

    for voice in voices:
        participant_number = voices.index(voice)

        if voice.name == "tenortrombone voice":
            ratio = "160/81"

        elif voice.name == "basstrombone voice":
            ratio = "13/8"
            rotation = rotation + 1

        talea = trinton.rotated_sequence(talea_seed, rotation)
        talea = abjad.sequence.flatten(talea)

        counts = trinton.rotated_sequence(counts_seed, rotation + talea[1] * -1)
        counts = abjad.sequence.flatten(counts)

        rest_leaves = [_ for _ in range(0, len(voices))]

        rest_leaves.pop(participant_number)

        dynamic_list = [
            (abjad.StartHairpin("o<|"), trinton.make_custom_dynamic(_))
            for _ in dynamics
        ]

        line_spanner_list = []

        for pair in dynamic_list:
            line_spanner_list.append(pair[0])
            line_spanner_list.append(pair[-1])

        trinton.make_music(
            lambda _: trinton.select_target(_, measures),
            evans.RhythmHandler(
                evans.talea(talea, 32, extra_counts=counts, treat_tuplets=False),
            ),
            trinton.force_rest(
                selector=trinton.patterned_tie_index_selector(rest_leaves, len(voices))
            ),
            trinton.treat_tuplets(),
            evans.PitchHandler(["d,"]),
            evans.PitchHandler([ratio], as_ratios=True),
            trinton.force_accidentals_command(
                selector=trinton.logical_ties(first=True, pitched=True, grace=False),
            ),
            library.duration_line(),
            trinton.linear_attachment_command(
                attachments=cycle(line_spanner_list),
                selector=trinton.logical_ties(first=True, pitched=True),
            ),
            trinton.hooked_spanner_command(
                string=r"""\markup \with-color "darksalmon" { "with vinyl covers" }""",
                selector=trinton.select_leaves_by_index([0, -1], pitched=True),
                padding=5.5,
                right_padding=0,
                full_string=True,
                tweaks=[r"- \tweak color #(css-color 'darksalmon)"],
            ),
            voice=voice,
        )


def aftergrace(notes_string="c'16", selector=trinton.pleaves()):
    def grace(argument):
        selections = selector(argument)

        ties = abjad.select.logical_ties(selections)

        containers = [abjad.AfterGraceContainer(notes_string) for _ in ties]

        for container in containers:
            literal = abjad.LilyPondLiteral(
                r'\once \override Flag.stroke-style = #"grace"',
            )

            abjad.attach(literal, container[0])

        for container, tie in zip(containers, ties):
            abjad.attach(container, tie[-1])

    return grace


# tempi

metronome_marks = {
    "5/7": abjad.MetronomeMark.make_tempo_equation_markup(
        (1, 8), quicktions.Fraction(857, 20)
    ),
    "7/8": abjad.MetronomeMark.make_tempo_equation_markup(
        (1, 8), quicktions.Fraction(105, 2)
    ),
    "1/1": abjad.MetronomeMark.make_tempo_equation_markup((1, 8), 60),
    "7/5": abjad.MetronomeMark.make_tempo_equation_markup((1, 8), 84),
    "5/3": abjad.MetronomeMark.make_tempo_equation_markup((1, 8), 100),
}


def metronome_markups(met_string, parenthesis=False):
    if parenthesis is False:
        mark = abjad.LilyPondLiteral(
            [
                r"^ \markup {",
                r"  \raise #9 \with-dimensions-from \null",
                r"  \override #'(font-size . 5.5)",
                r"  \concat {",
                f"      {met_string.string[8:]}",
                r"  }",
                r"}",
            ],
            site="after",
        )
    else:
        mark = f"\markup {{ \override #'(font-size . 5.5) \concat {{ ( {met_string.string[8:]} ) }} }}"

    return mark


# time signatures


def write_simultaneous_time_signatures(voice, signature_pairs, measure_range):
    time_signatures = [abjad.TimeSignature(_) for _ in signature_pairs]
    new_skips = [abjad.Skip((1, 1), multiplier=_) for _ in signature_pairs]
    old_skips = trinton.select_target(voice, measure_range)

    new_skips_duration = abjad.get.duration(new_skips)
    old_skips_duration = abjad.get.duration(old_skips)

    if new_skips_duration != old_skips_duration:
        raise Exception(
            "Duration of time signatures in 8th notes must be equal to duration of selection in seconds."
        )

    for new_skip, time_signature in zip(new_skips, time_signatures):
        abjad.attach(
            abjad.LilyPondLiteral(
                r"\once \override Staff.BarLine.transparent = ##f", "before"
            ),
            new_skip,
        )

        abjad.attach(
            abjad.LilyPondLiteral(
                r"\once \override Staff.BarLine.transparent = ##f", "after"
            ),
            new_skip,
        )

        abjad.attach(
            abjad.LilyPondLiteral(
                r"\once \override Staff.TimeSignature.transparent = ##f", "before"
            ),
            new_skip,
        )

        abjad.attach(time_signature, new_skip)

    abjad.mutate.replace(old_skips, new_skips)

    new_range = trinton.select_target(voice, measure_range)
    reset_skip = abjad.select.with_next_leaf(new_range)[-1]
    abjad.attach(abjad.TimeSignature((1, 8)), reset_skip)
