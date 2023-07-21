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


def make_timestamp_markups(global_context):
    measures = abjad.select.group_by_measure(global_context)
    global_context_length = len(measures)
    measure_range = range(1, global_context_length + 1)

    for measure, number in zip(measures, measure_range):
        leaf = abjad.select.leaf(measure, 0)
        mm_rest = abjad.MultimeasureRest(1, multiplier=(1, 4))

        indicators = abjad.get.indicators(leaf)

        abjad.attach(
            abjad.Markup(
                f"""\markup \override #'(font-name . "Bodoni72 Book") \\fontsize #3 \center-column {{ \"{number}\\\"\" }}""",
            ),
            mm_rest,
        )

        abjad.attach(
            abjad.LilyPondLiteral(
                r"\once \override MultiMeasureRest.transparent = ##t", "opening"
            ),
            mm_rest,
        )

        for indicator in indicators:
            abjad.attach(indicator, mm_rest)

        abjad.mutate.replace(
            leaf,
            mm_rest,
        )


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
        if second > 60:
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
        r"""\markup \override #'(font-name . "Source Han Serif SC Bold") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #8 \box { \center-column { \line{ I. 鬼火 } \line { ( 粦 ) } } }""",
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
                )

            else:
                abjad.glissando(
                    with_grace,
                    abjad.Tweak(rf"- \tweak color #{color}"),
                    hide_middle_note_heads=True,
                    allow_repeats=True,
                    allow_ties=True,
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
                    )

                else:
                    abjad.glissando(
                        with_grace,
                        abjad.Tweak(rf"- \tweak color #{color}"),
                        hide_middle_note_heads=True,
                        allow_repeats=True,
                        allow_ties=True,
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


# rhythm


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
    "60": abjad.MetronomeMark.make_tempo_equation_markup((1, 8), 60),
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
