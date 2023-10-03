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
from bibliopegy import pitch

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

upbow = abjad.bundle(abjad.Articulation("upbow"), r'- \tweak color #"darkmagenta"')

downbow = abjad.bundle(abjad.Articulation("downbow"), r'- \tweak color #"darkmagenta"')

# markups


def return_fraction_string_list(tups):
    return [
        rf"""\markup \with-color "darkred" \concat {{ \upright \fraction {tup[0]} {tup[-1]} \hspace #0.5 }}"""
        for tup in tups
    ]


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


def return_fractional_scratch_markup(fraction, abbreviated=False):
    if abbreviated is True:
        markup = rf"""\markup \with-color "darkred" {{ {{ \fraction {fraction} }} \hspace #0.5 {{ scr. }} }}"""
    else:
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
        r"""\markup \override #'(font-name . "Source Han Serif SC Bold") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #8 \box  \line { II,5. 胸がはち切れそうで }""",
    ),
    abjad.Markup(
        r"""\markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #8 \box { \center-column { \line { III. Five Dunes } \line { ( desiderata ) } } }""",
    ),
]

movements = [abjad.bundle(movement, r"- \tweak padding #14") for movement in movements]

_viola_processing_markups = {
    "1 on": abjad.Markup(
        r"""\markup \with-color "darkcyan" \override #'(font-name . "Source Han Serif SC") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #1 \box { "一 on" }""",
    ),
    "1 off": abjad.Markup(
        r"""\markup \with-color "darkcyan" \override #'(font-name . "Source Han Serif SC") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #1 \box { "一 off" }""",
    ),
    "2 on": abjad.Markup(
        r"""\markup \with-color "darkcyan" \override #'(font-name . "Source Han Serif SC") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #1 \box { "二 on" }""",
    ),
    "2 off": abjad.Markup(
        r"""\markup \with-color "darkcyan" \override #'(font-name . "Source Han Serif SC") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #1 \box { "二 off" }""",
    ),
    "3 on": abjad.Markup(
        r"""\markup \with-color "darkcyan" \override #'(font-name . "Source Han Serif SC") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #1 \box { "三 on" }""",
    ),
    "3 off": abjad.Markup(
        r"""\markup \with-color "darkcyan" \override #'(font-name . "Source Han Serif SC") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #1 \box { "三 off" }""",
    ),
    "4 on": abjad.Markup(
        r"""\markup \with-color "darkcyan" \override #'(font-name . "Source Han Serif SC") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #1 \box { "四 on" }""",
    ),
    "4 off": abjad.Markup(
        r"""\markup \with-color "darkcyan" \override #'(font-name . "Source Han Serif SC") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #1 \box { "四 off" }""",
    ),
}

# formatting tools


def forbid_break(score, measures):
    for measure in measures:
        trinton.make_music(
            lambda _: trinton.select_target(_, (measure,)),
            trinton.attachment_command(
                attachments=[abjad.LilyPondLiteral(r"\noBreak", site="after")],
                selector=trinton.select_leaves_by_index([0]),
            ),
            voice=score["Global Context"],
        )


def silence(score, measures, timestamps):
    for measure, timestamp in zip(measures, timestamps):
        trinton.make_music(
            lambda _: trinton.select_target(_, (measure,)),
            trinton.attachment_command(
                attachments=[
                    abjad.LilyPondLiteral(
                        r"\set Score.proportionalNotationDuration = #(ly:make-moment 1 140)",
                        site="absolute_before",
                    ),
                    abjad.Markup(
                        rf"""\markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 {{ " {timestamp} "  }}"""
                    ),
                    abjad.LilyPondLiteral(
                        r"\set Score.proportionalNotationDuration = #(ly:make-moment 1 60)",
                        site="absolute_after",
                    ),
                ],
                selector=trinton.select_leaves_by_index([0]),
            ),
            voice=score["Global Context"],
        )


# notation tools


