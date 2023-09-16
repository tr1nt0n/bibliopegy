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

score = library.bibliopegy_score([(1, 8) for _ in range(1, 14)])

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
            [11, 2, 2, 5, 100],
            32,
            extra_counts=[
                0,
                2,
                0,
            ],
        ),
    ),
    evans.PitchHandler(["cqs,", "dqf,", "dqs,", "cqs,", "d,"]),
    library.duration_line(),
    trinton.attachment_command(
        attachments=[
            library.upbow,
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, -1], pitched=True, first=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[library.downbow, abjad.Articulation(">")],
        selector=trinton.select_logical_ties_by_index(
            [
                1,
                2,
                3,
            ],
            pitched=True,
            first=True,
            grace=False,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            trinton.make_custom_dynamic("sffz pp"),
            abjad.StartHairpin("<|"),
            abjad.Dynamic("fp"),
            abjad.StartHairpin("<|"),
            abjad.Dynamic("ff"),
            trinton.make_custom_dynamic("sffz pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 2, 2, 4, 4, 5, 6, 6, 7, 8, 8, -1], first=True
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            evans.make_fancy_gliss(
                4,
                3.7,
                3.5,
                3.2,
                3,
                2.7,
                2.5,
                2.2,
                2,
                1,
                0.7,
                0.5,
                0.2,
                0.2,
                0.2,
                0.2,
                0.2,
                0.2,
                0.2,
                0.2,
                0.2,
                0.2,
                0.2,
                0.2,
                0.2,
                0.2,
                0.2,
                0.2,
                0.2,
                0.2,
                0.2,
                0.2,
                0.2,
                0.2,
                0.2,
                0.2,
                right_padding=-6,
            ),
            evans.make_fancy_gliss(4, 3, 2, 1, 2, 3, 4, right_padding=-6),
            evans.make_fancy_gliss(4, 3, 2, 1, 2, 3, 4, right_padding=-6),
            evans.make_fancy_gliss(
                4, 3, 2, 1, 0.5, 0.5, 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4, right_padding=-6
            ),
            evans.make_fancy_gliss(
                0.1,
                0.2,
                0.3,
                0.4,
                0.5,
                0.6,
                0.7,
                0.8,
                0.9,
                1,
                1.2,
                1.5,
                1.7,
                2,
                2.2,
                2.5,
                2.7,
                3,
                3.2,
                3.5,
                3.7,
                4,
                4.2,
                4.5,
                4.7,
                5,
                5.2,
                5.5,
                5.7,
                6,
                6.2,
                6.5,
                6.7,
                7,
                right_padding=-6,
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
                2,
                3,
                4,
            ],
            first=True,
            grace=False,
        ),
    ),
    trinton.spanner_command(
        strings=[
            "\skin-diamond-notehead-markup",
            "\skin-half-diamond-notehead-markup",
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                2,
                2,
                5,
            ],
            first=True,
        ),
        style="solid-line-with-arrow",
        padding=8,
        full_string=True,
        command="One",
        right_padding=-1,
        end_hook=True,
        tweaks=[r"""- \tweak color #(css-color 'darksalmon)"""],
    ),
    trinton.spanner_command(
        strings=[
            "\skin-diamond-notehead-markup",
            "\skin-default-notehead-markup",
        ],
        selector=trinton.select_logical_ties_by_index([6, 8], first=True),
        style="solid-line-with-arrow",
        padding=8,
        full_string=True,
        command="One",
        right_padding=-1,
        tweaks=[r"""- \tweak color #(css-color 'darksalmon)"""],
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "indianred" { "molto tast." }""",
            r"""\markup \with-color "indianred" { pont. }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                2,
                2,
                5,
            ],
            first=True,
        ),
        style="solid-line-with-arrow",
        padding=6,
        full_string=True,
        command="Two",
        right_padding=-1,
        end_hook=True,
        tweaks=[r"""- \tweak color #(css-color 'indianred)"""],
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "indianred" { "molto tast." }""",
            r"""\markup \with-color "indianred" { ord. }""",
        ],
        selector=trinton.select_logical_ties_by_index([6, 8], first=True),
        style="solid-line-with-arrow",
        padding=6,
        full_string=True,
        command="Two",
        right_padding=-1,
        tweaks=[r"""- \tweak color #(css-color 'indianred)"""],
    ),
    voice=score["cello 3 voice"],
    preprocessor=trinton.fuse_preprocessor((3, 1, 4)),
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

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.change_lines(
        lines=1,
        clef="varpercussion",
        selector=trinton.select_leaves_by_index([0]),
        tag=None,
    ),
    voice=score["viola voice"],
)

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
            clef="varpercussion",
            selector=trinton.select_leaves_by_index([0]),
            tag=None,
        ),
        voice=score[voice_name],
    )


# globals

library.set_all_time_signatures(score=score)

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

library.write_timestamps(
    global_context=score["Global Context"], second_range=(38, 49), measure_range=(2, 13)
)

library.forbid_break(score=score, measures=list(range(6, 13)))

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            library.movements[0],
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 { "0\" - 37\""  }"""
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
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
