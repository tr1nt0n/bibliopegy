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

score = library.bibliopegy_score([(1, 8) for _ in range(1, 22)])

# music commands

# tape music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 20)),
    evans.RhythmHandler(rmakers.note),
    evans.PitchHandler([-1]),
    library.duration_line(color="darkred"),
    library.change_lines(lines=2, clef="percussion"),
    trinton.attachment_command(
        attachments=[
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
    preprocessor=trinton.fuse_preprocessor((19,)),
)

# flute music commands

for voice_name in ["flute voice", "bassflute voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (2, 7)),
        evans.RhythmHandler(evans.talea([12, -6, 5, -1], 32)),
        library.duration_line(),
        trinton.change_lines(lines=1, clef="varpercussion", tag=None),
        trinton.linear_attachment_command(
            attachments=[
                abjad.Dynamic("fp"),
                abjad.StartHairpin("<"),
                trinton.make_custom_dynamic("mp +"),
                abjad.Dynamic("p"),
                abjad.StartHairpin("<"),
                abjad.Dynamic("mf"),
            ],
            selector=trinton.select_logical_ties_by_index(
                [0, 0, 1, 2, 2, 3], first=True, pitched=True
            ),
        ),
        voice=score[voice_name],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 13)),
    evans.RhythmHandler(
        evans.talea(
            [
                3,
                2,
                5,
            ],
            32,
        )
    ),
    trinton.force_rest(
        selector=trinton.patterned_tie_index_selector(
            [
                0,
            ],
            2,
        )
    ),
    library.duration_line(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (14,)),
    evans.RhythmHandler(evans.talea([1, 1, 1, 2], 32, extra_counts=[1, 0])),
    library.duration_line(selector=trinton.select_logical_ties_by_index([-1])),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("marcato"),
            abjad.Articulation("staccato"),
            abjad.LilyPondLiteral(
                r"\once \override TextScript.whiteout = ##f", "before"
            ),
            abjad.Markup(r"""\markup \with-color #darkred { "p" } """),
        ],
        selector=trinton.pleaves(exclude=[-1, -2]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.Dynamic("ff"),
            abjad.Dynamic("p"),
            trinton.make_custom_dynamic("sfpp"),
            abjad.StartHairpin("<|"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2, 3, 3, -1],
            first=True,
        ),
    ),
    voice=score["flute voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((1,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (15, 18)),
    evans.RhythmHandler(evans.talea([2, 1, 5], 32)),
    trinton.force_rest(
        selector=trinton.patterned_tie_index_selector(
            [
                0,
            ],
            2,
        )
    ),
    library.duration_line(),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("sffz"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("mf"),
            trinton.make_custom_dynamic("ffpp"),
            abjad.StartHairpin("--"),
            trinton.make_custom_dynamic("sff"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 1, 2, 3, 4, 4, 5], pitched=True, first=True
        ),
    ),
    voice=score["flute voice"],
)

for voice_name in ["flute voice", "bassflute voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (19, 20)),
        evans.RhythmHandler(
            evans.talea([-1, 3, 1, 1, 2, 2, 2, 100], 32, extra_counts=[4, 0])
        ),
        library.duration_line(selector=trinton.select_logical_ties_by_index([-1])),
        trinton.attachment_command(
            attachments=[
                abjad.Articulation("marcato"),
                abjad.Articulation("staccato"),
                abjad.LilyPondLiteral(
                    r"\once \override TextScript.whiteout = ##f", "before"
                ),
                abjad.Markup(r"""\markup \with-color #darkred { "p" } """),
            ],
            selector=trinton.pleaves(exclude=[-1, -2]),
        ),
        trinton.linear_attachment_command(
            attachments=[
                abjad.Dynamic("f"),
                abjad.Dynamic("mp"),
                abjad.StartHairpin("<"),
                abjad.Dynamic("ff"),
                abjad.StartHairpin(">o"),
                abjad.StopHairpin(),
            ],
            selector=trinton.select_logical_ties_by_index(
                [0, 1, 1, 5, 5, -1],
                pitched=True,
                first=True,
            ),
        ),
        voice=score[voice_name],
        preprocessor=trinton.fuse_sixteenths_preprocessor((3, 1)),
    )

