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

score = library.bibliopegy_score([(1, 8) for _ in range(1, 21)])

# music commands

# tape music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 20)),
    evans.RhythmHandler(evans.talea([14, -100], 8)),
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
                    1000,
                ],
                32,
            ),
        ),
        direction=abjad.UP,
        voice_name="beta voice",
    ),
    voice=score["piano voice"],
    preprocessor=trinton.fuse_preprocessor((14,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 20)),
    library.duration_line(color="darkred"),
    voice=score["piano voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 20)),
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

# viola music

library.write_simultaneous_time_signatures(
    score=score,
    voice_name="viola voice",
    signature_pairs=[(3, 8), (1, 16), (5, 16), (1, 8), (5, 8), (9, 16), (7, 16)],
    measure_range=(1, 20),
    reset=False,
)

library.make_metric_music(
    evans.RhythmHandler(
        evans.tuplet(
            [
                (-1,),
                (
                    1,
                    1,
                    1,
                    1,
                    1,
                ),
            ]
        ),
    ),
    rmakers.rewrite_dots,
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([[-1, 2]]),
    library.change_lines(
        lines=4, clef="varpercussion", selector=trinton.select_leaves_by_index([0])
    ),
    trinton.beam_groups(
        selector=abjad.select.tuplets,
    ),
    library.boxed_markup(string="+ Viola"),
    library.boxed_markup(
        string="( Styrofoam )", selector=trinton.select_leaves_by_index([0])
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "indianred" \center-column { \line { crine molto pont. } \line { legno dietro pont. } }""",
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                4,
            ],
            first=True,
            grace=False,
            pitched=True,
        ),
        padding=22,
        right_padding=2.5,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'indianred)"],
        command="One",
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "indianred" \center-column { \line { legno molto pont. } \line { crine dietro pont. } }""",
        selector=trinton.select_logical_ties_by_index(
            [5, -1], first=True, grace=False, pitched=True
        ),
        padding=19,
        right_padding=2.5,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'indianred)"],
        command="One",
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "darkred" { "full bows as possible" }""",
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                4,
            ],
            first=True,
            grace=False,
            pitched=True,
        ),
        padding=18,
        full_string=True,
        right_padding=2.5,
        command="Two",
        tweaks=[r"""- \tweak color #darkred"""],
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "darkred" { "full bows as possible" }""",
        selector=trinton.select_logical_ties_by_index(
            [5, -1], first=True, grace=False, pitched=True
        ),
        padding=15,
        full_string=True,
        right_padding=2.5,
        command="Two",
        tweaks=[r"""- \tweak color #darkred"""],
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([1, 3, 3, 6, 8, 10, 10, -1]),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("tenuto"),
        ],
        selector=trinton.logical_ties(pitched=True, first=True),
        direction=abjad.DOWN,
    ),
    trinton.notehead_bracket_command(),
    score=score,
    voice_name="viola voice",
    second_range=(1, 20),
    measure_number_range=(1, 4),
    preprocessor=trinton.fuse_sixteenths_preprocessor((3,)),
)

for measure in [1, 2, 3, 4]:
    library.make_metric_music(
        evans.IntermittentVoiceHandler(
            rhythm_handler=evans.RhythmHandler(evans.tuplet([(1, 1, 1)])),
            voice_name=f"styrofoam voice {measure}",
            direction=abjad.DOWN,
        ),
        score=score,
        voice_name="viola voice",
        second_range=(1, 20),
        measure_number_range=(measure,),
    )

for i, dynamic in zip([1, 2, 3, 4], ["ff", "mf", "p", "ppp"]):
    trinton.make_music(
        lambda _: trinton.select_target(_, (1, 7)),
        rmakers.rewrite_dots,
        evans.PitchHandler([-13]),
        abjad.beam,
        trinton.glissando_command(
            selector=trinton.ranged_selector(ranges=[range(0, 3)], nested=True),
            zero_padding=True,
        ),
        trinton.attachment_command(
            attachments=[
                abjad.LilyPondLiteral(
                    r"\once \override NoteHead.no-ledgers = ##t", site="before"
                )
            ],
            selector=trinton.select_leaves_by_index([0, -1]),
        ),
        trinton.linear_attachment_command(
            attachments=[
                abjad.StartHairpin("o<"),
                abjad.Dynamic(dynamic),
                abjad.StartHairpin(">o"),
                abjad.StopHairpin(),
            ],
            selector=trinton.select_leaves_by_index([0, 1, 1, -1]),
        ),
        trinton.notehead_bracket_command(),
        voice=score[f"styrofoam voice {i}"],
    )