def viola_bridge_staff(selector=trinton.pleaves()):
    def staff(argument):
        selections = selector(argument)
        abjad.attach(abjad.Clef("percussion"), selections[0])
        abjad.attach(
            abjad.LilyPondLiteral(
                [
                    r"\staff-line-count 3",
                    r"\override Staff.StaffSymbol.line-positions = #'(5 3 -5)",
                    r"\override Staff.Clef.stencil = #ly:text-interface::print",
                    r"""\override Staff.Clef.text = \markup { \fontsize #3.5 \override #'(font-name . "ekmelos") \char ##xe078 }""",
                    r"\override Accidental.stencil = ##f",
                    r"\override Dots.staff-position = #2",
                    r"\override Glissando.bound-details.left.padding = #0.5",
                    r"\override Glissando.bound-details.right.padding = #0.5",
                    r"\override NoteHead.X-extent = #'(0 . 0)",
                    r"\override NoteHead.transparent = ##t",
                    r"\override NoteHead.no-ledgers = ##t",
                ],
                site="absolute_before",
            ),
            selections[0],
        )

        abjad.attach(
            abjad.LilyPondLiteral(
                [
                    r"\staff-line-count 5",
                    r"\revert Staff.StaffSymbol.line-positions",
                    r"\revert Staff.Clef.stencil",
                    r"\revert Accidental.stencil",
                    r"\revert Dots.staff-position",
                    r"\revert Glissando.bound-details.left.padding",
                    r"\revert Glissando.bound-details.right.padding",
                    r"\revert NoteHead.X-extent",
                    r"\override NoteHead.transparent = ##f",
                    r"\override NoteHead.no-ledgers = ##f",
                ],
                site="absolute_after",
            ),
            selections[-1],
        )

        ties = abjad.select.logical_ties(selections)
        glissando_ties = abjad.select.exclude(ties, [-1])

        for tie in glissando_ties:
            if len(tie) == 1:
                abjad.attach(abjad.Glissando(zero_padding=True), tie[0])

            else:
                with_next_leaf = abjad.select.with_next_leaf(tie)
                abjad.attach(
                    abjad.LilyPondLiteral(
                        r"\once \override NoteColumn.glissando-skip = ##t", site="after"
                    ),
                    tie[0],
                )

                abjad.glissando(
                    with_next_leaf,
                    allow_repeats=True,
                    allow_ties=True,
                    zero_padding=True,
                )

    return staff


def remove_redundant_time_signatures(
    score, voice_names=["viola voice time signatures"]
):
    for voice_name in voice_names:
        time_signature_voice = score[voice_name]
        target = abjad.select.leaves(time_signature_voice)
        target = abjad.select.exclude(target, [-1])
        for leaf in target:
            next_leaf = abjad.select.with_next_leaf(leaf)[-1]
            ts_1 = abjad.get.indicator(leaf, abjad.TimeSignature)
            ts_2 = abjad.get.indicator(next_leaf, abjad.TimeSignature)

            if ts_1.pair == ts_2.pair:
                abjad.attach(
                    abjad.LilyPondLiteral(
                        r"\once \override Score.TimeSignature.stencil = ##f",
                        "before",
                    ),
                    next_leaf,
                )


def set_all_time_signatures(score, exclude_viola=False):
    if exclude_viola is True:
        voice_names = [_ for _ in all_voice_names if _ != "viola voice"]

    else:
        voice_names = all_voice_names
    for voice_name in voice_names:
        abjad.attach(
            abjad.TimeSignature((1, 8)), abjad.select.leaf(score[voice_name], 0)
        )


