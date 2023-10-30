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

# tape music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 12)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    evans.PitchHandler([-1]),
    library.change_lines(lines=2, clef="percussion"),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\override NoteHead.stencil = #ly:text-interface::print",
                    r"""\override NoteHead.text = \markup \with-color "darkmagenta" { θ }""",
                ],
                site="before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    library.duration_line(color="darkmagenta"),
    voice=score["piano voice"],
    preprocessor=trinton.fuse_preprocessor((12,)),
)

# cello 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 8)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    evans.PitchHandler([5]),
    library.change_lines(lines=4, clef="varpercussion"),
    trinton.change_notehead_command(
        notehead="highest", selector=trinton.select_leaves_by_index([0])
    ),
    library.duration_line(),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("o<"), abjad.Dynamic("ff")],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "indianred" { "pont." }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=7.5,
        right_padding=0,
        full_string=True,
        tweaks=[r"""- \tweak color #(css-color 'indianred)"""],
        command="One",
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "darkred" { "norm." }""",
            library.return_fractional_scratch_markup("3 4"),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=4,
        right_padding=-6,
        full_string=True,
        tweaks=[r"- \tweak color #darkred"],
        command="Two",
    ),
    voice=score["cello 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 12)),
    evans.RhythmHandler(evans.talea([1], 32, extra_counts=[1, -1, 0, 3])),
    evans.PitchHandler([5]),
    trinton.change_notehead_command(
        notehead="highest",
        selector=trinton.patterned_tie_index_selector([1], 2, first=True, grace=False),
    ),
    library.duration_line(),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("sp +"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
            abjad.StopSlur(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.StartSlur(),
            abjad.Articulation(">"),
            abjad.Articulation("tenuto"),
        ],
        selector=trinton.patterned_tie_index_selector([0], 8, first=True, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopSlur()],
        selector=trinton.patterned_tie_index_selector([7], 8, first=True, pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "indianred" { pont. }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=8,
        right_padding=0,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'indianred)"],
        command="One",
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "darkred" { louré }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=6,
        right_padding=0,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
        command="Two",
    ),
    voice=score["cello 1 voice"],
)

# cello 2 music

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 12)),
    evans.RhythmHandler(evans.talea([2, 1000], 8)),
    evans.PitchHandler(["aqf,"]),
    library.duration_line(),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_logical_ties_by_index(
            [1], first=True, pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
            trinton.make_custom_dynamic("sp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 1, 1, 3, 3, -1]),
    ),
    trinton.spanner_command(
        strings=[
            "\skin-default-notehead-markup",
            "\skin-diamond-notehead-markup",
        ],
        selector=trinton.select_leaves_by_index([0, 3, 3, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=6,
        full_string=True,
        command="One",
        right_padding=0,
        end_hook=True,
        tweaks=[r"""- \tweak color #(css-color 'darksalmon)"""],
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "indianred" { "molto tast." }""",
            r"""\markup \with-color "indianred" { "molto pont." }""",
        ],
        selector=trinton.select_leaves_by_index([0, 3, 3, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=4,
        right_padding=0,
        full_string=True,
        end_hook=True,
        tweaks=[r"- \tweak color #(css-color 'indianred)"],
        command="Two",
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "darkmagenta" { \fontsize #3.5 \override #'(font-name . "ekmelos") \char ##xe222 \override #'(font-name . "Bodoni72 Italic") " ( trem. largo )" }""",
        selector=trinton.select_logical_ties_by_index(
            [-2, -1], first=True, pitched=True
        ),
        padding=8.5,
        right_padding=1.5,
        full_string=True,
        tweaks=[r"- \tweak color #darkmagenta"],
        command="Three",
    ),
    voice=score["cello 2 voice"],
)

# cello 3 music

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 8)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    library.duration_line(),
    evans.PitchHandler(["cqs,", "e'"]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1], pitched=True),
    ),
    trinton.spanner_command(
        strings=[
            "\skin-diamond-notehead-markup",
            "\skin-half-diamond-notehead-markup",
            "\skin-diamond-notehead-markup",
            "\skin-half-diamond-notehead-markup",
            "\skin-diamond-notehead-markup",
        ],
        selector=trinton.select_leaves_by_index(
            [0, 1, 1, 2, 2, 3, 3, 5, 5, -1], pitched=True
        ),
        style="solid-line-with-arrow",
        padding=8,
        full_string=True,
        command="One",
        right_padding=0,
        end_hook=True,
        tweaks=[r"""- \tweak color #(css-color 'darksalmon)"""],
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "indianred" { "molto tast." }""",
            r"""\markup \with-color "indianred" { "pont." }""",
        ],
        selector=trinton.select_leaves_by_index([0, 5, 5, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=6,
        right_padding=0,
        full_string=True,
        end_hook=True,
        tweaks=[r"- \tweak color #(css-color 'indianred)"],
        command="Two",
    ),
    voice=score["cello 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 12)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    evans.PitchHandler(["fqs''"]),
    trinton.change_notehead_command(
        notehead="harmonic", selector=trinton.select_leaves_by_index([0], pitched=True)
    ),
    library.duration_line(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("treble"),
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
            trinton.make_custom_dynamic("sp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 0, -1], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string="""\markup \with-color "darksalmon" { \musicglyph "noteheads.s0harmonic" "  11°/C1(IV)" }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=5,
        right_padding=0,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'darksalmon)"],
        command="One",
    ),
    voice=score["cello 3 voice"],
)

# globals

library.set_all_time_signatures(score=score, exclude_viola=False)

# library.remove_redundant_time_signatures(score=score)

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

library.write_timestamps(
    global_context=score["Global Context"],
    second_range=(276, 1000),
    measure_range=(1, 12),
)

library.silence(score=score, measures=[13], timestamps=[r"""4\'48\" - 4\'56\""""])

# cutaway

trinton.whiteout_empty_staves(
    score=score,
    cutaway="blank",
    # voice_names=[
    #     _
    #     for _ in library.all_voice_names
    #     # if _ != "viola voice"
    #     # and _ != "viola voice time signatures"
    #     # if _ != "piano voice"
    #     # and _ != "percussion 1 voice"
    # ],
    last_segment=True,
)

# library.blank_measure_by_hand(
#     score=score,
#     voice_names=["piano voice"],
#     measures=[17],
# )

# parts

trinton.extract_parts(score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/sections/14",
    build_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/build",
    segment_name="14",
    includes=[
        "/Users/trintonprater/scores/bibliopegy/bibliopegy/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