library.make_metric_music(
    evans.RhythmHandler(
        evans.tuplet(
            [
                (-1,),
                (
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                ),
            ]
        ),
    ),
    rmakers.rewrite_dots,
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([[-1, 2]]),
    trinton.beam_groups(
        selector=abjad.select.tuplets,
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "indianred" \center-column { \line { crine molto pont. } \line { legno dietro pont. } }""",
        selector=trinton.select_logical_ties_by_index(
            [0, -1],
            first=True,
            grace=False,
            pitched=True,
        ),
        padding=19,
        right_padding=2.5,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'indianred)"],
        command="One",
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "darkred" { "full bows as possible" }""",
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                -1,
            ],
            first=True,
            grace=False,
            pitched=True,
        ),
        padding=15,
        full_string=True,
        right_padding=2.5,
        command="Two",
        tweaks=[r"""- \tweak color #darkred"""],
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([1, 4, 4, -1]),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("tenuto"),
        ],
        selector=trinton.logical_ties(pitched=True, first=True),
        direction=abjad.DOWN,
    ),
    evans.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(evans.tuplet([(1, 1, 1)])),
        voice_name=r"styrofoam voice 5",
        direction=abjad.DOWN,
    ),
    trinton.notehead_bracket_command(),
    score=score,
    voice_name="viola voice",
    second_range=(1, 20),
    measure_number_range=(6,),
    preprocessor=trinton.fuse_sixteenths_preprocessor((3,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 17)),
    evans.PitchHandler([-13]),
    abjad.beam,
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 3)], nested=True),
        zero_padding=True,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override NoteHead.no-ledgers = ##t", site="before"
            )
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Dots.staff-position = #2", site="before"
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ],
            pitched=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("p"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 1, 1, -1], pitched=True),
    ),
    trinton.notehead_bracket_command(),
    voice=score[r"styrofoam voice 5"],
)

library.make_metric_music(
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Staff.BarLine.hair-thickness = 1", site="after"
            )
        ],
        selector=trinton.select_leaves_by_index([-1]),
    ),
    score=score,
    voice_name="viola voice",
    second_range=(1, 20),
    measure_number_range=(7,),
)

# bass clarinet music

for measure_range, rotation in zip(
    [
        (1, 4),
        (10, 12),
    ],
    [0, 4],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, measure_range),
        evans.RhythmHandler(
            evans.talea(
                trinton.rotated_sequence([7, 1, 1, 1, 4, 1, 1, 1], rotation),
                32,
                extra_counts=[4, 0],
            )
        ),
        evans.PitchHandler(["f", "g", "g", "g"]),
        library.duration_line(
            selector=trinton.patterned_tie_index_selector(
                [0], 4, pitched=True, first=True, grace=False
            )
        ),
        trinton.attachment_command(
            attachments=[abjad.Articulation("staccato")],
            selector=trinton.patterned_tie_index_selector(
                [1, 2, 3], 4, first=True, grace=False
            ),
        ),
        trinton.attachment_command(
            attachments=[abjad.Dynamic("ppp"), abjad.Articulation("espressivo")],
            selector=trinton.patterned_tie_index_selector(
                [0], 4, first=True, grace=False
            ),
        ),
        trinton.attachment_command(
            attachments=[abjad.Dynamic("p")],
            selector=trinton.patterned_tie_index_selector(
                [1], 4, first=True, grace=False
            ),
        ),
        library.color_fingerings(
            selector=trinton.patterned_tie_index_selector(
                [1, 2, 3], 4, first=True, grace=False
            ),
            index=measure_range[0],
        ),
        voice=score["bassclarinet voice"],
        preprocessor=trinton.fuse_preprocessor((2, 3)),
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "darksalmon" { slaptongue }""",
        selector=trinton.select_logical_ties_by_index(
            [
                1,
                3,
                5,
                7,
            ],
            first=True,
            grace=False,
        ),
        padding=6,
        full_string=True,
        right_padding=2.5,
        tweaks=[r"""- \tweak color #(css-color 'darksalmon)"""],
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 12)),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "darksalmon" { slaptongue }""",
        selector=trinton.select_logical_ties_by_index(
            [
                1,
                3,
                5,
                -1,
            ],
            first=True,
            grace=False,
        ),
        padding=6,
        full_string=True,
        right_padding=2.5,
        tweaks=[r"""- \tweak color #(css-color 'darksalmon)"""],
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (16, 20)),
    evans.RhythmHandler(
        evans.talea([1, -6, 1, 1, -7, 1, -2, 1, -5], 32, extra_counts=[4, 0])
    ),
    evans.PitchHandler(["g"]),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.logical_ties(pitched=True, first=True, grace=False),
    ),
    library.color_fingerings(
        selector=trinton.logical_ties(pitched=True, first=True, grace=False), index=4
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "darksalmon" { slaptongue }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=6,
        full_string=True,
        right_padding=2.5,
        tweaks=[r"""- \tweak color #(css-color 'darksalmon)"""],
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pppp"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["bassclarinet voice"],
)