# bass flute music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 11)),
    evans.RhythmHandler(evans.talea([6, 3, 2], 32)),
    trinton.force_rest(
        selector=trinton.patterned_tie_index_selector(
            [
                1,
            ],
            2,
        )
    ),
    library.duration_line(),
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
    lambda _: trinton.select_target(_, (12, 13)),
    evans.RhythmHandler(evans.talea([1, 1, 1, 1, 3, 4, -100], 32, extra_counts=[3, 0])),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("marcato"),
            abjad.Articulation("staccato"),
            abjad.LilyPondLiteral(
                r"\once \override TextScript.whiteout = ##f", "before"
            ),
            abjad.Markup(r"""\markup \with-color #darkred { "p" } """),
        ],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.Dynamic("mf"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 4, -1],
            pitched=True,
            first=True,
        ),
    ),
    voice=score["bassflute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (14, 18)),
    evans.RhythmHandler(evans.talea([5, 3, 2], 32)),
    trinton.force_rest(
        selector=trinton.patterned_tie_index_selector(
            [
                0,
            ],
            2,
        )
    ),
    library.duration_line(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("f"),
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
            trinton.make_custom_dynamic("ffp"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2, 2, 3, 4, 4, 5], first=True, pitched=True
        ),
    ),
    voice=score["bassflute voice"],
)

for voice_name in ["flute voice", "bassflute voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (2, 20)),
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
    lambda _: trinton.select_target(_, (2, 7)),
    evans.RhythmHandler(evans.talea([12, -6, 5, -1], 32)),
    evans.PitchHandler([24]),
    trinton.change_notehead_command(notehead="highest"),
    library.duration_line(),
    trinton.linear_attachment_command(
        attachments=[
            evans.make_fancy_gliss(
                5,
                4,
                3,
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
                1,
                1,
                1,
                2,
                2,
                2,
                3,
                3,
                3,
                4,
                right_padding=-6,
            ),
            evans.make_fancy_gliss(
                0.5,
                0.5,
                0.5,
                1,
                1,
                1,
                2,
                2,
                2,
                3,
                4,
                5,
                right_padding=-6,
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
            ],
            first=True,
            pitched=True,
            grace=False,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fp"),
            abjad.StartHairpin("<"),
            trinton.make_custom_dynamic("mp +"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 1, 2, 2, 3], first=True, pitched=True
        ),
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "darkred" { norm. }""",
            library.return_fractional_scratch_markup("1 3"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
            ],
            first=True,
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=8.5,
        full_string=True,
        right_padding=-3,
        tweaks=[r"""- \tweak color #darkred"""],
    ),
    trinton.spanner_command(
        strings=[
            library.return_fractional_scratch_markup("1 2"),
            r"""\markup \with-color "darkred" { scratch }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                2,
                3,
            ],
            first=True,
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=8.5,
        full_string=True,
        right_padding=-1,
        tweaks=[r"""- \tweak color #darkred"""],
    ),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 14)),
    evans.RhythmHandler(evans.talea([-3, 11, -4, 8, -100], 32)),
    evans.PitchHandler([24]),
    trinton.change_notehead_command(notehead="highest"),
    library.duration_line(),
    trinton.attachment_command(
        attachments=[
            evans.make_fancy_gliss(
                0.5,
                6,
                0.5,
                3,
                0.5,
                0.5,
                1,
                5,
                0.5,
                0.5,
                0.5,
                6,
                0.5,
                3,
                0.5,
                0.5,
                1,
                5,
                0.5,
                0.5,
                0.5,
                6,
                0.5,
                3,
                0.5,
                0.5,
                1,
                5,
                0.5,
                0.5,
                right_padding=-6,
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
            ],
            first=True,
            pitched=True,
            grace=False,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [abjad.Dynamic("ff"), abjad.StartHairpin("--"), abjad.StopHairpin()]
        ),
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 1, 2, 2, 3], first=True, pitched=True
        ),
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "darkred" { scratch }""",
            r"""\markup \with-color "darkred" { norm. }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
            ],
            first=True,
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=8.5,
        full_string=True,
        right_padding=-1,
        tweaks=[r"""- \tweak color #darkred"""],
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "darkred" { scratch }""",
            r"""\markup \with-color "darkred" { norm. }""",
        ],
        selector=trinton.select_logical_ties_by_index([2, 3], first=True, pitched=True),
        style="solid-line-with-arrow",
        padding=8.5,
        full_string=True,
        right_padding=-1,
        tweaks=[r"""- \tweak color #darkred"""],
    ),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (16, 20)),
    evans.RhythmHandler(evans.talea([-2, 1, 1, 1, 5, -3, 100], 32)),
    evans.PitchHandler([24]),
    trinton.change_notehead_command(notehead="highest"),
    library.duration_line(),
    trinton.attachment_command(
        attachments=[
            evans.make_fancy_gliss(
                2,
                2,
                2,
                2,
                right_padding=-6,
            ),
            abjad.Articulation("espressivo"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
                2,
            ],
            first=True,
            pitched=True,
            grace=False,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            evans.make_fancy_gliss(
                2,
                2,
                2,
                2,
                2,
                2,
                2,
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
            evans.make_fancy_gliss(
                1,
                2,
                3,
                4,
                5,
                4,
                3,
                2,
                1,
                1,
                1,
                1,
                1,
                1,
                1,
                2,
                3,
                4,
                5,
                6,
                7,
                7,
                7,
                right_padding=-6,
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                3,
                4,
            ],
            first=True,
            pitched=True,
            grace=False,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartSlur(),
            abjad.StopSlur(),
        ],
        selector=trinton.select_logical_ties_by_index([0, 5], first=True, pitched=True),
        direction=abjad.DOWN,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 7, 8, 8, -1], first=True, pitched=True
        ),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "darkred" { louré }""",
        selector=trinton.select_logical_ties_by_index([0, 5], first=True, pitched=True),
        padding=8.5,
        right_padding=0,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
        command="Two",
    ),
    trinton.spanner_command(
        strings=[
            library.return_fractional_scratch_markup("1 6"),
            library.return_fractional_scratch_markup("3 4"),
        ],
        selector=trinton.select_logical_ties_by_index([6, 7], first=True, pitched=True),
        style="solid-line-with-arrow",
        padding=8.5,
        full_string=True,
        right_padding=-13,
        tweaks=[r"""- \tweak color #darkred"""],
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "darkred" { scratch }""",
            library.return_fractional_scratch_markup("1 7"),
        ],
        selector=trinton.select_logical_ties_by_index([8, 9], first=True, pitched=True),
        style="solid-line-with-arrow",
        padding=9.5,
        full_string=True,
        right_padding=-1,
        tweaks=[r"""- \tweak color #darkred"""],
    ),
    voice=score["violin voice"],
)