def duration_line(
    selector=trinton.pleaves(),
    color=False,
    sustained=False,
    viola=False,
    on_beat_graces=False,
):
    def line(argument):
        selections = selector(argument)
        if on_beat_graces is True:
            pties = abjad.select.logical_ties(
                selections,
                pitched=True,
            )
        else:
            pties = abjad.select.logical_ties(selections, pitched=True, grace=False)

        if sustained is True:

            relevant_leaf = pties[-1][-1]

            if isinstance(relevant_leaf, abjad.Chord):
                tie_pitches = relevant_leaf.written_pitches
                pitch_string = " "
                for pitch in tie_pitches:
                    pitch_string += pitch.get_name()
                    pitch_string += " "
                container = abjad.AfterGraceContainer(f"<{pitch_string}>16")
            else:
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

            if viola is True:
                abjad.attach(
                    abjad.LilyPondLiteral(
                        r'\once \override Flag.stroke-style = #"grace"', "before"
                    ),
                    with_grace[-1],
                )

                abjad.attach(
                    abjad.LilyPondLiteral(
                        r"\once \override NoteHead.X-extent = #'(0 . 0)", "opening"
                    ),
                    with_grace[-1],
                )

                middle_leaves = abjad.select.exclude(with_grace, [0, -1])
                for leaf in middle_leaves:
                    abjad.attach(
                        abjad.LilyPondLiteral(
                            r"\once \override Dots.staff-position = #2", "before"
                        ),
                        leaf,
                    )

                for leaf in abjad.select.leaves(with_grace):
                    abjad.detach(abjad.Tie, leaf)

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
                relevant_leaf = tie[-1]
                if isinstance(relevant_leaf, abjad.Chord):
                    tie_pitches = relevant_leaf.written_pitches
                    pitch_string = " "
                    for pitch in tie_pitches:
                        pitch_string += pitch.get_name()
                        pitch_string += " "
                    container = abjad.AfterGraceContainer(f"<{pitch_string}>16")
                else:
                    tie_pitch = relevant_leaf.written_pitch.get_name()
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

                if viola is True:
                    abjad.attach(
                        abjad.LilyPondLiteral(
                            r'\once \override Flag.stroke-style = #"grace"', "before"
                        ),
                        with_grace[-1],
                    )

                    abjad.attach(
                        abjad.LilyPondLiteral(
                            r"\once \override NoteHead.X-extent = #'(0 . 0)", "opening"
                        ),
                        with_grace[-1],
                    )

                    middle_leaves = abjad.select.exclude(with_grace, [0, -1])
                    for leaf in middle_leaves:
                        abjad.attach(
                            abjad.LilyPondLiteral(
                                r"\once \override Dots.staff-position = #2", "before"
                            ),
                            leaf,
                        )

                    for leaf in abjad.select.leaves(with_grace):
                        abjad.detach(abjad.Tie, leaf)

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


def color_onbeat_graces(
    selector=trinton.pleaves(),
):
    def color(argument):
        selections = selector(argument)
        for leaf in selections:
            abjad.label.color_leaves(leaf, "#darkred")

    return color


def clean_onbeat_graces(voices, measures):
    _cello_number_to_pitch = {
        "1": "b''",
        "2": "g''",
        "3": "e''",
    }

    for voice in voices:
        cello_number = voice.name[6:7]
        trinton.make_music(
            lambda _: trinton.select_target(_, measures),
            evans.PitchHandler([_cello_number_to_pitch[cello_number]]),
            trinton.transparent_noteheads(
                selector=trinton.select_leaves_by_index([0], pitched=True)
            ),
            trinton.attachment_command(
                attachments=[
                    abjad.LilyPondLiteral(r"\revert Staff.Stem.stencil", "opening"),
                ],
                selector=trinton.select_leaves_by_index([1], pitched=True),
            ),
            library.color_onbeat_graces(),
            library.duration_line(sustained=True, on_beat_graces=True),
            trinton.attachment_command(
                attachments=[
                    abjad.LilyPondLiteral(
                        r"\override Staff.Stem.stencil = ##f", "before"
                    ),
                ],
                selector=trinton.select_leaves_by_index([-1], pitched=True),
            ),
            voice=voice,
        )


def cello_trills(
    initial_width,
    y_scale,
    speed_factor,
    thickness=3,
    selector=trinton.select_leaves_by_index([0, -1], pitched=True),
):
    def trills(argument):
        if speed_factor > 0.9:
            raise Exception("Speed factor must be a float value under 1.")
        selections = selector(argument)

        it = iter(selections)
        tups = [*zip(it, it)]

        start_trill = abjad.bundle(
            abjad.LilyPondLiteral(r"\slow-fast-trill", site="after"),
            r"- \tweak color #(css-color 'goldenrod)",
            rf"- \tweak details.squiggle-Y-scale {y_scale}",
            rf"- \tweak details.squiggle-initial-width {initial_width}",
            rf"- \tweak details.squiggle-speed-factor {speed_factor}",
            rf"- \tweak thickness {thickness}",
        )

        stop_trill = abjad.StopTrillSpan()

        for tup in tups:
            abjad.attach(start_trill, tup[0])

            abjad.attach(stop_trill, tup[-1])

    return trills


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


