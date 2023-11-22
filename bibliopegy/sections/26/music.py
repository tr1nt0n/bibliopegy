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

score = library.bibliopegy_score([(1, 8) for _ in range(1, 54)])

# music commands

# tape music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 15)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    evans.PitchHandler([-1]),
    library.change_lines(lines=2, clef="percussion"),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\override NoteHead.stencil = #ly:text-interface::print",
                    r"""\override NoteHead.text = \markup \with-color "forestgreen" \override #'(font-name . "Source Han Serif SC Bold") { 是 }""",
                ],
                site="before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    library.duration_line(color="(css-color 'forestgreen)"),
    voice=score["piano voice"],
    preprocessor=trinton.fuse_preprocessor((7,)),
)

# viola music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 15)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    evans.PitchHandler([5]),
    library.duration_line(),
    trinton.noteheads_only(),
    library.change_lines(lines=4, clef="varpercussion"),
    trinton.linear_attachment_command(
        attachments=[
            library._viola_processing_markups["1 on"],
            trinton.make_custom_dynamic("sfffz pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
            library._viola_processing_markups["1 off"],
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 6, 6, -1, -1]),
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "mediumblue" { +45° }""",
            r"""\markup \with-color "mediumblue" { -20° }""",
            r"""\markup \with-color "mediumblue" { +20° }""",
            r"""\markup \with-color "mediumblue" { -45° }""",
            r"""\markup \with-color "mediumblue" { +45° }""",
            r"""\markup \with-color "mediumblue" { +20° }""",
            r"""\markup \with-color "mediumblue" { +35° }""",
            r"""\markup \with-color "mediumblue" { 0° }""",
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                2,
                2,
                3,
                3,
                6,
                6,
                10,
                10,
                11,
                11,
                13,
                13,
                -1,
            ],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=5.5,
        full_string=True,
        tweaks=[r"""- \tweak color #(css-color 'mediumblue)"""],
        command="One",
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "indianred" { "dietro pont. ( close to tailpiece as poss. )" }""",
            r"""\markup \with-color "indianred" { "dietro pont. ( between bridge and tailpiece )" }""",
            r"""\markup \with-color "indianred" { "dietro pont. ( close to tailpiece as poss. )" }""",
        ],
        selector=trinton.select_leaves_by_index(
            [0, 6, 6, -1], pitched=True, grace=False
        ),
        style="solid-line-with-arrow",
        padding=3.5,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'indianred)"],
        command="Two",
    ),
    voice=score["viola voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (17, 53)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    library.duration_line(),
    trinton.noteheads_only(),
    library.change_lines(lines=1, clef="percussion"),
    library.boxed_markup(string="Rotate Baoding Balls in Hand"),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("p"), abjad.StartHairpin("--"), abjad.StopHairpin()],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["viola voice"],
)

# flute music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 15)),
    evans.RhythmHandler(
        evans.talea([-4, 3, 1, -2, 4, 1, -2, 3, 1], 32),
    ),
    trinton.force_rest(selector=trinton.select_logical_ties_by_index([-1])),
    evans.PitchHandler(["b''", "a'", "b''", "a'''", "b''", "a'", "b''", "bqs'''"]),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.StartTrillSpan(interval=abjad.NamedInterval("m3")),
                r"- \tweak color #(css-color 'goldenrod)",
            ),
        ],
        selector=trinton.patterned_tie_index_selector(
            [0], 2, pitched=True, first=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.StartSlur(),
        ],
        selector=trinton.patterned_tie_index_selector(
            [0], 4, pitched=True, first=True, grace=False
        ),
        direction=abjad.DOWN,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.StartSlur(),
        ],
        selector=trinton.patterned_tie_index_selector(
            [2], 4, pitched=True, first=True, grace=False
        ),
        direction=abjad.UP,
    ),
    library.duration_line(
        selector=trinton.patterned_tie_index_selector(
            [0], 2, pitched=True, first=True, grace=False
        )
    ),
    trinton.attachment_command(
        attachments=[
            abjad.StopTrillSpan(),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.StopSlur(),
            abjad.Articulation("staccato"),
            abjad.StopTrillSpan(),
        ],
        selector=trinton.patterned_tie_index_selector(
            [1], 2, pitched=True, first=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 9, -1], first=True, pitched=True
        ),
    ),
    voice=score["flute voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((1,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (36, 38)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    library.duration_line(),
    trinton.noteheads_only(),
    library.change_lines(lines=1, clef="percussion"),
    library.boxed_markup(string="Rotate Baoding Balls in Hand"),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("p"), abjad.StartHairpin("--"), abjad.StopHairpin()],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["flute voice"],
)

# bass flute music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 15)),
    evans.RhythmHandler(
        evans.talea([-6, 5, 1, -2, 4, 1, -2, 3, 1], 32),
    ),
    trinton.force_rest(selector=trinton.select_logical_ties_by_index([-1])),
    evans.PitchHandler(["b''", "a'''", "b''", "a'", "b''", "bqs'''", "b''", "a'"]),
    library.duration_line(
        selector=trinton.patterned_tie_index_selector(
            [0], 2, pitched=True, first=True, grace=False
        )
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.StartTrillSpan(interval=abjad.NamedInterval("m3")),
                r"- \tweak color #(css-color 'goldenrod)",
            ),
        ],
        selector=trinton.patterned_tie_index_selector(
            [0], 2, pitched=True, first=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.StartSlur(),
        ],
        selector=trinton.patterned_tie_index_selector(
            [0], 4, pitched=True, first=True, grace=False
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.StartSlur(),
        ],
        selector=trinton.patterned_tie_index_selector(
            [2], 4, pitched=True, first=True, grace=False
        ),
        direction=abjad.DOWN,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.StopSlur(),
            abjad.Articulation("staccato"),
            abjad.StopTrillSpan(),
        ],
        selector=trinton.patterned_tie_index_selector(
            [1], 2, pitched=True, first=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 9, -1], first=True, pitched=True
        ),
    ),
    voice=score["bassflute voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((1,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (36, 38)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    library.duration_line(),
    trinton.noteheads_only(),
    library.change_lines(lines=1, clef="percussion"),
    library.boxed_markup(string="Rotate Baoding Balls in Hand"),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("p"), abjad.StartHairpin("--"), abjad.StopHairpin()],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["bassflute voice"],
)

# violin music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 15)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    evans.PitchHandler(["gqs'''"]),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    library.duration_line(),
    trinton.ottava_command(
        selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.linear_attachment_command(
        attachments=[
            evans.make_fancy_gliss(
                1,
                1,
                1,
                2,
                1,
                1,
                1,
                1,
                2,
                1,
                1,
                2,
                1,
                1,
                1,
                1,
                1,
                2,
                1,
                1,
                1,
                2,
                1,
                2,
                1,
                1,
                1,
                1,
                1,
                1,
                1,
                1,
                1,
                2,
            ),
            trinton.make_custom_dynamic("sfffz pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 6, 6, -1], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string="""\markup \with-color "darksalmon" { \musicglyph "noteheads.s0harmonic" "  11° / D4 ( III )" }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=7.5,
        right_padding=0,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'darksalmon)"],
        command="One",
    ),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (35, 39)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    library.duration_line(),
    trinton.noteheads_only(),
    library.change_lines(lines=1, clef="percussion"),
    library.boxed_markup(string="Rotate Baoding Balls in Hand"),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("p"), abjad.StartHairpin("--"), abjad.StopHairpin()],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["violin voice"],
)

