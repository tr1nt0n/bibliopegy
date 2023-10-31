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

score = library.bibliopegy_score([(1, 8) for _ in range(1, 19)])

# music commands

# tape music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 18)),
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

# viola music commands

library.write_simultaneous_time_signatures(
    score=score,
    voice_name="viola voice",
    signature_pairs=[
        (2, 8),
    ],
    measure_range=(17, 18),
    reset=False,
)

library.make_metric_music(
    evans.RhythmHandler(evans.talea([7, 1], 32)),
    evans.PitchHandler(
        [
            [
                "aqs",
                "c'",
            ],
            [
                "aqs",
                "a",
            ],
        ]
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("altovarC"),
            library._viola_processing_markups["2 on"],
            abjad.Glissando(zero_padding=True),
            trinton.make_custom_dynamic("sffz"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
            library._viola_processing_markups["2 off"],
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 0, 0, 0, -1, -1], first=True, pitched=True
        ),
    ),
    abjad.slur,
    abjad.beam,
    trinton.force_accidentals_command(
        selector=trinton.select_leaves_by_index([-1], pitched=True, grace=False),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "mediumblue" { +45° }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=8,
        right_padding=3.5,
        full_string=True,
        tweaks=[r"""- \tweak color #(css-color 'mediumblue)"""],
    ),
    score=score,
    voice_name="viola voice",
    second_range=(17, 18),
    measure_number_range=(1,),
)

# tenor trombone music

library.trombone_alpha(
    voices=[score["tenortrombone voice"], score["basstrombone voice"]],
    measures=(1, 9),
    rotation=2,
    pitching=False,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 9)),
    library.duration_line(),
    library.pitch_trombone_cascading_glissandi(starting_point=-5, direction="up"),
    voice=score["tenortrombone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 12)),
    evans.RhythmHandler(evans.talea([2, 1], 8)),
    evans.PitchHandler(["a'"]),
    trinton.linear_attachment_command(
        attachments=[abjad.Glissando(zero_padding=True), abjad.BendAfter(-7)],
        selector=trinton.select_logical_ties_by_index([0, 1], first=True),
    ),
    voice=score["tenortrombone voice"],
    preprocessor=trinton.fuse_preprocessor((3,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 13)),
    library.trombone_glissando_staff(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, -3, -3, -2, -1], grace=False, first=True
        ),
    ),
    voice=score["tenortrombone voice"],
)

library.trombone_alpha(
    voices=[score["basstrombone voice"], score["tenortrombone voice"]],
    measures=(17, 18),
    rotation=3,
    pitching=False,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (17, 18)),
    library.duration_line(),
    library.pitch_trombone_cascading_glissandi(starting_point=2, direction="down"),
    library.trombone_glissando_staff(),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("sfz"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["tenortrombone voice"],
)

# bass trombone music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 9)),
    library.duration_line(),
    library.pitch_trombone_cascading_glissandi(starting_point=-8, direction="up"),
    voice=score["basstrombone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 12)),
    evans.RhythmHandler(evans.talea([2, 1], 8)),
    evans.PitchHandler(["a'"]),
    trinton.linear_attachment_command(
        attachments=[abjad.Glissando(zero_padding=True), abjad.BendAfter(-7)],
        selector=trinton.select_logical_ties_by_index([0, 1], first=True),
    ),
    voice=score["basstrombone voice"],
    preprocessor=trinton.fuse_preprocessor((3,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 13)),
    library.trombone_glissando_staff(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [1, 1, -3, -3, -2, -1], grace=False, first=True
        ),
    ),
    voice=score["basstrombone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (17, 18)),
    library.duration_line(),
    library.pitch_trombone_cascading_glissandi(starting_point=5, direction="down"),
    library.trombone_glissando_staff(),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("sffz"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
            trinton.make_custom_dynamic("s mfz"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 1, -2, -2, -1], pitched=True),
    ),
    voice=score["basstrombone voice"],
)

# percussion 2 music

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 15)),
    evans.RhythmHandler(
        evans.talea(
            [1],
            32,
            extra_counts=[
                3,
                3,
                1,
                0,
                -1,
                -2,
            ],
        )
    ),
    voice=score["percussion 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (16, 18)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    voice=score["percussion 2 voice"],
    preprocessor=trinton.fuse_preprocessor((1, 2)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 18)),
    evans.PitchHandler(trinton.rotated_sequence(pitch.glockenspiel_pitches, 6)),
    library.octave_up(
        selector=trinton.ranged_selector(ranges=[range(1, 14)]),
    ),
    library.octave_up(selector=trinton.select_leaves_by_index([16])),
    library.octave_down(
        selector=trinton.select_logical_ties_by_index(
            [8, -1],
            pitched=True,
        )
    ),
    library.duration_line(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True)
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.ficta_command(
        selector=trinton.select_logical_ties_by_index(
            [0, -2], first=True, pitched=True, grace=False
        )
    ),
    abjad.slur,
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color "darkmagenta" { \fontsize #3.5 \override #'(font-name . "ekmelos") \char ##xe222 }""",
        selector=trinton.select_leaves_by_index([-2, -1], pitched=True),
        padding=4.5,
        right_padding=0,
        full_string=True,
        tweaks=[r"- \tweak color #darkmagenta"],
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("f"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -3, -2, -1]),
    ),
    library.boxed_markup(string="Glockenspiel"),
    voice=score["percussion 2 voice"],
)

# globals

library.set_all_time_signatures(score=score, exclude_viola=False)

# library.remove_redundant_time_signatures(score=score)

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

library.write_timestamps(
    global_context=score["Global Context"],
    second_range=(297, 1000),
    measure_range=(1, 18),
)

# library.forbid_break(score=score, measures=[9, 10, 11])

# cutaway

trinton.whiteout_empty_staves(
    score=score,
    cutaway="blank",
    voice_names=[
        _
        for _ in library.all_voice_names
        if _ != "tenortrombone voice" and _ != "viola voice"
    ],
    last_segment=True,
)

library.blank_measure_by_hand(
    score=score,
    voice_names=["tenortrombone voice"],
    measures=[
        13,
        14,
        15,
        16,
    ],
)

library.blank_measure_by_hand(
    score=score,
    voice_names=["viola voice"],
    measures=[
        1,
        2,
        3,
        4,
        5,
        6,
        7,
        8,
        9,
        10,
        11,
        12,
        13,
        14,
        15,
        16,
    ],
)

# parts

trinton.extract_parts(score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/sections/15",
    build_path="/Users/trintonprater/scores/bibliopegy/bibliopegy/build",
    segment_name="15",
    includes=[
        "/Users/trintonprater/scores/bibliopegy/bibliopegy/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
