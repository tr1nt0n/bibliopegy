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

score = library.bibliopegy_score([(1, 8) for _ in range(1, 10)])

# music commands

# tape music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 9)),
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
    preprocessor=trinton.fuse_preprocessor((9,)),
)

# flute music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 9)),
    evans.RhythmHandler(
        evans.talea(
            [
                8,
                -3,
                5,
                -1,
                1,
                2,
                1,
                -1,
                2,
            ],
            32,
        ),
    ),
    library.duration_line(
        selector=trinton.logical_ties(
            pitched=True,
            exclude=[
                2,
                3,
                4,
            ],
        )
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("f"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2, -1], first=True, grace=False, pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.StartHairpin("--")],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2, -1], first=True, grace=False, pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin()],
        selector=trinton.select_logical_ties_by_index(
            [1, 3, 6, -1], first=True, pitched=True
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Articulation(">"),
            abjad.Articulation("staccato"),
            abjad.Articulation("staccato"),
            abjad.Articulation("staccato"),
            abjad.Articulation("marcato"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                2,
                2,
                3,
                4,
                4,
            ],
            first=True,
            pitched=True,
            grace=False,
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TextScript.whiteout = ##f", "before"
            ),
            abjad.Markup(r"""\markup \with-color #darkred { "p" } """),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                2,
                3,
            ],
            first=True,
            pitched=True,
            grace=False,
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TextScript.whiteout = ##f", "before"
            ),
            abjad.Markup(r"""\markup \with-color #darkred { "θp" } """),
        ],
        selector=trinton.select_logical_ties_by_index(
            [4], first=True, pitched=True, grace=False
        ),
    ),
    trinton.change_lines(lines=1, clef="varpercussion", tag=None),
    voice=score["flute voice"],
)

# bass flute music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RhythmHandler(
        evans.talea(
            [-5, 13, -100],
            32,
        ),
    ),
    library.duration_line(),
    trinton.change_lines(lines=1, clef="varpercussion", tag=None),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["bassflute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 7)),
    evans.RhythmHandler(
        evans.talea(
            [
                -2,
                1,
                1,
                3,
                1,
            ],
            32,
        ),
    ),
    library.duration_line(
        selector=trinton.select_logical_ties_by_index(
            [
                2,
            ],
            pitched=True,
        )
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("staccato"),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, exclude=[2]),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, -1], first=True, pitched=True
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Articulation("marcato"),
            abjad.Articulation(">"),
            abjad.Articulation("tenuto"),
            abjad.Articulation(">"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 3, 3, 4], first=True, pitched=True
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TextScript.whiteout = ##f", "before"
            ),
            abjad.Markup(r"""\markup \with-color #darkred { "p" } """),
        ],
        selector=trinton.select_logical_ties_by_index(
            [1, 3, -1],
            first=True,
            pitched=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TextScript.whiteout = ##f", "before"
            ),
            abjad.Markup(r"""\markup \with-color #darkred { "θp" } """),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
            ],
            first=True,
            pitched=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TextScript.whiteout = ##f", "before"
            ),
            abjad.Markup(r"""\markup \with-color #darkred { "θ" } """),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                2,
            ],
            first=True,
            pitched=True,
        ),
    ),
    voice=score["bassflute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 9)),
    evans.RhythmHandler(
        evans.talea(
            [
                -1,
                3,
                -1,
                1,
                -1,
                1,
            ],
            32,
        ),
    ),
    library.duration_line(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                0,
                1,
                2,
                2,
                3,
                4,
                4,
                5,
            ],
            first=True,
            pitched=True,
        ),
    ),
    voice=score["bassflute voice"],
)

for voice_name in ["flute voice", "bassflute voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (1, 9)),
        trinton.hooked_spanner_command(
            string=r"""\markup \with-color "indianred" \center-column { \line { covering the entire } \line { mouthpiece with the lips } }""",
            selector=trinton.select_leaves_by_index([0, -1], pitched=True),
            padding=5.5,
            right_padding=0,
            full_string=True,
            tweaks=[r"- \tweak color #(css-color 'indianred)"],
        ),
        voice=score[voice_name],
    )