def blank_measure_by_hand(score, voice_names, measures, clef_whitespace=False):
    for voice_name in voice_names:
        for measure in measures:
            trinton.make_music(
                lambda _: trinton.select_target(_, (measure,)),
                trinton.attachment_command(
                    attachments=[
                        abjad.LilyPondLiteral(
                            r"\stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff",
                            "before",
                        ),
                        abjad.LilyPondLiteral(
                            r"\once \override MultiMeasureRest.transparent = ##t",
                            "before",
                        ),
                        abjad.LilyPondLiteral(
                            r"\once \override Rest.transparent = ##t",
                            "before",
                        ),
                        abjad.LilyPondLiteral(
                            r"\once \override Staff.BarLine.transparent = ##f",
                            "absolute_before",
                        ),
                        abjad.LilyPondLiteral(
                            r"""\once \override Staff.BarLine.glyph-name = "!" """,
                            "absolute_after",
                        ),
                        abjad.LilyPondLiteral(
                            r"""\once \override Staff.BarLine.hair-thickness = 1 """,
                            "absolute_after",
                        ),
                        abjad.LilyPondLiteral(r"\stopStaff \startStaff", "after"),
                    ],
                    selector=trinton.select_leaves_by_index([0]),
                    tag=abjad.Tag("+SCORE"),
                ),
                voice=score[voice_name],
            )

            if clef_whitespace is True:
                clef_whitespace = abjad.LilyPondLiteral(
                    r"\once \override Staff.Clef.X-extent = ##f \once \override Staff.Clef.extra-offset = #'(-2.25 . 0)",
                    "before",
                )
                selection = trinton.select_target(score[voice_name], (measure,))
                relevant_leaf = selection[0]
                next_leaf = abjad.select.with_next_leaf(relevant_leaf)[-1]
                if abjad.get.has_indicator(next_leaf, abjad.Clef):
                    abjad.attach(clef_whitespace, next_leaf)


# pitch

_bass_clarinet_multiphonics = {
    1: (
        8,
        r"""\markup \with-color "seagreen" \override #'(size . .6) { \woodwind-diagram #'bass-clarinet #'((cc . (one two)) (lh . (thumb)) (rh . (two)))}""",
    ),
    2: (
        6,
        r"""\markup \with-color "seagreen" \override #'(size . .6) { \woodwind-diagram #'bass-clarinet #'((cc . (one two three four five six)) (lh . ()) (rh . (e)))}""",
    ),
    3: (
        2.5,
        r"""\markup \with-color "seagreen" \override #'(size . .6) { \woodwind-diagram #'bass-clarinet #'((cc . (two three four five)) (lh . (thumb)) (rh . ()))}""",
    ),
}

_viola_ii_strings_to_pitch_lists = {
    "I + II": [
        ["aqs", "a'"],
        ["aqs", "c'"],
        ["aqs", "bf"],
        ["aqs", "af'"],
        ["aqs", "g'"],
        ["aqs", "a"],
        ["aqs", "c'"],
        ["aqs", "bf"],
        ["aqs", "af'"],
        ["aqs", "g'"],
    ],
    "III + IV": [
        ["g", "c"],
        ["g", "b,"],
        ["g", "cs,"],
        ["g", "ef,"],
        ["g", "c,"],
        ["g", "bf,"],
        ["g", "b,"],
        ["g", "cs,"],
        ["g", "ef,"],
        ["g", "bf,"],
    ],
}