# percussion 1 music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 11)),
    evans.RhythmHandler(rmakers.note),
    evans.PitchHandler([[-1, 2]]),
    library.duration_line(),
    library.change_lines(lines=2, clef="percussion"),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin(">"), abjad.Dynamic("pp")],
        selector=trinton.select_logical_ties_by_index(
            [0, -1], first=True, pitched=True
        ),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "darkmagenta" { \fontsize #3.5 \override #'(font-name . "ekmelos") \char ##xe222 \override #'(font-name . "Bodoni72 Italic") " ( trem. rall. )" }""",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=3,
        right_padding=1,
        full_string=True,
        tweaks=[r"- \tweak color #darkmagenta"],
    ),
    voice=score["percussion 1 voice"],
    preprocessor=trinton.fuse_preprocessor((11,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 18)),
    evans.RhythmHandler(
        evans.talea([1, -6, 1, 1, -7, 1, -2, 1, -5], 32, extra_counts=[4, 0])
    ),
    evans.PitchHandler(
        [
            -1,
            2,
        ]
    ),
    library.duration_line(
        selector=trinton.patterned_tie_index_selector(
            [0], 2, first=True, pitched=True, grace=False
        )
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LaissezVibrer(),
        ],
        selector=trinton.patterned_tie_index_selector(
            [1], 2, first=True, pitched=True, grace=False
        ),
    ),
    voice=score["percussion 1 voice"],
    preprocessor=trinton.fuse_preprocessor((3, 4)),
)

# cello 1 music

for measure_range in [(1, 6), (12, 14)]:
    trinton.make_music(
        lambda _: trinton.select_target(_, measure_range),
        evans.RhythmHandler(
            evans.talea(
                [10, 7],
                64,
            )
        ),
        evans.PitchHandler(["ef,"]),
        evans.PitchHandler(
            [
                "13/1",
            ],
            as_ratios=True,
        ),
        trinton.force_accidentals_command(
            selector=trinton.logical_ties(first=True, pitched=True)
        ),
        library.duration_line(),
        trinton.hooked_spanner_command(
            string=r"""\markup \with-color "darkred" { "flaut. moltissimo" }""",
            selector=trinton.select_leaves_by_index([0, -1]),
            command="One",
            padding=11,
            right_padding=0,
            full_string=True,
            tweaks=[r"""- \tweak color #"darkred" """],
        ),
        library.cello_trills(
            initial_width=0.3,
            y_scale=-0.6,
            speed_factor=-0.6,
            selector=trinton.patterned_tie_index_selector(
                [2, 3],
                4,
                first=True,
            ),
        ),
        library.cello_trills(
            initial_width=2.7,
            y_scale=-0.6,
            speed_factor=0.6,
            selector=trinton.patterned_tie_index_selector(
                [0, 1],
                4,
                first=True,
            ),
        ),
        voice=score["cello 1 voice"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 6)),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "indianred" { "tast." }""",
            r"""\markup \with-color "indianred" { "molto pont." }""",
            r"""\markup \with-color "indianred" { "tast." }""",
            r"""\markup \with-color "indianred" { "molto pont." }""",
            r"""\markup \with-color "indianred" { "tast." }""",
            r"""\markup \with-color "indianred" { "molto pont." }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 2, 2, 4, 4, 6, 6, 8, 8, -1], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=13,
        full_string=True,
        command="Two",
        tweaks=[r"""- \tweak color #(css-color 'indianred)"""],
    ),
    voice=score["cello 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 14)),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "indianred" { "tast." }""",
            r"""\markup \with-color "indianred" { "molto pont." }""",
            r"""\markup \with-color "indianred" { "tast." }""",
            r"""\markup \with-color "indianred" { "molto pont." }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 2, 2, 4, 4, -1], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=13,
        full_string=True,
        command="Two",
        tweaks=[r"""- \tweak color #(css-color 'indianred)"""],
    ),
    voice=score["cello 1 voice"],
)