# bass clarinet music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 15)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    evans.PitchHandler(["eqs"]),
    library.duration_line(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 6, 6, -1]),
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (34, 40)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    library.duration_line(),
    trinton.noteheads_only(),
    library.change_lines(lines=1, clef="percussion"),
    library.boxed_markup(string="Rotate Baoding Balls in Hand"),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("p"), abjad.StartHairpin("--"), abjad.StopHairpin()],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["bassclarinet voice"],
)

# percussion 1 music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 11)),
    evans.RhythmHandler(
        evans.talea([1], 32, extra_counts=[1]),
    ),
    evans.PitchHandler([2, 5]),
    library.duration_line(),
    library.change_lines(lines=4, clef="percussion"),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("sfffz"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 30, -1]),
    ),
    voice=score["percussion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (32, 42)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    library.duration_line(),
    trinton.noteheads_only(),
    library.change_lines(lines=1, clef="percussion"),
    library.boxed_markup(string="Rotate Baoding Balls in Hand"),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("p"), abjad.StartHairpin("--"), abjad.StopHairpin()],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["percussion 1 voice"],
)

# cello 1 music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 11)),
    evans.RhythmHandler(evans.talea([1, -1], 8)),
    evans.PitchHandler(["bqf''"]),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    library.duration_line(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("treble"),
            trinton.make_custom_dynamic("sfffz"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 0, 4, -1], first=True, pitched=True
        ),
    ),
    trinton.hooked_spanner_command(
        string="""\markup \with-color "darksalmon" { \musicglyph "noteheads.s0harmonic" "  13° / D3 ( II )" }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=8.5,
        right_padding=0,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'darksalmon)"],
    ),
    library.cello_trills(
        initial_width=0.4,
        y_scale=0.6,
        speed_factor=-0.8,
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    voice=score["cello 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (37, 39)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    library.duration_line(),
    trinton.noteheads_only(),
    library.change_lines(lines=1, clef="percussion"),
    library.boxed_markup(
        string="Rotate Baoding Balls in Hand",
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("p"), abjad.StartHairpin("--"), abjad.StopHairpin()],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["cello 1 voice"],
)

# cello 2 music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 11)),
    evans.RhythmHandler(evans.talea([1, -1], 8)),
    evans.PitchHandler(["gqs''"]),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    library.duration_line(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("treble"),
            trinton.make_custom_dynamic("sfffz"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 0, 4, -1], first=True, pitched=True
        ),
    ),
    trinton.hooked_spanner_command(
        string="""\markup \with-color "darksalmon" { \musicglyph "noteheads.s0harmonic" "  11° / D3 ( II )" }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=7.5,
        right_padding=0,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'darksalmon)"],
    ),
    library.cello_trills(
        initial_width=0.4,
        y_scale=0.6,
        speed_factor=-0.8,
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (37, 41)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    library.duration_line(),
    trinton.noteheads_only(),
    library.change_lines(lines=1, clef="percussion"),
    library.boxed_markup(
        string="Rotate Baoding Balls in Hand",
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("p"), abjad.StartHairpin("--"), abjad.StopHairpin()],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["cello 2 voice"],
)