def pitch_viola_ii(
    index=0,
    strings=None,
    selector=trinton.pleaves(),
    period_selectors=None,
    alternation_indices=None,
):
    def pitch(argument):
        selections = selector(argument)
        if strings is not None:
            pitch_list = trinton.rotated_sequence(
                _viola_ii_strings_to_pitch_lists[strings], index
            )
            handler = evans.PitchHandler(pitch_list)
            handler(selections)

            selections = selector(argument)

            ties = abjad.select.logical_ties(selections)

            glissando_ties = abjad.select.exclude(ties, [-1])

            for tie in glissando_ties:
                abjad.attach(abjad.Glissando(zero_padding=True), tie[-1])

        else:
            pitch_list_1 = trinton.rotated_sequence(
                _viola_ii_strings_to_pitch_lists["I + II"], alternation_indices[0]
            )
            pitch_list_2 = trinton.rotated_sequence(
                _viola_ii_strings_to_pitch_lists["III + IV"], alternation_indices[1]
            )

            high_strings_selector = period_selectors[0]
            low_strings_selector = period_selectors[1]
            high_selections = high_strings_selector(selections)
            low_selections = low_strings_selector(selections)

            high_handler = evans.PitchHandler(pitch_list_1)
            low_handler = evans.PitchHandler(pitch_list_2)

            high_handler(high_selections)
            low_handler(low_selections)

            selections = selector(argument)

            high_strings_selector = period_selectors[0]
            low_strings_selector = period_selectors[1]
            high_selections = high_strings_selector(selections)
            low_selections = low_strings_selector(selections)

            alternation_groups = [high_selections, low_selections]

            for i, selection in enumerate(alternation_groups):
                groups = abjad.select.group_by_contiguity(
                    abjad.select.leaves(selection)
                )
                past_groups = trinton.rotated_sequence(groups, -1)

                for group, past_group in zip(groups[1:], past_groups[1:]):
                    handler = evans.GraceHandler(
                        boolean_vector=[1],
                        gesture_lengths=[
                            1,
                        ],
                        remove_skips=True,
                        forget=False,
                    )

                    handler(abjad.select.leaf(group, 0))

                    previous_leaf = abjad.select.leaf(past_group, -1)
                    previous_note_heads = previous_leaf.note_heads
                    if i == 0:
                        relevant_note_head = previous_note_heads[1]
                    else:
                        relevant_note_head = previous_note_heads[0]

                    relevant_pitch = relevant_note_head.written_pitch.number

                    grace_pitch_handler = evans.PitchHandler([relevant_pitch])

                    grace = abjad.select.with_previous_leaf(
                        abjad.select.leaf(group, 0)
                    )[0]

                    grace_pitch_handler(grace)

                    if i == 0:
                        grace = abjad.select.with_previous_leaf(
                            abjad.select.leaf(group, 0)
                        )[0]
                        abjad.attach(
                            abjad.LilyPondLiteral(
                                r"\set glissandoMap = #'((0 . 1) (1 . 0))",
                                site="before",
                            ),
                            grace,
                        )

                        abjad.attach(
                            abjad.LilyPondLiteral(r"\unset glissandoMap", site="after"),
                            grace,
                        )

                groups = abjad.select.group_by_contiguity(
                    abjad.select.leaves(selection)
                )

                for group in groups:
                    ties = abjad.select.logical_ties(group)
                    glissando_ties = abjad.select.exclude(ties, [-1])

                    for tie in glissando_ties:
                        abjad.attach(abjad.Glissando(zero_padding=True), tie[-1])

                selections = selector(argument)

                graces = abjad.select.leaves(selections, grace=True)

                for grace in graces:
                    abjad.attach(abjad.Glissando(zero_padding=True), grace)

    return pitch


# rhythm


def viola_i_rhythm(index=0, extra_counts=False):
    def viola_i(divisions):
        logistic_map_with_zeros = trinton.logistic_map(x=4, r=3.58, n=9)
        logistic_map = [_ for _ in logistic_map_with_zeros if _ > 0]
        logistic_map = trinton.rotated_sequence(logistic_map, index % len(logistic_map))
        offset_index = index + 1
        logistic_map_with_zeros = trinton.rotated_sequence(
            logistic_map_with_zeros, offset_index % len(logistic_map_with_zeros)
        )

        if extra_counts is True:
            container = abjad.Container(
                rmakers.talea(
                    divisions,
                    logistic_map,
                    64,
                    extra_counts=[
                        _ for _ in logistic_map_with_zeros if _ < 8 and _ % 3 != 0
                    ],
                )
            )

        else:
            container = abjad.Container(rmakers.talea(divisions, logistic_map, 64))

        period_selector = trinton.patterned_tie_index_selector([0, 3], 5)

        selections = period_selector(container)

        for tie in selections:
            duration = abjad.get.duration(tie, preprolated=True)

            sixty_fourth_amount = duration / abjad.Duration(1, 64)

            new_notes = [abjad.Note("c'64") for _ in range(int(sixty_fourth_amount))]

            abjad.mutate.replace(tie, new_notes)

        bunches = []

        non_bunches = []

        for tie in abjad.select.logical_ties(container):
            if abjad.get.duration(tie, preprolated=True) == abjad.Duration(1, 64):
                bunches.append(tie)

            else:
                non_bunches.append(tie)

        durational_groups = [bunches, non_bunches]

        for durational_group in durational_groups:
            beam_groups = abjad.select.group_by_contiguity(durational_group)

            for group in beam_groups:
                abjad.beam(group)

        rmakers.rewrite_dots(abjad.select.tuplets(container))
        rmakers.trivialize(abjad.select.tuplets(container))
        rmakers.rewrite_rest_filled(abjad.select.tuplets(container))
        rmakers.rewrite_sustained(abjad.select.tuplets(container))
        rmakers.extract_trivial(abjad.select.tuplets(container))
        trinton.respell_tuplets(abjad.select.tuplets(container))

        selections = abjad.mutate.eject_contents(container)

        return selections

    return viola_i