# cello 2 music

for measure_range in [(1, 9), (13, 14)]:
    trinton.make_music(
        lambda _: trinton.select_target(_, measure_range),
        evans.RhythmHandler(
            evans.talea(
                [7, 10],
                64,
            )
        ),
        evans.PitchHandler(["ef,"]),
        evans.PitchHandler(["11/1"], as_ratios=True),
        trinton.force_accidentals_command(
            selector=trinton.logical_ties(first=True, pitched=True)
        ),
        library.duration_line(),
        trinton.hooked_spanner_command(
            string=r"""\markup \with-color "darkred" { "flaut. moltissimo" }""",
            selector=trinton.select_leaves_by_index([0, -1]),
            command="One",
            padding=11,
            right_padding=0,
            full_string=True,
            tweaks=[r"""- \tweak color #"darkred" """],
        ),
        library.cello_trills(
            initial_width=0.3,
            y_scale=-0.6,
            speed_factor=-0.6,
            selector=trinton.patterned_tie_index_selector(
                [
                    0,
                    1,
                ],
                4,
                first=True,
            ),
        ),
        library.cello_trills(
            initial_width=2.7,
            y_scale=-0.6,
            speed_factor=0.6,
            selector=trinton.patterned_tie_index_selector(
                [2, 3],
                4,
                first=True,
            ),
        ),
        voice=score["cello 2 voice"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 9)),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "indianred" { "molto pont." }""",
            r"""\markup \with-color "indianred" { "tast." }""",
            r"""\markup \with-color "indianred" { "molto pont." }""",
            r"""\markup \with-color "indianred" { "tast." }""",
            r"""\markup \with-color "indianred" { "molto pont." }""",
            r"""\markup \with-color "indianred" { "tast." }""",
            r"""\markup \with-color "indianred" { "molto pont." }""",
            r"""\markup \with-color "indianred" { "tast." }""",
            r"""\markup \with-color "indianred" { "molto pont." }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 2, 2, 4, 4, 6, 6, 8, 8, 10, 10, 12, 12, 14, 14, -1],
            first=True,
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=13,
        full_string=True,
        command="Two",
        tweaks=[r"""- \tweak color #(css-color 'indianred)"""],
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 14)),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "indianred" { "tast." }""",
            r"""\markup \with-color "indianred" { "molto pont." }""",
            r"""\markup \with-color "indianred" { "tast." }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 2, 2, -1], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=13,
        full_string=True,
        command="Two",
        tweaks=[r"""- \tweak color #(css-color 'indianred)"""],
    ),
    voice=score["cello 2 voice"],
)

# cello 3 music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    evans.RhythmHandler(rmakers.note),
    evans.PitchHandler(["ef,"]),
    library.duration_line(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            evans.make_fancy_gliss(
                7,
                5,
                5,
                4,
                4,
                4,
                3,
                3,
                3,
                3,
                2,
                2,
                2,
                2,
                2,
                1.5,
                1.5,
                1.5,
                1.5,
                1.5,
                1.5,
                1,
                1,
                1,
                1,
                1,
                1,
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
            ),
            abjad.Dynamic("fff"),
            abjad.Articulation(">"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 0, 0, -1]),
    ),
    trinton.spanner_command(
        strings=[
            "\skin-default-notehead-markup",
            "\skin-diamond-notehead-markup",
        ],
        selector=trinton.select_logical_ties_by_index([0, -1], first=True),
        style="solid-line-with-arrow",
        padding=5.5,
        full_string=True,
        command="One",
        tweaks=[r"""- \tweak color #(css-color 'darksalmon)"""],
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "indianred" { "molto pont." }""",
            r"""\markup \with-color "indianred" { "molto tast." }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, -1], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=3.5,
        right_padding=-3,
        full_string=True,
        command="Two",
        tweaks=[r"""- \tweak color #(css-color 'indianred)"""],
    ),
    voice=score["cello 3 voice"],
    preprocessor=trinton.fuse_preprocessor((7,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 20)),
    evans.RhythmHandler(
        evans.talea(
            [-3, 1, -12, 1, -7, 1, -6, 1, -9, 1, -6, 1],
            32,
        )
    ),
    evans.PitchHandler(["eqf,", "ef,", "fqf,", "eqs,", "ef,", "fqf,", "dqs,", "ef,"]),
    trinton.attachment_command(
        attachments=[abjad.BendAfter(3)],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "darkred" { "pizz. molto pont." }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        command="One",
        padding=3.5,
        full_string=True,
        tweaks=[r"""- \tweak color #"darkred" """],
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["cello 3 voice"],
)

