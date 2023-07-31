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

score = library.bibliopegy_score([(1, 8) for _ in range(1, 37)])

# music commands

# tape music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 31)),
    evans.RhythmHandler(rmakers.note),
    evans.RewriteMeterCommand(),
    evans.PitchHandler([-1]),
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
    library.duration_line(color="darkred", sustained=True),
    voice=score["piano voice"],
    preprocessor=trinton.fuse_preprocessor((32,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (32, 35)),
    evans.RhythmHandler(rmakers.note),
    evans.PitchHandler([-3]),
    library.change_lines(lines=3, clef="percussion"),
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
    evans.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(
            evans.talea(
                [
                    100,
                ],
                32,
            ),
        ),
        direction=abjad.UP,
        voice_name="beta voice",
    ),
    voice=score["piano voice"],
    preprocessor=trinton.fuse_preprocessor((4,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (32, 35)),
    library.duration_line(color="darkred"),
    voice=score["piano voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (32, 35)),
    library.duration_line(color="(css-color 'indianred)"),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\override NoteHead.stencil = #ly:text-interface::print",
                    r"""\override NoteHead.text = \markup \with-color "indianred" { β }""",
                ],
                site="before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["beta voice"],
)

# flute music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(evans.talea([6, -100], 32)),
    library.duration_line(),
    trinton.change_lines(lines=1, clef="varpercussion"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fff"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "indianred" \center-column { \line { covering the entire } \line { mouthpiece with the lips } }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=4,
        right_padding=0,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'indianred)"],
    ),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 15)),
    evans.RhythmHandler(evans.talea([2, 3, 2, 5, 1], 32, extra_counts=[-4])),
    trinton.force_rest(selector=trinton.patterned_tie_index_selector([0], 2)),
    library.duration_line(),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.Dynamic("fff"),
                abjad.Dynamic("mf"),
            ]
        ),
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartHairpin("--"),
                abjad.StartHairpin("--"),
                abjad.StartHairpin(">o"),
            ]
        ),
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.StopHairpin(),
        ],
        selector=trinton.pleaves(grace=True),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "indianred" \center-column { \line { covering the entire } \line { mouthpiece with the lips } }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=4,
        right_padding=0,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'indianred)"],
    ),
    voice=score["flute voice"],
    preprocessor=trinton.fuse_preprocessor((10,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (19, 20)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
                2,
                1,
            ],
            32,
            extra_counts=[4],
        )
    ),
    trinton.force_rest(selector=trinton.patterned_tie_index_selector([0], 2)),
    trinton.force_note(selector=trinton.select_leaves_by_index([-1])),
    library.duration_line(),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("o<"), abjad.Dynamic("f")],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "indianred" \center-column { \line { covering the entire } \line { mouthpiece with the lips } }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=4,
        right_padding=0,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'indianred)"],
    ),
    voice=score["flute voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (26, 27)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
                2,
                1,
            ],
            32,
            extra_counts=[-1],
        )
    ),
    trinton.force_rest(selector=trinton.patterned_tie_index_selector([1], 2)),
    library.duration_line(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["flute voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (28, 35)),
    evans.RhythmHandler(
        evans.talea([1, 1, 1, 2, 3, 1, 3, 4, 1, 2], 32, extra_counts=[0, 4, 0, 1, 2])
    ),
    library.duration_line(
        selector=trinton.patterned_tie_index_selector([3, 4, 7], 8, grace=False)
    ),
    trinton.transparent_noteheads(selector=trinton.logical_ties(all_except_first=True)),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("staccato"),
        ],
        selector=trinton.patterned_tie_index_selector(
            [
                0,
                1,
                2,
                5,
                6,
            ],
            8,
            first=True,
            grace=False,
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation(">"),
        ],
        selector=trinton.patterned_tie_index_selector(
            [
                0,
                2,
                5,
            ],
            9,
            first=True,
            grace=False,
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TextScript.whiteout = ##f", "before"
            ),
            abjad.Markup(r"""\markup \with-color #darkred { "θ" } """),
        ],
        selector=trinton.patterned_tie_index_selector(
            [3, 4, 7], 8, first=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TextScript.whiteout = ##f", "before"
            ),
            abjad.Markup(r"""\markup \with-color #darkred { "p" } """),
        ],
        selector=trinton.patterned_tie_index_selector(
            [
                1,
                2,
                6,
            ],
            8,
            first=True,
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
        selector=trinton.patterned_tie_index_selector(
            [
                0,
                5,
            ],
            8,
            first=True,
            grace=False,
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TextScript.whiteout = ##f", "before"
            ),
            abjad.Markup(r"""\markup \with-color #darkred { \hspace #-0.75 "p" } """),
        ],
        selector=trinton.pleaves(grace=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("sppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["flute voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((2, 5, 3)),
)

# bass flute music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(evans.talea([100], 32)),
    library.duration_line(),
    trinton.change_lines(lines=1, clef="varpercussion"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fff"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "indianred" \center-column { \line { covering the entire } \line { mouthpiece with the lips } }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=4,
        right_padding=0,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'indianred)"],
    ),
    voice=score["bassflute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 15)),
    evans.RhythmHandler(evans.talea([3, 2, 5, 1, 2], 32, extra_counts=[4])),
    trinton.force_rest(selector=trinton.patterned_tie_index_selector([0], 2)),
    library.duration_line(),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [abjad.Dynamic("fff"), abjad.Dynamic("mf"), abjad.Dynamic("f")]
        ),
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [abjad.StartHairpin("--"), abjad.StartHairpin(">o")]
        ),
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.StopHairpin(),
        ],
        selector=trinton.pleaves(grace=True),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "indianred" \center-column { \line { covering the entire } \line { mouthpiece with the lips } }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=4,
        right_padding=0,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'indianred)"],
    ),
    voice=score["bassflute voice"],
    preprocessor=trinton.fuse_preprocessor((10,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (19, 20)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
                2,
                1,
            ],
            32,
            extra_counts=[-2],
        )
    ),
    trinton.force_rest(selector=trinton.patterned_tie_index_selector([1], 2)),
    library.duration_line(),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("o<"), abjad.Dynamic("f")],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "indianred" \center-column { \line { covering the entire } \line { mouthpiece with the lips } }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=4,
        right_padding=0,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'indianred)"],
    ),
    voice=score["bassflute voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (26, 27)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
                2,
                1,
            ],
            32,
            extra_counts=[3],
        )
    ),
    trinton.force_rest(selector=trinton.patterned_tie_index_selector([0], 2)),
    library.duration_line(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["bassflute voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (28, 35)),
    evans.RhythmHandler(
        evans.talea(
            [
                2,
                3,
                1,
                3,
                4,
                1,
                2,
                1,
                1,
                1,
            ],
            32,
            extra_counts=[1, 2, 0, 4, 0],
        )
    ),
    library.duration_line(
        selector=trinton.patterned_tie_index_selector([0, 1, 5], 8, grace=False)
    ),
    trinton.transparent_noteheads(selector=trinton.logical_ties(all_except_first=True)),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("staccato"),
        ],
        selector=trinton.patterned_tie_index_selector(
            [
                2,
                3,
                4,
                6,
                7,
            ],
            8,
            first=True,
            grace=False,
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation(">"),
        ],
        selector=trinton.patterned_tie_index_selector(
            [
                1,
                3,
                6,
            ],
            9,
            first=True,
            grace=False,
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TextScript.whiteout = ##f", "before"
            ),
            abjad.Markup(r"""\markup \with-color #darkred { "θ" } """),
        ],
        selector=trinton.patterned_tie_index_selector(
            [0, 1, 5], 8, first=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TextScript.whiteout = ##f", "before"
            ),
            abjad.Markup(r"""\markup \with-color #darkred { "p" } """),
        ],
        selector=trinton.patterned_tie_index_selector(
            [2, 4], 8, first=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TextScript.whiteout = ##f", "before"
            ),
            abjad.Markup(r"""\markup \with-color #darkred { "θp" } """),
        ],
        selector=trinton.patterned_tie_index_selector(
            [3, 6, 7], 8, first=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TextScript.whiteout = ##f", "before"
            ),
            abjad.Markup(r"""\markup \with-color #darkred { \hspace #-0.75 "p" } """),
        ],
        selector=trinton.pleaves(grace=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("sppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["bassflute voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((5, 3, 2)),
)

for voice_name in ["flute voice", "bassflute voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (26, 35)),
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

# violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(evans.tuplet([(10, 1)])),
    evans.PitchHandler([24, "eqs''"]),
    trinton.change_notehead_command(
        notehead="highest", selector=trinton.select_leaves_by_index([0])
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Glissando(zero_padding=True),
            abjad.Dynamic("fff"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 0, -1], first=True, pitched=True
        ),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "indianred" { "tast. poss." }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=8,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'indianred)"],
        command="One",
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "darkred" { norm. }""",
            r"""\markup \with-color "darkred" { scratch }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, -1], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=6,
        full_string=True,
        right_padding=-23,
        tweaks=[r"""- \tweak color #darkred"""],
        command="Two",
    ),
    voice=score["violin voice"],
    preprocessor=trinton.fuse_preprocessor((3,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (15, 20)),
    evans.RhythmHandler(
        evans.talea(
            [4, 5, 6, 100],
            32,
        ),
    ),
    evans.PitchHandler([24]),
    library.duration_line(sustained=True),
    trinton.change_notehead_command(notehead="highest"),
    trinton.linear_attachment_command(
        attachments=[
            evans.make_fancy_gliss(
                1,
                1,
                1,
                1,
                1,
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
                0.5,
                0.5,
                1,
                2,
                3,
                2,
                1,
                2,
                3,
                2,
                1,
                0.5,
                5,
                0.5,
                5,
                0.5,
                0.5,
                0.5,
                5,
                1,
                2,
                3,
                right_padding=-6,
            ),
            abjad.Dynamic("fff"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_logical_ties_by_index([0, 0, 1, 2, 3, -1], first=True),
    ),
    trinton.spanner_command(
        strings=[
            library.return_fractional_scratch_markup("1 6"),
            r"""\markup \with-color "darkred" { scratch }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                2,
                2,
                3,
            ],
            first=True,
        ),
        style="solid-line-with-arrow",
        padding=8.5,
        full_string=True,
        right_padding=-1,
        tweaks=[r"""- \tweak color #darkred"""],
        end_hook=True,
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup { }""",
            r"""\markup \with-color "darkred" { scratch }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [3, -1],
            first=True,
        ),
        style="solid-line-with-arrow",
        padding=8.5,
        full_string=True,
        right_padding=-3,
        tweaks=[r"""- \tweak color #darkred"""],
    ),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (26, 35)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (
                    1,
                    1,
                    1,
                ),
                (
                    1,
                    1,
                    1,
                    1,
                ),
                (
                    1,
                    1,
                    1,
                ),
            ]
        ),
    ),
    trinton.force_rest(selector=trinton.patterned_tie_index_selector([3, 6, 11], 14)),
    evans.PitchHandler([24]),
    library.duration_line(),
    trinton.change_notehead_command(notehead="highest"),
    trinton.attachment_command(
        attachments=[
            evans.make_fancy_gliss(3, 0.5, 3, 2, right_padding=-6),
            abjad.Articulation("espressivo"),
        ],
        selector=trinton.logical_ties(first=True, grace=False, pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("ppp"), abjad.StartHairpin("<"), abjad.Dynamic("f")],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_logical_ties_by_index(
            [0, 5, 6, 9, 10, 17, 18, 27, 28, 31, 32, 39, 40, -1],
            first=True,
            pitched=True,
        ),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "indianred" { "tast. poss." }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=12.5,
        right_padding=0,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'indianred)"],
        command="One",
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "darkred" { louré }""",
        selector=trinton.select_logical_ties_by_index(
            [0, -1], first=True, pitched=True
        ),
        padding=10.5,
        right_padding=0,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
        command="Two",
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "darkred" { norm. }""",
            r"""\markup \with-color "darkred" { scratch }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, -2], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=8.5,
        full_string=True,
        right_padding=-1,
        tweaks=[r"""- \tweak color #darkred"""],
        command="Three",
    ),
    voice=score["violin voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((2, 3)),
)