def viola_ii_rhythm(index=0):
    first_layer_map = [_ for _ in trinton.logistic_map(x=4, r=3.57, n=9) if _ > 2]
    first_layer_map = trinton.rotated_sequence(
        first_layer_map, index % len(first_layer_map)
    )
    second_layer_map = trinton.rotated_sequence(first_layer_map, 1)

    tuplet_ratios = []
    for _ in first_layer_map:
        first_number = math.floor(_ / 2)
        second_number = math.ceil(_ / 2)
        tuplet_ratio = (first_number, second_number)
        tuplet_ratios.append(tuplet_ratio)

    nested_ratios = []

    for _ in second_layer_map:
        first_number = math.ceil(_ / 2)
        second_number = math.floor(_ / 2)
        tuplet_ratio = (first_number, second_number)
        nested_ratios.append(tuplet_ratio)

    triple_nested_ratios = []

    for _ in first_layer_map:
        tuplet_ratio = [1 for _ in range(_)]
        tuplet_ratio = tuple(tuplet_ratio)
        triple_nested_ratios.append(tuplet_ratio)

    handler = evans.RhythmHandler(
        trinton.handwrite_nested_tuplets(
            tuplet_ratios=tuplet_ratios,
            nested_ratios=nested_ratios,
            triple_nested_ratios=triple_nested_ratios,
            nested_vectors=[1],
            nested_period=2,
            triple_nested_vectors=[0],
            triple_nested_period=2,
        )
    )

    return handler


def dune_ii(voices, measures, rotation=0, dynamics=["ff"]):

    talea_seed = eval("""[[4, 2, 2,], [2, 3, 2], [4, 3, 2], [2, 2, 2]]""")
    counts_seed = eval("""[[0, 1], [2, 1], [0, 2], [-1, 2]]""")

    talea = trinton.rotated_sequence(talea_seed, rotation)
    talea = abjad.sequence.flatten(talea)

    counts = trinton.rotated_sequence(counts_seed, rotation + talea[1] * -1)
    counts = abjad.sequence.flatten(counts)

    for voice in voices:
        participant_number = voices.index(voice)

        if participant_number % 3 == 0:
            ratios = ["21/4", "22/4"]

        elif participant_number % 3 == 1:
            ratios = [
                "23/4",
            ]

        else:
            ratios = ["22/4", "23/4"]

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
            evans.PitchHandler(ratios, as_ratios=True),
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
            ratio = "3/1"

        elif voice.name == "basstrombone voice":
            ratio = "160/81"
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