# trombone music

for voice_name, rotation in zip(["tenortrombone voice", "basstrombone voice"], [3, 0]):
    trinton.make_music(
        lambda _: trinton.select_target(_, (1, 20)),
        evans.RhythmHandler(
            evans.talea(
                trinton.rotated_sequence(
                    [1, -6, 1, -3, 1, -12, 1, -9, 1, -6, 1, -9], rotation
                ),
                32,
            )
        ),
        library.change_lines(lines=1, clef="varpercussion"),
        trinton.attachment_command(
            attachments=[abjad.Articulation("staccato"), abjad.BendAfter(3)],
            selector=trinton.logical_ties(first=True, pitched=True),
        ),
        trinton.linear_attachment_command(
            attachments=[
                abjad.Dynamic("mp"),
                abjad.StartHairpin(">"),
                abjad.Dynamic("pppp"),
            ],
            selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
        ),
        voice=score[voice_name],
    )

# percussion 2 music

marimba_index = 7

for measure_range in [(1, 3), (6, 7), (9, 12), (14,)]:

    trinton.make_music(
        lambda _: trinton.select_target(_, measure_range),
        evans.RhythmHandler(library.marimba_alpha_iv(index=marimba_index)),
        library.marimba_graces(),
        evans.PitchHandler(["ef,"]),
        trinton.pitch_with_selector_command(
            selector=trinton.pleaves(grace=True),
            pitch_list=library._marimba_grace_pitch_list["6 first"],
        ),
        library.marimba_grace_ottavas(),
        library.duration_line(selector=trinton.pleaves(grace=False)),
        library.marimba_tremoli(),
        trinton.attachment_command(
            attachments=[
                abjad.Clef("bass"),
            ],
            selector=trinton.select_logical_ties_by_index(
                [
                    0,
                ],
                first=True,
            ),
        ),
        trinton.linear_attachment_command(
            attachments=itertools.cycle([abjad.Dynamic("pp"), abjad.Dynamic("mp")]),
            selector=trinton.logical_ties(first=True, pitched=True, grace=False),
        ),
        voice=score["percussion 2 voice"],
        preprocessor=trinton.fuse_preprocessor((100,)),
    )

    marimba_index += 1

# globals

library.set_all_time_signatures(score=score, exclude_viola=True)

# library.remove_redundant_time_signatures(score=score)

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

library.forbid_break(score=score, measures=[1, 2, 3, 4, 5, 6])

library.write_timestamps(
    global_context=score["Global Context"],
    second_range=(212, 1000),
    measure_range=(1, 20),
)

# cutaway

trinton.whiteout_empty_staves(
    score=score,
    cutaway="blank",
    voice_names=[
        _
        for _ in library.all_voice_names
        if _ != "viola voice"
        and _ != "viola voice time signatures"
        and _ != "piano voice"
        and _ != "percussion 1 voice"
    ],
    last_segment=True,
)

library.blank_measure_by_hand(
    score=score,
    voice_names=["percussion 1 voice"],
    measures=[16, 19, 20],
)

for voice_name in library.all_voice_names_include_time_signature_context:
    trinton.make_music(
        lambda _: trinton.select_target(_, (20,)),
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

# parts

trinton.extract_parts(score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/sections/12",
    build_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/build",
    segment_name="12",
    includes=[
        "/Users/trintonprater/scores/bibliopegy/bibliopegy/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