# cello 3 music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 11)),
    evans.RhythmHandler(evans.talea([1, -1], 8)),
    evans.PitchHandler(["e''"]),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    library.duration_line(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("treble"),
            trinton.make_custom_dynamic("sfffz"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 0, 4, -1], first=True, pitched=True
        ),
    ),
    trinton.hooked_spanner_command(
        string="""\markup \with-color "darksalmon" { \musicglyph "noteheads.s0harmonic" "  9° / D3 ( II )" }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=6.5,
        right_padding=0,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'darksalmon)"],
    ),
    library.cello_trills(
        initial_width=0.4,
        y_scale=0.6,
        speed_factor=-0.8,
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    voice=score["cello 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (36, 43)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    library.duration_line(),
    trinton.noteheads_only(),
    library.change_lines(lines=1, clef="percussion"),
    library.boxed_markup(string="Rotate Baoding Balls in Hand"),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("p"), abjad.StartHairpin("--"), abjad.StopHairpin()],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["cello 3 voice"],
)

# tenor trombone music

trinton.make_music(
    lambda _: trinton.select_target(_, (26, 48)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    library.duration_line(),
    trinton.noteheads_only(),
    library.change_lines(lines=1, clef="percussion"),
    library.boxed_markup(string="Rotate Baoding Balls in Hand"),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("p"), abjad.StartHairpin("--"), abjad.StopHairpin()],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["tenortrombone voice"],
)

# bass trombone music

trinton.make_music(
    lambda _: trinton.select_target(_, (24, 50)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    library.duration_line(),
    trinton.noteheads_only(),
    library.change_lines(lines=1, clef="percussion"),
    library.boxed_markup(string="Rotate Baoding Balls in Hand"),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("p"), abjad.StartHairpin("--"), abjad.StopHairpin()],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["basstrombone voice"],
)

# percussion 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 15)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    evans.PitchHandler(["d,"]),
    library.duration_line(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            trinton.make_custom_dynamic("sfffz"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 3, -1]),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "darkmagenta" { \fontsize #3.5 \override #'(font-name . "ekmelos") \char ##xe222 }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        style="dashed-line-with-up-hook",
        direction="down",
        padding=8.5,
        full_string=True,
        tweaks=[r"- \tweak color #darkmagenta"],
    ),
    voice=score["percussion 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (29, 44)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    library.duration_line(),
    trinton.noteheads_only(),
    library.change_lines(lines=1, clef="percussion"),
    library.boxed_markup(string="Rotate Baoding Balls in Hand"),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("p"), abjad.StartHairpin("--"), abjad.StopHairpin()],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["percussion 2 voice"],
)

# globals

library.set_all_time_signatures(score=score, exclude_viola=False)

# library.remove_redundant_time_signatures(score=score)

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

for voice_name in library.all_voice_names_include_time_signature_context:
    trinton.make_music(
        lambda _: trinton.select_target(_, (53,)),
        trinton.attachment_command(
            attachments=[
                abjad.LilyPondLiteral(
                    r"\once \override Staff.BarLine.transparent = ##f", site="after"
                ),
                abjad.LilyPondLiteral(
                    r"\once \override Staff.BarLine.bar-extent = #'(-2 . 2)",
                    site="after",
                ),
                abjad.LilyPondLiteral(
                    r"\once \override Staff.BarLine.X-extent = #'(0 . 0)",
                    site="after",
                ),
                abjad.BarLine("|.", site="after"),
                abjad.LilyPondLiteral(
                    r"""\once \override Staff.BarLine.hair-thickness = 2 """,
                    site="after",
                ),
                abjad.LilyPondLiteral(
                    r"""\once \override Staff.BarLine.glyph-name = "|." """,
                    site="after",
                ),
            ],
            selector=trinton.select_leaves_by_index([-1]),
        ),
        voice=score[voice_name],
    )

library.write_timestamps(
    global_context=score["Global Context"],
    second_range=(213, 1000),
    measure_range=(1, 15),
)

library.silence(
    score=score,
    measures=[16],
    timestamps=[r"3\'47\" - 3\'57\""],
)

library.write_timestamps(
    global_context=score["Global Context"],
    second_range=(238, 1000),
    measure_range=(17, 53),
)

# library.forbid_break(score=score, measures=[3, 4, 8, 9, 10, 11, 12])

# staff spacing

# for voice_name in ["piano voice", "bassflute voice", "percussion 1 voice"]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (2,)),
#         trinton.attachment_command(
#             attachments=[
#                 # abjad.LilyPondLiteral(
#                 #     r"\once \override StaffGrouper.staffgroup-staff-spacing .basic-distance = #20"
#                 # )
#                 abjad.LilyPondLiteral(
#                     r"\once \override Staff.VerticalAxisGroup.staff-staff-spacing =  #'((basic-distance . 13) (minimum-distance . 13) (padding . 13))",
#                     site="absolute_before"
#                 )
#             ],
#             selector=trinton.select_leaves_by_index([0])
#         ),
#         voice=score[voice_name]
#     )
#
# for voice_name in ["cello 1 voice", "cello 2 voice"]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (2,)),
#         trinton.attachment_command(
#             attachments=[
#                 # abjad.LilyPondLiteral(
#                 #     r"\once \override StaffGrouper.staffgroup-staff-spacing .basic-distance = #20"
#                 # )
#                 abjad.LilyPondLiteral(
#                     r"\once \override Staff.VerticalAxisGroup.staff-staff-spacing =  #'((basic-distance . 14) (minimum-distance . 14) (padding . 14))",
#                     site="absolute_before"
#                 )
#             ],
#             selector=trinton.select_leaves_by_index([0])
#         ),
#         voice=score[voice_name]
#     )


# cutaway

trinton.whiteout_empty_staves(
    score=score,
    cutaway="blank",
    # voice_names=[_ for _ in library.all_voice_names if _ != "viola voice"],
    last_segment=True,
)

# colophon

trinton.make_music(
    lambda _: trinton.select_target(_, (53,)),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #70 \right-column { \line { Donaueschingen \hspace #0.75 – \hspace #0.75 Leipzig, DE. } \line { June 2023 \hspace #0.75 – \hspace #0.75 June 2024. } } } }"""
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
        direction=abjad.UP,
    ),
    voice=score["percussion 2 voice"],
)

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
    segment_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/sections/26",
    build_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/build",
    segment_name="26",
    includes=[
        "/Users/trintonprater/scores/bibliopegy/bibliopegy/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