# bass clarinet music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 35)),
    evans.RhythmHandler(
        evans.talea(
            [13, 4, 4, 4, 8, 6, 5, 1000],
            32,
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["eqs"],
        selector=trinton.select_logical_ties_by_index(
            [
                1,
                3,
                -1,
            ]
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["f"],
        selector=trinton.select_logical_ties_by_index(
            [
                4,
                5,
                6,
            ]
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["e"],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                2,
            ]
        ),
    ),
    library.duration_line(
        selector=trinton.select_logical_ties_by_index([0, 1, 2, 3, -1], grace=False)
    ),
    library.duration_line(
        sustained=True,
        selector=trinton.select_logical_ties_by_index(
            [
                4,
                5,
                6,
            ],
            grace=False,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("espressivo")],
        selector=trinton.select_logical_ties_by_index(
            [
                1,
                2,
                3,
            ],
            first=True,
            grace=False,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("spp"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<|"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
                4,
                5,
                5,
                6,
                6,
                7,
            ],
            first=True,
            grace=False,
        ),
    ),
    voice=score["bassclarinet voice"],
)

# percussion 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (32, 35)),
    evans.RhythmHandler(
        evans.talea(
            [4, 1, 1, 1, 1, 2, 1, 3],
            32,
            extra_counts=[
                4,
                3,
                2,
                1,
            ],
        )
    ),
    evans.PitchHandler([-1, 2, 2, -1, -1, 2]),
    trinton.transparent_noteheads(selector=trinton.logical_ties(all_except_first=True)),
    library.duration_line(selector=trinton.patterned_tie_index_selector([0, 5], 7)),
    trinton.change_lines(lines=2, clef="percussion"),
    library.boxed_markup(string="Anvils with pipe", site="opening"),
    trinton.attachment_command(
        attachments=[abjad.LaissezVibrer()],
        selector=trinton.patterned_tie_index_selector(
            [
                1,
                3,
                4,
            ],
            7,
            first=True,
            grace=False,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.patterned_tie_index_selector(
            [2, 6], 7, first=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation(">"),
        ],
        selector=trinton.patterned_tie_index_selector(
            [0, 5, 7], 8, first=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("sffz p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    voice=score["percussion 1 voice"],
)

# cello flash music commands

for voice_name, extra_count in zip(
    ["cello 1 voice", "cello 2 voice", "cello 3 voice"],
    [1, 0, -1],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (36,)),
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

# cello 1 music

trinton.make_music(
    lambda _: trinton.select_target(_, (22, 35)),
    evans.RhythmHandler(
        evans.talea(
            [
                5,
                9,
                5,
                8,
                6,
                7,
            ],
            32,
            extra_counts=[
                1,
            ],
        )
    ),
    trinton.force_rest(selector=trinton.select_logical_ties_by_index([-1])),
    evans.PitchHandler(["d,"]),
    evans.PitchHandler(
        [
            "13/1",
        ],
        as_ratios=True,
    ),
    library.change_lines(lines=5, clef="treble"),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True)
    ),
    trinton.transparent_noteheads(
        selector=trinton.logical_ties(all_except_first=True, pitched=True)
    ),
    trinton.noteheads_only(
        selector=trinton.logical_ties(all_except_first=True, pitched=True)
    ),
    library.duration_line(
        selector=trinton.patterned_tie_index_selector(
            [
                1,
            ],
            2,
            pitched=True,
        )
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override NoteHead.X-extent = #'(0.5 . 0)", "opening"
            ),
        ],
        selector=trinton.patterned_tie_index_selector(
            [
                0,
            ],
            2,
            first=True,
            pitched=True,
            grace=False,
        ),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "indianred" { "molto pont." }""",
        selector=trinton.patterned_tie_index_selector(
            [1, 2], 3, first=True, pitched=True
        ),
        padding=11.5,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'indianred)"],
        command="One",
    ),
    library.cello_trills(
        initial_width=7,
        y_scale=0.9,
        speed_factor=0.7,
        selector=trinton.patterned_tie_index_selector(
            [1, 2], 3, first=True, pitched=True
        ),
    ),
    library.cello_graces(
        selector=trinton.patterned_tie_index_selector(
            [
                0,
            ],
            2,
            grace=False,
            pitched=True,
        ),
        rotation=2,
        counter_offset=9,
    ),
    voice=score["cello 1 voice"],
    preprocessor=trinton.fuse_preprocessor((30,)),
)

library.clean_onbeat_graces(
    voices=[
        score["cello 1 voice graces 1"],
        score["cello 1 voice graces 2"],
        score["cello 1 voice graces 3"],
        score["cello 1 voice graces 4"],
    ],
    measures=(22, 35),
)

for voice_name in [
    "cello 1 voice graces 1",
    "cello 1 voice graces 2",
    "cello 1 voice graces 3",
    "cello 1 voice graces 4",
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (22, 35)),
        library.cello_trills(
            initial_width=0.2,
            y_scale=0.9,
            speed_factor=-0.9,
        ),
        trinton.linear_attachment_command(
            attachments=[library.downbow, abjad.StartSlur(), abjad.StopSlur()],
            selector=trinton.select_leaves_by_index([0, 0, -2]),
        ),
        trinton.spanner_command(
            strings=library.return_fraction_string_list(
                [(0, 7), (2, 7), (3, 7), (4, 7), (6, 7)]
            ),
            selector=trinton.select_leaves_by_index(
                [
                    0,
                    1,
                    1,
                    2,
                    2,
                    3,
                    3,
                    -2,
                ],
                pitched=True,
            ),
            style="solid-line-with-arrow",
            padding=19,
            full_string=True,
            tweaks=[r"""- \tweak color #darkred"""],
        ),
        trinton.linear_attachment_command(
            attachments=[
                abjad.Dynamic("ff"),
                abjad.StartHairpin("|>"),
                abjad.Dynamic("p"),
            ],
            selector=trinton.select_leaves_by_index([0, 0, -1]),
            direction=abjad.DOWN,
        ),
        voice=score[voice_name],
    )