# bass clarinet music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 20)),
    evans.RhythmHandler(
        evans.talea(
            [7, 5, 6, 6, 13, 9, 13, 9, 100],
            32,
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["eqs"],
        selector=trinton.select_logical_ties_by_index(
            [
                2,
                3,
                4,
                5,
                6,
                7,
            ]
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["e"],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
            ]
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["f"],
        selector=trinton.select_logical_ties_by_index([8]),
    ),
    library.duration_line(
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
                2,
                3,
            ],
            grace=False,
        ),
        sustained=True,
    ),
    library.duration_line(
        selector=trinton.select_logical_ties_by_index([0, 1], grace=False),
        sustained=True,
    ),
    library.duration_line(
        selector=trinton.select_logical_ties_by_index([2, 3, 8], grace=False),
    ),
    library.duration_line(
        selector=trinton.select_logical_ties_by_index([4, 5, 6, 7], grace=False),
        sustained=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pppp"),
            trinton.make_custom_dynamic("ffp"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                0,
                1,
                2,
                3,
                3,
                4,
                5,
                6,
                6,
                7,
                7,
                8,
                8,
            ],
            first=True,
            pitched=True,
            grace=False,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("mf")], selector=trinton.select_leaves_by_index([-1])
    ),
    voice=score["bassclarinet voice"],
)