# violin music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RhythmHandler(
        evans.talea(
            [18, -100],
            32,
        ),
    ),
    evans.PitchHandler([24]),
    library.duration_line(),
    trinton.change_notehead_command(notehead="highest"),
    trinton.linear_attachment_command(
        attachments=[
            evans.make_fancy_gliss(
                5,
                5,
                5,
                5,
                5,
                5,
                5,
                5,
                5,
                5,
                5,
                5,
                5,
                5,
                5,
                5,
                5,
                5,
                5,
                5,
                5,
                5,
                5,
                5,
                5,
                5,
                5,
                5,
                5,
                5,
                5,
                5,
                5,
                5,
                5,
                5,
                5,
                5,
                5,
                5,
                5,
                5,
                5,
                5,
                right_padding=-6,
            ),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 0, -1], first=True, pitched=True
        ),
    ),
    trinton.hooked_spanner_command(
        string=library.return_fractional_scratch_markup("3 4"),
        selector=trinton.select_logical_ties_by_index([0, -1], first=True),
        padding=8.5,
        full_string=True,
        right_padding=0,
        tweaks=[r"""- \tweak color #darkred"""],
    ),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 9)),
    evans.RhythmHandler(
        evans.talea(
            [
                -2,
                6,
                -1,
                3,
                -1,
                1,
                -1,
                1,
            ],
            32,
        ),
    ),
    evans.PitchHandler([24]),
    library.duration_line(),
    trinton.change_notehead_command(notehead="highest"),
    trinton.linear_attachment_command(
        attachments=[
            evans.make_fancy_gliss(
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                3,
                3,
                3,
                3,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                right_padding=-6,
            ),
            evans.make_fancy_gliss(
                1,
                1,
                1,
                1,
                1,
                4.5,
                4.5,
                4.5,
                1,
                1,
                1,
                1,
                1,
                right_padding=-6,
            ),
            evans.make_fancy_gliss(
                5,
                5,
                5,
                right_padding=-6,
            ),
            evans.make_fancy_gliss(
                5.5,
                5.5,
                5.5,
                right_padding=-6,
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
                2,
                3,
            ],
            first=True,
            pitched=True,
            grace=False,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 1, 2, 2, 3, 4, 4, 5, 6, 6, -1], first=True, pitched=True
        ),
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "darkred" { scratch }""",
            library.return_fractional_scratch_markup("3 4"),
        ],
        selector=trinton.select_logical_ties_by_index([0, 1], first=True, pitched=True),
        style="solid-line-with-arrow",
        padding=8.5,
        full_string=True,
        right_padding=-10,
        tweaks=[r"""- \tweak color #darkred"""],
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "darkred" { scratch }""",
            library.return_fractional_scratch_markup("2 3"),
        ],
        selector=trinton.select_logical_ties_by_index([2, 3], first=True, pitched=True),
        style="solid-line-with-arrow",
        padding=8.5,
        full_string=True,
        right_padding=-3,
        tweaks=[r"""- \tweak color #darkred"""],
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Staff.TextScript.whiteout = ##f", "before"
            ),
            abjad.Markup(
                library.return_fractional_scratch_markup("3 4"),
            ),
            abjad.LilyPondLiteral(
                r"\once \override Staff.TextScript.whiteout = ##f", "before"
            ),
            abjad.Markup(
                library.return_fractional_scratch_markup("1 2"),
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [-2, -2, -1, -1], pitched=True, first=True, grace=False
        ),
        direction=abjad.UP,
    ),
    voice=score["violin voice"],
)

# bass clarinet music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 9)),
    evans.RhythmHandler(
        evans.talea(
            [11, 100],
            32,
        ),
    ),
    evans.PitchHandler(["f", "eqs"]),
    library.duration_line(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 2, 2, -1],
            first=True,
        ),
    ),
    voice=score["bassclarinet voice"],
)

# cello 3 music commands

abjad.attach(abjad.Clef("bass"), abjad.select.leaf(score["cello 3 voice"], 0))

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 9)),
    evans.RhythmHandler(
        evans.talea(
            [11, 100],
            32,
        ),
    ),
    evans.PitchHandler(["d,"]),
    library.duration_line(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_logical_ties_by_index([0, 0, 2, -1], first=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            evans.make_fancy_gliss(
                0.5,
                0.5,
                1.5,
                0.5,
                0.5,
                1.5,
                0.5,
                0.5,
                1.5,
                0.5,
                0.5,
                1.5,
                0.5,
                0.5,
                1.5,
                0.5,
                0.5,
                1.5,
                0.5,
                0.5,
                right_padding=-6,
            ),
            evans.make_fancy_gliss(
                5,
                2,
                1,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                1,
                2,
                3,
                3,
                right_padding=-6,
            ),
        ],
        selector=trinton.select_logical_ties_by_index([0, 1], first=True, grace=False),
    ),
    voice=score["cello 3 voice"],
)

# percussion 2 music commands

abjad.attach(abjad.Clef("bass"), abjad.select.leaf(score["percussion 2 voice"], 0))

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 9)),
    evans.RhythmHandler(
        evans.talea([11, 22, 100], 32),
    ),
    evans.PitchHandler(["d,"]),
    library.duration_line(sustained=True),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_logical_ties_by_index([0, 0, 1, 1, -1], first=True),
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


# globals

library.set_all_time_signatures(score=score)

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

library.write_timestamps(
    global_context=score["Global Context"],
    second_range=(113, 121),
    measure_range=(1, 9),
)

# cutaway

trinton.whiteout_empty_staves(
    score=score,
    cutaway="blank",
    # voice_names=[_ for _ in library.all_voice_names if _ != "viola voice"],
)

# library.blank_measure_by_hand(
#     score=score,
#     voice_names=["viola voice"],
#     measures=[1, 2, 3, 8, 9, 10, 11, 12],
# )

# parts

trinton.extract_parts(score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/sections/06",
    build_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/build",
    segment_name="06",
    includes=[
        "/Users/trintonprater/scores/bibliopegy/bibliopegy/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