# cello 2 music

trinton.make_music(
    lambda _: trinton.select_target(_, (22, 35)),
    evans.RhythmHandler(
        evans.talea(
            [
                5,
                9,
                5,
                8,
                6,
                7,
            ],
            32,
            extra_counts=[
                -2,
            ],
        )
    ),
    # trinton.force_rest(selector=trinton.select_logical_ties_by_index([-1])),
    evans.PitchHandler(["d,"]),
    evans.PitchHandler(["11/1", "9/1"], as_ratios=True),
    library.change_lines(lines=5, clef="treble"),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True)
    ),
    trinton.transparent_noteheads(
        selector=trinton.logical_ties(all_except_first=True, pitched=True)
    ),
    trinton.noteheads_only(
        selector=trinton.logical_ties(all_except_first=True, pitched=True)
    ),
    library.duration_line(
        selector=trinton.patterned_tie_index_selector(
            [
                1,
            ],
            2,
            pitched=True,
        )
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override NoteHead.X-extent = #'(0.5 . 0)", "opening"
            ),
        ],
        selector=trinton.patterned_tie_index_selector(
            [
                0,
            ],
            2,
            first=True,
            pitched=True,
            grace=False,
        ),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "indianred" { "molto pont." }""",
        selector=trinton.patterned_tie_index_selector(
            [1, 2], 3, first=True, pitched=True
        ),
        padding=9.5,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'indianred)"],
        command="One",
    ),
    library.cello_trills(
        initial_width=0.3,
        y_scale=0.9,
        speed_factor=-0.7,
        selector=trinton.patterned_tie_index_selector(
            [1, 2], 3, first=True, pitched=True
        ),
    ),
    library.cello_graces(
        selector=trinton.patterned_tie_index_selector(
            [
                0,
            ],
            2,
            grace=False,
            pitched=True,
        ),
        rotation=0,
        counter_offset=1,
    ),
    voice=score["cello 2 voice"],
    preprocessor=trinton.fuse_preprocessor((30,)),
)

library.clean_onbeat_graces(
    voices=[
        score["cello 2 voice graces 1"],
        score["cello 2 voice graces 2"],
        score["cello 2 voice graces 3"],
        score["cello 2 voice graces 4"],
    ],
    measures=(22, 35),
)

for voice_name in [
    "cello 2 voice graces 1",
    "cello 2 voice graces 2",
    "cello 2 voice graces 3",
    "cello 2 voice graces 4",
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (22, 35)),
        library.cello_trills(
            initial_width=6,
            y_scale=0.9,
            speed_factor=0.9,
        ),
        trinton.linear_attachment_command(
            attachments=[library.downbow, abjad.StartSlur(), abjad.StopSlur()],
            selector=trinton.select_leaves_by_index([0, 0, -2]),
        ),
        trinton.linear_attachment_command(
            attachments=[
                abjad.Dynamic("ff"),
                abjad.StartHairpin("|>"),
                abjad.Dynamic("p"),
            ],
            selector=trinton.select_leaves_by_index([0, 0, -1]),
            direction=abjad.DOWN,
        ),
        voice=score[voice_name],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (22, 35)),
    trinton.spanner_command(
        strings=library.return_fraction_string_list(
            [
                (0, 9),
                (3, 9),
                (4, 9),
                (5, 9),
                (7, 9),
            ]
        ),
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                1,
                2,
                2,
                3,
                3,
                -2,
            ],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=19,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
    ),
    voice=score["cello 2 voice graces 1"],
)

for voice_name, padding in zip(
    ["cello 2 voice graces 2", "cello 2 voice graces 3", "cello 2 voice graces 4"],
    [16.5, 18, 21],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (22, 35)),
        trinton.spanner_command(
            strings=library.return_fraction_string_list(
                [
                    (0, 9),
                    (3, 9),
                    (4, 9),
                    (7, 9),
                ]
            ),
            selector=trinton.select_leaves_by_index(
                [0, 1, 1, 2, 2, -2],
                pitched=True,
            ),
            style="solid-line-with-arrow",
            padding=padding,
            full_string=True,
            tweaks=[r"""- \tweak color #darkred"""],
        ),
        voice=score[voice_name],
    )