def cello_graces(selector=trinton.pleaves(), rotation=0, counter=1, counter_offset=0):
    def graces(argument):
        selections = selector(argument)
        parentage = abjad.get.parentage(abjad.select.leaf(selections, 0))
        voice_name = parentage.logical_voice()["voice"]
        voice_name = voice_name[7:-1]
        pties = abjad.select.logical_ties(selections, pitched=True, grace=False)

        talea_seed = eval("""[[1, 2, 1,], [2, 1, 4,], [1, 1, 2]]""")
        talea = trinton.rotated_sequence(talea_seed, rotation)
        talea = abjad.sequence.flatten(talea)

        name_count = counter

        for tie in pties:
            grace_name = f"{voice_name} graces {name_count}"
            tie_duration = abjad.get.duration(tie)
            talea_counter = name_count - 1
            offset = talea_counter + counter_offset
            grace_durations = trinton.rotated_sequence(talea, offset % 9)

            nested_music = rmakers.talea([tie_duration], grace_durations, 32)
            nested_music_logical_ties = abjad.select.logical_ties(nested_music)
            leaf_denominator = len(nested_music_logical_ties) + 1
            leaf_duration = tie_duration / leaf_denominator
            talea_container = abjad.Container(nested_music)
            contents = abjad.mutate.eject_contents(talea_container)

            container = trinton.on_beat_grace_container(
                contents=contents,
                anchor_voice_selection=tie,
                leaf_duration=leaf_duration,
                do_not_slur=True,
                name=grace_name,
            )

            name_count += 1

    return graces


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

_metronome_marks = {
    "5/7": abjad.MetronomeMark.make_tempo_equation_markup(
        (1, 8), quicktions.Fraction(857, 20)
    ),
    "7/8": abjad.MetronomeMark.make_tempo_equation_markup(
        (1, 8), quicktions.Fraction(105, 2)
    ),
    "1/1": abjad.MetronomeMark.make_tempo_equation_markup((1, 8), 60),
    "7/5": abjad.MetronomeMark.make_tempo_equation_markup((1, 8), 84),
    "5/3": abjad.MetronomeMark.make_tempo_equation_markup((1, 8), 100),
    "1/2": abjad.MetronomeMark.make_tempo_equation_markup((1, 8), 30),
}


def metronome_markups(
    met_string,
    height=8,
    parenthesis=False,
):
    if parenthesis is False:
        mark = abjad.LilyPondLiteral(
            [
                r"^ \markup {",
                rf"  \raise #{height} \with-dimensions-from \null",
                r"  \override #'(font-size . 4)",
                r"  \concat {",
                f"      {met_string.string[8:]}",
                r"  }",
                r"}",
            ],
            site="after",
        )
    else:
        mark = abjad.LilyPondLiteral(
            [
                r"^ \markup {",
                rf"  \raise #{height} \with-dimensions-from \null",
                r"  \override #'(font-size . 4)",
                r"  \concat {",
                f"      ( {met_string.string[8:]} )",
                r"  }",
                r"}",
            ],
            site="after",
        )

    return mark


# polymeter functions


def write_simultaneous_time_signatures(
    score, voice_name, signature_pairs, measure_range, reset=True
):
    time_signatures = [abjad.TimeSignature(_) for _ in signature_pairs]
    new_skips = [abjad.Skip((1, 1), multiplier=_) for _ in signature_pairs]
    old_skips = trinton.select_target(score[voice_name], measure_range)

    new_skips_duration = abjad.get.duration(new_skips)
    old_skips_duration = abjad.get.duration(old_skips)

    if new_skips_duration != old_skips_duration:
        raise Exception(
            "Duration of time signatures in 8th notes must be equal to duration of selection in seconds."
        )

    handler = evans.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(evans.talea([-1000], 4)),
        voice_name=f"{voice_name} time signatures",
    )

    handler(old_skips)

    time_signature_skips = trinton.select_target(
        score[f"{voice_name} time signatures"], measure_range
    )
    old_skips = trinton.select_target(score[f"{voice_name} temp"], measure_range)

    temp_voice_rests = []

    for new_skip, time_signature in zip(new_skips, time_signatures):
        temp_voice_rest = abjad.MultimeasureRest(
            (1, 1), multiplier=abjad.get.duration(new_skip)
        )
        temp_voice_rests.append(temp_voice_rest)

        abjad.attach(
            abjad.LilyPondLiteral(
                r"\once \override Staff.TimeSignature.transparent = ##f", "before"
            ),
            new_skip,
        )

        abjad.attach(time_signature, new_skip)

    abjad.attach(abjad.LilyPondLiteral(r"\voiceTwo", site="opening"), new_skips[0])

    abjad.mutate.replace(time_signature_skips, new_skips)
    abjad.mutate.replace(old_skips, temp_voice_rests)

    if reset is True:
        new_range = (measure_range[0], measure_range[-1] + 1)
    else:
        new_range = measure_range
    new_measure_selection = trinton.select_target(score[voice_name], new_range)
    if reset is True:
        reset_skip = new_measure_selection[-1]
        abjad.attach(abjad.TimeSignature((1, 8)), reset_skip)


