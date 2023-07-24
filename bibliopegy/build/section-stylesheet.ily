\version "2.23.14"
\language english
#(set-default-paper-size "11x17landscape")
#(set-global-staff-size 12)
#(ly:set-option 'relative-includes #t)

\include "../library.ily"
\include "/Users/trintonprater/evans/lilypond/evans.ily"
\include "/Users/trintonprater/trinton/lilypond/trinton-markups.ily"
\include "/Users/trintonprater/abjad-ext-microtones/abjadext/microtones/lilypond/ekmelos-ji-accidental-markups.ily"

afterGraceFraction = #(cons 255 256)

\layout {
    \accidentalStyle neo-modern
    ragged-bottom = ##t
    ragged-last = ##t
    ragged-right = ##t
    \context {
        \name TimeSignatureContext
        \numericTimeSignature
        \type Engraver_group
        \consists Axis_group_engraver
        \consists Time_signature_engraver
		\consists Mark_engraver
		\consists Metronome_mark_engraver
        \consists Multi_measure_rest_engraver
		\consists Text_engraver
		\consists Text_spanner_engraver
        \consists Measure_spanner_engraver
        \override BarNumber.stencil = ##f
        \override MetronomeMark.stencil = ##f
		\override TimeSignature.X-extent = #'(0 . -25)
        \override TimeSignature.Y-extent = #'(25 . 0)
        \override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 14) (minimum-distance . 14) (padding . 10) (stretchability . 0))
        \override TimeSignature.break-visibility = #end-of-line-invisible
        \override TimeSignature.transparent = ##t
        % \override TimeSignature.font-size = 10
		% \override TimeSignature.font-name = "Bodoni72 Book"
        % \override TimeSignature.X-offset = -2.5
        % \override TimeSignature.Y-offset = 3
        % \override TimeSignature.whiteout-style = #'outline
        % \override TimeSignature.whiteout = 1
        % \override TimeSignature.layer = 4
    }

    \context {
        \Score
        \numericTimeSignature
        \accepts TimeSignatureContext
        \remove Bar_number_engraver
        proportionalNotationDuration = #(ly:make-moment 1 60)
        pedalSustainStyle = #'bracket

        \override StaffGrouper.staff-staff-spacing = #'((basic-distance . 0) (minimum distance . 5) (padding . 8) (stretchability . 28))
        \override StaffGrouper.staffgroup-staff-spacing = #'((basic-distance . 0) (minimum distance . 5) (padding . 8) (stretchability . 28))

        \override AccidentalSuggestion.avoid-slur = #'ignore
        % \override Accidental.X-extent = ##f

        \override BarLine.hair-thickness = 1
        \override BarLine.thick-thickness = #10
        \override BarLine.glyph-name = "!"
        \override BarLine.transparent = ##t
        \override BarLine.X-extent = #'(0 . 0)

        autoBeaming = ##f
        \override Beam.breakable = ##t
        % \override Beam.damping = 99
        % \override Beam.concaveness = #10000
        % \override Beam.beam-thickness = #0.75
        \override Beam.length-fraction = 1.5

        \override BendAfter.thickness = #3

        \override Clef.layer = 2
        \override Clef.whiteout-style = #'outline
        \override Clef.whiteout = 1

        \override DynamicText.font-size = #-2
        \override DynamicText.layer = 2
        \override DynamicText.whiteout-style = #'outline
        \override DynamicText.whiteout = 1
        \override DynamicLineSpanner.staff-padding = 4

        \override Glissando.thickness = #3
        \override Glissando.breakable = ##t

        \override Hairpin.to-barline = ##f

        \override MeasureSpanner.direction = #UP
        \override MeasureSpanner.thickness = #1.5
        \override MeasureSpanner.font-size = 7
        \override MeasureSpanner.font-name = "Bodoni72 Book Italic"
        \override MeasureSpanner.padding = -5

        \override Staff.thickness = #0.5

        \override Stem.stemlet-length = 1
        \override Stem.thickness = #0.5
        \override Stem.details.beamed-lengths = #'(6)
        \override Stem.details.lengths = #'(6)

        \override StemTremolo.stencil = #ly:text-interface::print
        \override StemTremolo.text = \markup {
            \fontsize #3.5
            \override #'(font-name . "ekmelos")
            \char ##xe222
        }

        \override TextScript.font-name = "Bodoni72 Book Italic"
        \override TextScript.whiteout = 1

        \override TextSpanner.font-name = "Bodoni72 Book Italic"
        % \override TextSpanner.whiteout-style = #'outline
        \override TextSpanner.whiteout = 1

        \override TrillSpanner.bound-details.right.padding = #-5

        \shape #'((0 . 0) (0.5 . 0) (1 . 0) (2 . 0)) LaissezVibrerTie
        \override LaissezVibrerTie.X-extent = ##f

        \shape #'((-2 . 0) (-1 . 0) (-0.5 . 0) (0 . 0)) RepeatTie
        \override RepeatTie.X-extent = ##f

        tupletFullLength = ##t
        \override TupletBracket.full-length-to-extent = ##f
        \override TupletBracket.padding = 3
        \override TupletNumber.font-size = 1.5
        \override TupletBracket.bracket-visibility = ##t
        \override TupletBracket.layer = 2
        \override TupletBracket.whiteout-style = #'outline
        \override TupletBracket.whiteout = 1
        \override TupletNumber.font-size = 2
        \override TupletNumber.layer = 3
        \override TupletNumber.whiteout-style = #'outline
        \override TupletNumber.whiteout = 1
        \override TupletNumber.text = #tuplet-number::calc-fraction-text
        \override TupletNumber.font-name = "Bodoni72 Book"
        % \override TupletBracket.stencil =
        %     #(lambda (grob)
        %        (let* ((pos (ly:grob-property grob 'positions))
        %               (dir (ly:grob-property grob 'direction))
        %               (new-pos (if (= dir 1)
        %                            (max (car pos)(cdr pos))
        %                            (min (car pos)(cdr pos)))))
        %          (ly:grob-set-property! grob 'positions (cons new-pos new-pos))
        %          (ly:tuplet-bracket::print grob)))
        % \override TupletBracket.direction = #up
    }

    \context {
        \Staff
        fontSize = #-0.25
        \remove Time_signature_engraver
        \consists Duration_line_engraver

        \override TimeSignature.stencil = ##f

        \override DurationLine.style = #'line
        \override DurationLine.thickness = #3
        \override DurationLine.to-barline = ##f
        \override DurationLine.breakable = ##t

        \override InstrumentName.self-alignment-X = #CENTER
        \RemoveAllEmptyStaves
    }

    \context {
        \Staff
        \name UnmeteredStaff
        \type Engraver_group

        \override Accidental.X-extent = ##f

        \override Dots.stencil = ##f

        \override Flag.stencil = ##f

        \override GraceMusic.X-extent = ##f

        \override NoteHead.duration-log = 2

        \override Rest.transparent = ##t

        \override Stem.stencil = ##f

        \override Tie.stencil = ##f

        \override TupletBracket.stencil = ##f
        \override TupletNumber.stencil = ##f

        \alias Staff
    }

    \context {
        \StaffGroup
        \name SquareBracketGroup
        \accepts UnmeteredStaff
    }

    \context {
        \StaffGroup
        \accepts SquareBracketGroup
        \remove System_start_delimiter_engraver
    }

    \context {
        \Voice
        \remove Forbid_line_break_engraver
        \override Accidental.font-size = 1
    }
}
%
\paper {
    % max-systems-per-page = 3
    system-separator-markup = \markup \fontsize #12 { \tremolo-moderato }
    system-system-spacing = #'((basic-distance . 22) (minimum-distance . 22) (padding . 16))
    indent = 20\mm
    short-indent = 15\mm
    bottom-margin = 10\mm
    left-margin = 10\mm
    right-margin = 10\mm
    top-margin = 17\mm

}