# cello 3 music

abjad.attach(abjad.Clef("bass"), abjad.select.leaf(score["cello 3 voice"], 0))

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 35)),
    evans.RhythmHandler(
        evans.talea(
            [12, 5, 5, 5, 15, 1000],
            32,
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["d,"],
        selector=trinton.logical_ties(
            exclude=[
                2,
            ]
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["dqf,"],
        selector=trinton.select_logical_ties_by_index(
            [
                2,
            ]
        ),
    ),
    library.duration_line(),
    trinton.attachment_command(
        attachments=[
            library.upbow,
            abjad.Articulation("tenuto"),
            abjad.Articulation("espressivo"),
            evans.make_fancy_gliss(
                0.5,
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
                3.7,
                3.5,
                3.2,
                3,
                2.7,
                2.5,
                2.2,
                2,
                1.7,
                1.5,
                1.2,
                1,
                0.5,
                right_padding=-6,
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                2,
            ],
            first=True,
            grace=False,
        ),
    ),
    trinton.attachment_command(
        attachments=[
            library.downbow,
            abjad.Articulation(">"),
            evans.make_fancy_gliss(
                5,
                6,
                5,
                0.5,
                0.5,
                1,
                0.5,
                0.5,
                5,
                3,
                5,
                3,
                7,
                0.5,
                0.5,
                1,
                1.5,
                2,
                2.5,
                3,
                3.2,
                3.5,
                3.7,
                4,
                4.2,
                4.5,
                4.7,
                5,
                6,
                7,
                right_padding=-6,
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                1,
            ],
            first=True,
            grace=False,
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("tenuto"),
            evans.make_fancy_gliss(
                1, 5, 1, 1, 5, 1, 1, 5, 1, 5, 1, 1, right_padding=-6
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                3,
            ],
            first=True,
            grace=False,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("sffz p"),
            abjad.StartHairpin("<|"),
            abjad.Dynamic("fff"),
            trinton.make_custom_dynamic("s mp"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [2, 2, 3, 4, 6, 6, 7], first=True
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("spp"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                4,
                4,
                5,
            ],
            first=True,
            grace=False,
        ),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color #(css-color 'goldenrod) { "( senza vib. )" }""",
        selector=trinton.select_logical_ties_by_index([0, 1], first=True),
        padding=4,
        right_padding=0,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'goldenrod)"],
    ),
    trinton.linear_attachment_command(
        attachments=[
            evans.make_fancy_gliss(
                0.1,
                0.1,
                0.1,
                0.1,
                0.1,
                0.1,
                0.1,
                0.1,
                0.1,
                0.1,
                0.1,
                0.1,
                0.1,
                0.1,
                0.1,
                0.1,
                0.1,
                0.1,
                0.1,
                0.1,
                0.1,
                0.3,
                0.3,
                0.3,
                0.3,
                0.3,
                0.3,
                0.3,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                1,
                1.5,
                2,
                2.5,
                3,
                3.2,
                3.5,
                3.7,
                4,
                4.5,
                5,
                6,
                7,
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
                right_padding=-6,
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                -2,
                -1,
            ],
            first=True,
            grace=False,
        ),
    ),
    trinton.spanner_command(
        strings=[
            "\\skin-default-notehead-markup",
            "\\skin-diamond-notehead-markup",
        ],
        selector=trinton.select_logical_ties_by_index([2, 3], first=True),
        style="solid-line-with-arrow",
        padding=7,
        full_string=True,
        command="One",
        right_padding=-1,
        tweaks=[r"""- \tweak color #(css-color 'darksalmon)"""],
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "indianred" { norm. }""",
            r"""\markup \with-color "indianred" { pont. }""",
        ],
        selector=trinton.select_logical_ties_by_index([2, 3], first=True),
        style="solid-line-with-arrow",
        padding=5,
        full_string=True,
        command="Two",
        right_padding=-2,
        tweaks=[r"""- \tweak color #(css-color 'indianred)"""],
    ),
    trinton.spanner_command(
        strings=[
            "\\skin-default-notehead-markup",
            "\\skin-half-diamond-notehead-markup",
        ],
        selector=trinton.select_logical_ties_by_index([6, 7], first=True),
        style="solid-line-with-arrow",
        padding=6,
        full_string=True,
        command="One",
        right_padding=-1,
        tweaks=[r"""- \tweak color #(css-color 'darksalmon)"""],
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "indianred" { "molto tast." }""",
        selector=trinton.select_logical_ties_by_index([6, 7], first=True),
        padding=4,
        full_string=True,
        command="Two",
        right_padding=0,
        tweaks=[r"""- \tweak color #(css-color 'indianred)"""],
    ),
    voice=score["cello 3 voice"],
)

# trombone music

library.trombone_alpha(
    voices=[score["tenortrombone voice"], score["basstrombone voice"]],
    measures=(6, 35),
    rotation=3,
    dynamics=[
        "ff",
        "mp",
        "p",
        "p",
        "p",
        "p",
        "p",
        "p",
        "p",
        "p",
        "p",
        "p",
        "p",
        "p",
        "p",
        "p",
        "p",
        "p",
        "p",
        "p",
        "p",
        "p",
        "p",
        "p",
        "p",
        "p",
        "p",
        "p",
    ],
)

abjad.attach(abjad.Clef("bass"), abjad.select.leaf(score["basstrombone voice"], 0))

# percussion 2 music

abjad.attach(abjad.Clef("bass"), abjad.select.leaf(score["percussion 2 voice"], 0))

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 35)),
    evans.RhythmHandler(
        evans.talea([11, 3, 4, 5, 6, 1000], 32),
    ),
    evans.PitchHandler(["d,"]),
    library.duration_line(sustained=True),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("spp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("mf"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
                2,
                2,
                3,
                3,
                4,
                4,
                5,
            ],
            first=True,
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

# globals

library.set_all_time_signatures(score=score)

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

library.write_timestamps(
    global_context=score["Global Context"],
    second_range=(122, 157),
    measure_range=(1, 36),
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
    segment_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/sections/07",
    build_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/build",
    segment_name="07",
    includes=[
        "/Users/trintonprater/scores/bibliopegy/bibliopegy/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
