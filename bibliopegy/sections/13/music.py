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


# globals

library.set_all_time_signatures(score=score, exclude_viola=True)

# library.remove_redundant_time_signatures(score=score)

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

# library.forbid_break(score=score, measures=[1, 3, 4])

library.write_timestamps(
    global_context=score["Global Context"],
    second_range=(256, 276),
    measure_range=(1, 20),
)

# cutaway

trinton.whiteout_empty_staves(
    score=score,
    cutaway="blank",
    voice_names=[
        _
        for _ in library.all_voice_names
        if _ != "viola voice" and _ != "viola voice time signatures"
    ],
    last_segment=True,
)

# library.blank_measure_by_hand(
#     score=score,
#     voice_names=["viola voice"],
#     measures=[1, 2, 3, 4],
# )

for voice_name in library.all_voice_names:
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
    segment_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/sections/13",
    build_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/build",
    segment_name="13",
    includes=[
        "/Users/trintonprater/scores/bibliopegy/bibliopegy/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
