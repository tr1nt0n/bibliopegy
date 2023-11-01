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

score = library.bibliopegy_score([(1, 8) for _ in range(1, 18)])

# music commands

# tape music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 16)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    library.change_lines(lines=3, clef="percussion"),
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
    evans.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(
            evans.talea(
                [1, -1000],
                8,
            ),
        ),
        direction=abjad.UP,
        voice_name="alpha voice",
    ),
    voice=score["piano voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 16)),
    library.duration_line(color="darkmagenta"),
    voice=score["piano voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 16)),
    evans.PitchHandler([-3]),
    library.duration_line(color="darkred"),
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
    voice=score["alpha voice"],
)

# viola music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(rmakers.note),
    evans.PitchHandler([["g", "aqs", "a,"]]),
    library.duration_line(),
    trinton.noteheads_only(),
    library.change_lines(lines=5, clef="altovarC"),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override NoteHead.no-ledgers = ##t", site="before"
            )
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    library.boxed_markup(
        string="( Viola + Styrofoam )",
        selector=trinton.select_leaves_by_index([0]),
        site="opening",
    ),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("mf +"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "darkred" { "scratch" }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=8,
        right_padding=0,
        full_string=True,
        tweaks=[r"""- \tweak color #darkred"""],
        command="One",
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "indianred" { "molto pont." }""",
            r"""\markup \with-color "indianred" { "tast. moltissimo" }""",
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=10,
        right_padding=-5,
        full_string=True,
        tweaks=[r"- \tweak color #(css-color 'indianred)"],
        command="Two",
    ),
    voice=score["viola voice"],
)

# violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 8)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
            ],
            32,
            extra_counts=[3, 2, 1, 0, -1, -1, -2],
        )
    ),
    evans.PitchHandler(pitch_list=pitch.delta_pitches),
    library.double_octave_up(selector=trinton.ranged_selector(ranges=[range(0, 11)])),
    library.octave_up(selector=trinton.ranged_selector(ranges=[range(11, 23)])),
    library.octave_up(
        selector=trinton.select_leaves_by_index([24]),
    ),
    library.octave_down(
        selector=trinton.select_leaves_by_index([5, 9, -2, -1]),
    ),
    library.duration_line(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartSlur(),
            abjad.LilyPondLiteral(r"\slurDashed", site="before"),
            abjad.StopSlur(),
            abjad.LilyPondLiteral(r"\slurSolid", site="after"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1, -1]),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("o<|"), trinton.make_custom_dynamic("mf +")],
        selector=trinton.select_leaves_by_index([0, -1], grace=False, pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "darkred" { "flaut. moltissimo" }""",
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                -1,
            ],
            first=True,
            pitched=True,
        ),
        padding=10,
        full_string=True,
        right_padding=0,
        tweaks=[r"""- \tweak color #darkred"""],
    ),
    voice=score["violin voice"],
)

# flute music

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 8)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
            ],
            32,
            extra_counts=[1, 0, -1, -1, -2],
        )
    ),
    trinton.force_rest(
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                2,
            ]
        )
    ),
    evans.PitchHandler(pitch_list=pitch.delta_pitches),
    library.double_octave_up(selector=trinton.ranged_selector(ranges=[range(3, 6)])),
    library.octave_up(selector=trinton.ranged_selector(ranges=[range(6, 12)])),
    library.octave_down(
        selector=trinton.select_leaves_by_index([5, 11], pitched=True),
    ),
    library.duration_line(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartSlur(),
            abjad.LilyPondLiteral(r"\slurDashed", site="before"),
            abjad.StopSlur(),
            abjad.LilyPondLiteral(r"\slurSolid", site="after"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1, -1], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("sffz pp"),
            abjad.StartHairpin("<|"),
            trinton.make_custom_dynamic("mf +"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], grace=False, pitched=True),
    ),
    voice=score["flute voice"],
)

# bass flute music

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 8)),
    evans.RhythmHandler(evans.talea([-1, 1000], 32, extra_counts=[-1, 0])),
    evans.PitchHandler([3]),
    library.duration_line(),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("sfz p"),
            abjad.StartHairpin("<"),
            trinton.make_custom_dynamic("mf +"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["bassflute voice"],
    preprocessor=trinton.fuse_preprocessor((1, 2)),
)

# bass clarinet music

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 13)),
    evans.RhythmHandler(evans.talea([-1, 1000], 16)),
    evans.PitchHandler([-3]),
    library.duration_line(),
    trinton.change_notehead_command(
        notehead="lowest", selector=trinton.select_leaves_by_index([0], pitched=True)
    ),
    library.cello_trills(
        initial_width=7,
        y_scale=0.6,
        speed_factor=0.7,
        selector=trinton.select_leaves_by_index([0, 1], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 1, 1, -1], pitched=True),
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \with-color "darkred" { "norm." }""",
            r"""\markup \with-color "darkred" { "overblow" }""",
        ],
        selector=trinton.select_leaves_by_index([0, 1, 1, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=5.5,
        right_padding=0,
        full_string=True,
        tweaks=[r"- \tweak color #darkred"],
        end_hook=True,
    ),
    voice=score["bassclarinet voice"],
    preprocessor=trinton.fuse_preprocessor((4, 2)),
)

# percussion 1 music

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 16)),
    evans.RhythmHandler(evans.talea([-2, 1000], 32, extra_counts=[-1, 0, 0])),
    library.duration_line(),
    library.change_lines(lines=1, clef="percussion"),
    library.boxed_markup(
        string="Timpani, one hand on Cymbal, the other on Rim, w/ wood of mallets"
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "darkmagenta" { \fontsize #3.5 \override #'(font-name . "ekmelos") \char ##xe222 \override #'(font-name . "Bodoni72 Italic") " ( trem. rall. )" }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        style="dashed-line-with-up-hook",
        direction="down",
        padding=6,
        right_padding=1,
        full_string=True,
        tweaks=[r"- \tweak color #darkmagenta"],
    ),
    trinton.linear_attachment_command(
        attachments=[
            evans.make_fancy_gliss(
                1,
                3,
                5,
                6,
                7,
                6,
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
            ),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 1, -1], pitched=True),
    ),
    voice=score["percussion 1 voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((3, 1, 100)),
)

# globals

library.set_all_time_signatures(score=score, exclude_viola=False)

# library.remove_redundant_time_signatures(score=score)

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

library.forbid_break(score=score, measures=[13, 14, 15])

library.silence(score=score, measures=[1], timestamps=[r"""3\'52\" - 4\'4\""""])

library.write_timestamps(
    global_context=score["Global Context"],
    second_range=(245, 1000),
    measure_range=(2, 16),
)

library.silence(score=score, measures=[17], timestamps=[r"""4\'20\" - 4\'35\""""])

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            library.movements[1],
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

# cutaway

trinton.whiteout_empty_staves(
    score=score,
    cutaway="blank",
    voice_names=[
        _
        for _ in library.all_voice_names
        # if _ != "viola voice"
        # and _ != "viola voice time signatures"
        if _ != "piano voice"
        # and _ != "percussion 1 voice"
    ],
    last_segment=True,
)

library.blank_measure_by_hand(
    score=score,
    voice_names=["piano voice"],
    measures=[17],
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