def select_metered_measures(
    score,
    voice_name,
    second_range=(1,),
    measure_number_range=(1,),
    return_time_signatures=False,
):
    if len(measure_number_range) == 1:
        measure_indices = [_ - 1 for _ in measure_number_range]
    else:
        revised_range = range(measure_number_range[0] - 1, measure_number_range[1])
        measure_indices = [_ for _ in revised_range]

    if len(second_range) == 1:
        second_indices = [_ - 1 for _ in second_range]
    else:
        revised_range = range(second_range[0] - 1, second_range[1])
        second_indices = [_ for _ in revised_range]

    parentage = abjad.get.parentage(score[voice_name])
    outer_context = parentage.components[-1]
    global_context = outer_context["Global Context"]
    seconds = abjad.select.group_by_measure(global_context)

    target_seconds = []

    for i in second_indices:
        target_seconds.extend(seconds[i])

    target_timespans = [abjad.get.timespan(_) for _ in target_seconds]

    start_offset = target_timespans[0].offsets[0]
    stop_offset = target_timespans[-1].offsets[-1]
    relevant_timespan = abjad.Timespan(start_offset, stop_offset)

    time_signatures_in_second_range = []

    for component in score[f"{voice_name} time signatures"][:]:
        span = abjad.get.timespan(component)
        if span.intersects_timespan(relevant_timespan) is True:
            time_signatures_in_second_range.append(component)

    target_measures = []

    for i in measure_indices:
        target_measures.append(time_signatures_in_second_range[i])

    target_timespans = [abjad.get.timespan(_) for _ in target_measures]

    start_offset = target_timespans[0].offsets[0]
    stop_offset = target_timespans[-1].offsets[-1]
    relevant_timespan = abjad.Timespan(start_offset, stop_offset)

    out = []

    for component in score[f"{voice_name} temp"][:]:
        span = abjad.get.timespan(component)
        if span.intersects_timespan(relevant_timespan) is True:
            before_grace = abjad.get.before_grace_container(component)
            after_grace = abjad.get.after_grace_container(component)
            if before_grace is not None:
                out.append(before_grace)
            out.append(component)
            if after_grace is not None:
                out.append(after_grace)

    if return_time_signatures is True:
        return [abjad.get.indicator(_, abjad.TimeSignature) for _ in target_measures]
    else:
        return out


def make_metric_music(
    *args,
    score,
    voice_name,
    second_range=(1,),
    measure_number_range=(1,),
    preprocessor=None,
):
    target = select_metered_measures(
        score=score,
        voice_name=voice_name,
        second_range=second_range,
        measure_number_range=measure_number_range,
    )
    indicators = [_ for _ in abjad.get.indicators(abjad.select.leaf(target, 0))]
    selections = None
    signature_instances = select_metered_measures(
        score=score,
        voice_name=voice_name,
        second_range=second_range,
        measure_number_range=measure_number_range,
        return_time_signatures=True,
    )
    for arg in args:
        target = select_metered_measures(
            score=score,
            voice_name=voice_name,
            second_range=second_range,
            measure_number_range=measure_number_range,
        )
        if isinstance(arg, evans.RhythmHandler):
            if preprocessor is not None:
                durations = [abjad.Duration(_.pair) for _ in signature_instances]
                divisions = preprocessor(durations)
            else:
                divisions = signature_instances
            nested_music = arg(divisions)
            container = abjad.Container(nested_music)

            for indicator in indicators:
                abjad.detach(indicator, abjad.select.leaf(target, 0))
                abjad.attach(indicator, abjad.select.leaf(container, 0))

            selections = abjad.mutate.eject_contents(container)
            abjad.mutate.replace(target, selections)

        elif isinstance(arg, evans.RewriteMeterCommand):
            target_copy = abjad.mutate.copy(target[:])
            metered_staff = rmakers.wrap_in_time_signature_staff(
                target_copy, signature_instances
            )
            arg(metered_staff)
            selections = abjad.mutate.eject_contents(metered_staff)
            abjad.mutate.replace(target, selections)
        else:
            arg(target)