# cello 3 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 21)),
    evans.RhythmHandler(
        evans.talea(
            [
                7,
                5,
                6,
                6,
                13,
                20,
                18,
                100,
            ],
            32,
        ),
    ),
    evans.PitchHandler(["d,"]),
    library.duration_line(
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
                2,
            ],
            grace=False,
        ),
        sustained=True,
    ),
    library.duration_line(
        selector=trinton.select_logical_ties_by_index(
            [
                3,
                4,
            ],
            grace=False,
        ),
        sustained=True,
    ),
    library.duration_line(
        selector=trinton.select_logical_ties_by_index(
            [
                5,
                6,
                7,
            ],
            grace=False,
        ),
        sustained=True,
    ),
    trinton.change_lines(lines=5, clef="bass"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
            trinton.make_custom_dynamic("ffp"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                0,
                1,
                2,
                3,
                3,
                4,
                5,
                6,
                6,
                7,
            ],
            first=True,
            grace=False,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            evans.make_fancy_gliss(
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                2,
                0.5,
                0.5,
                0.5,
                0.5,
                2,
                0.5,
                0.5,
                2,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                2,
                0.5,
                0.5,
                right_padding=-6,
            ),
            evans.make_fancy_gliss(
                5,
                4,
                3,
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
                right_padding=-6,
            ),
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
                1.3,
                1.5,
                2,
                2.3,
                2.5,
                3,
                3.3,
                3.5,
                4,
                4.3,
                4.5,
                5,
                6,
                6,
                6,
                6,
                6,
                6,
                5,
                4.5,
                4.3,
                4,
                3.5,
                3.3,
                3,
                2.5,
                2.3,
                2,
                1.5,
                1.3,
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
                right_padding=-6,
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                3,
                5,
            ],
            first=True,
            grace=False,
        ),
    ),
    voice=score["cello 3 voice"],
)

# cello flash music commands

for voice_name, extra_count in zip(
    ["cello 1 voice", "cello 2 voice", "cello 3 voice"],
    [1, 0, -1],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        evans.RhythmHandler(
            evans.talea(
                [
                    1,
                ],
                32,
                extra_counts=[extra_count],
            )
        ),
        evans.PitchHandler([5]),
        library.duration_line(),
        library.change_lines(lines=4, clef="varpercussion"),
        trinton.change_notehead_command(
            notehead="highest",
            selector=trinton.patterned_tie_index_selector([1], 2, grace=False),
        ),
        trinton.attachment_command(
            attachments=[abjad.Dynamic("p"), abjad.StartHairpin("--")],
            selector=trinton.patterned_tie_index_selector(
                [
                    2,
                ],
                4,
                first=True,
            ),
        ),
        trinton.attachment_command(
            attachments=[abjad.Dynamic("ff"), abjad.StartHairpin("--")],
            selector=trinton.patterned_tie_index_selector([0], 4, first=True),
        ),
        trinton.attachment_command(
            attachments=[abjad.StopHairpin()],
            selector=trinton.select_leaves_by_index([-1]),
        ),
        trinton.linear_attachment_command(
            attachments=[abjad.StartSlur(), abjad.StopSlur()],
            selector=trinton.select_leaves_by_index([0, -1]),
        ),
        trinton.hooked_spanner_command(
            string=r"""\markup \with-color "indianred" { pont. }""",
            selector=trinton.select_leaves_by_index([0, -1], pitched=True),
            padding=7.5,
            right_padding=0,
            full_string=True,
            tweaks=[r"- \tweak color #(css-color 'indianred)"],
            command="One",
        ),
        trinton.hooked_spanner_command(
            string=r"""\markup \with-color "darkred" { louré }""",
            selector=trinton.select_leaves_by_index([0, -1], pitched=True),
            padding=5.5,
            right_padding=0,
            full_string=True,
            tweaks=[r"""- \tweak color #darkred"""],
            command="Two",
        ),
        voice=score[voice_name],
    )

# percussion 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 20)),
    evans.RhythmHandler(
        evans.talea(
            [7, 5, 6, 6, 14, 8, 17, 100],
            32,
        ),
    ),
    evans.PitchHandler(["d,"]),
    library.duration_line(sustained=True),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("bass"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            trinton.make_custom_dynamic("ffmp"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("<"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                0,
                1,
                2,
                3,
                3,
                4,
                5,
                6,
                6,
                7,
                7,
            ],
            first=True,
            grace=False,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("ff")], selector=trinton.select_leaves_by_index([-1])
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
    second_range=(80, 100),
    measure_range=(1, 21),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (20,)),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\noBreak", "after")],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
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
    segment_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/sections/04",
    build_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/build",
    segment_name="04",
    includes=[
        "/Users/trintonprater/scores/bibliopegy/bibliopegy/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
