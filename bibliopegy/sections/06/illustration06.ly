  %! abjad.LilyPondFile._get_format_pieces()
\version "2.23.81"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
  %! abjad.LilyPondFile._get_format_pieces()
\version "2.23.81"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
\include "/Users/trintonprater/scores/bibliopegy/bibliopegy/build/section-stylesheet.ily"
\include "/Users/trintonprater/abjad/abjad/scm/abjad.ily"
  %! abjad.LilyPondFile._get_format_pieces()
\score
  %! abjad.LilyPondFile._get_format_pieces()
{
    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "1\'57\""  }
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "1\'58\""  }
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "1\'59\""  }
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "2\'0\""  }
            \noBreak
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "2\'1\""  }
            \noBreak
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "2\'2\""  }
            \noBreak
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "2\'3\""  }
            \noBreak
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "2\'4\""  }
            \noBreak
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "2\'5\""  }
            \noBreak
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "2\'6\""  }
            \noBreak
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "2\'7\""  }
            \noBreak
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "2\'8\""  }
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "2\'9\""  }
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "2\'10\""  }
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "2\'11\""  }
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "2\'12\""  }
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "2\'13\""  }
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "2\'14\""  }
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "2\'15\""  }
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "2\'16\""  }
            \set Score.proportionalNotationDuration = #(ly:make-moment 1 140)
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 { " 2\'17\" - 2\'24\" "  }
            \set Score.proportionalNotationDuration = #(ly:make-moment 1 60)
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "2\'25\""  }
            \set Score.proportionalNotationDuration = #(ly:make-moment 1 140)
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 { " 2\'26\" - 2\'33\" "  }
            \set Score.proportionalNotationDuration = #(ly:make-moment 1 60)
        }
        \tag #'group1
        {
            \context StaffGroup = "Staff Group"
            <<
                \tag #'voice1
                {
                    \context UnmeteredStaff = "piano staff"
                    {
                        \context Voice = "piano voice"
                        {
                            \staff-line-count 2
                            \override NoteHead.stencil = #ly:text-interface::print
                            \override NoteHead.text = \markup \with-color "darkred" { α }
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { tape }
                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic"){ tp. }
                            \clef "percussion"
                            \time 1/8
                            b8
                              %! abjad.glissando(7)
                            - \tweak color #darkred
                              %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                              %! abjad.glissando(7)
                            \glissando
                            ~
                              %! abjad.glissando(1)
                            \hide NoteHead
                              %! abjad.glissando(1)
                            \override Accidental.stencil = ##f
                              %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t
                              %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t
                            b8
                            ~
                            b8
                            ~
                            b8
                            ~
                            b8
                            ~
                            b8
                            ~
                            b8
                            ~
                            b8
                            ~
                            b8
                            ~
                            b8
                            ~
                            b8
                            ~
                            b8
                            ~
                            b8
                            ~
                            b8
                            ~
                            b8
                            ~
                            \afterGrace
                            b8
                            {
                                \once \override Accidental.stencil = ##f
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override NoteHead.transparent = ##t
                                  %! abjad.glissando(6)
                                \revert Accidental.stencil
                                  %! abjad.glissando(6)
                                \revert NoteColumn.glissando-skip
                                  %! abjad.glissando(6)
                                \revert NoteHead.no-ledgers
                                  %! abjad.glissando(6)
                                \undo \hide NoteHead
                                b16
                            }
                            <<
                                \context Voice = "piano voice temp"
                                {
                                    \staff-line-count 3
                                    \override NoteHead.stencil = #ly:text-interface::print
                                    \override NoteHead.text = \markup \with-color "darkred" { α }
                                    \clef "percussion"
                                    \voiceTwo
                                    \afterGrace
                                    a2
                                      %! abjad.glissando(7)
                                    - \tweak color #darkred
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        a16
                                    }
                                }
                                \context Voice = "beta voice"
                                {
                                    \override NoteHead.stencil = #ly:text-interface::print
                                    \override NoteHead.text = \markup \with-color "indianred" { β }
                                    \voiceOne
                                    \afterGrace
                                    c'2
                                      %! abjad.glissando(7)
                                    - \tweak color #(css-color 'indianred)
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        c'16
                                    }
                                }
                            >>
                            \oneVoice
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/8
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/8
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/8
                              %! +SCORE
                            \stopStaff \startStaff
                        }
                    }
                }
                \tag #'voice2
                {
                    \context Staff = "viola staff"
                    {
                        \context Voice = "viola voice"
                        {
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { viola }
                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vla. }
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            \time 1/8
                            R1 * 1/8
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/8
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/8
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/8
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/8
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/8
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/8
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/8
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/8
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/8
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/8
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/8
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/8
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/8
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/8
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/8
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/8
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/8
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/8
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/8
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/8
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/8
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/8
                              %! +SCORE
                            \stopStaff \startStaff
                        }
                    }
                }
                \tag #'group2
                {
                    \context SquareBracketGroup = "sub group 1"
                    <<
                        \tag #'voice3
                        {
                            \context UnmeteredStaff = "flute staff"
                            {
                                \context Voice = "flute voice"
                                {
                                    \staff-line-count 5
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { flute }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { fl. }
                                    \clef "treble"
                                    \time 1/8
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup \concat { \one-thirty-one-limit-schisma-down \hspace #0.125 \abjad-flat  }
                                    ef''!8
                                    \fff
                                    ^ \markup \center-align { \concat { D+45 } }
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak circled-tip ##t
                                    \>
                                    ~
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \afterGrace
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup \concat { \one-thirty-one-limit-schisma-down \hspace #0.125 \abjad-flat  }
                                    ef''16
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        ef''16
                                        \!
                                    }
                                    r16
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        \staff-line-count 1
                                        \clef "varpercussion"
                                        \afterGrace
                                        c'32
                                        \fff
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        - \tweak color #(css-color 'indianred)
                                        - \tweak padding #5.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \with-color "indianred" \center-column { \line { covering the entire } \line { mouthpiece with the lips } } \hspace #0.5 }
                                        \startTextSpan
                                        - \tweak stencil #constante-hairpin
                                        \<
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            c'16
                                        }
                                        r16
                                        \afterGrace
                                        c'32
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            c'16
                                        }
                                        r32
                                        \afterGrace
                                        c'16
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            c'16
                                            \!
                                        }
                                    }
                                    \once \override TextScript.whiteout = ##f
                                    c'32
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sppp"))
                                    - \accent
                                    - \staccato
                                    - \markup \with-color #darkred { "θp" } 
                                    \<
                                    \once \override TextScript.whiteout = ##f
                                    c'32
                                    - \staccato
                                    - \markup \with-color #darkred { "p" } 
                                    \once \override TextScript.whiteout = ##f
                                    c'32
                                    - \accent
                                    - \staccato
                                    - \markup \with-color #darkred { "p" } 
                                    \once \override TextScript.whiteout = ##f
                                    c'32
                                    - \markup \with-color #darkred { "θ" } 
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    ~
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/7
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        \afterGrace
                                        c'32
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override TextScript.whiteout = ##f
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            c'16
                                            - \markup \with-color #darkred { \hspace #-0.75 "p" } 
                                        }
                                        \once \override TextScript.whiteout = ##f
                                        \afterGrace
                                        c'16.
                                        - \markup \with-color #darkred { "θ" } 
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override TextScript.whiteout = ##f
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            c'16
                                            - \markup \with-color #darkred { \hspace #-0.75 "p" } 
                                        }
                                        \once \override TextScript.whiteout = ##f
                                        c'32
                                        - \accent
                                        - \staccato
                                        - \markup \with-color #darkred { "θp" } 
                                        \once \override TextScript.whiteout = ##f
                                        c'16.
                                        - \staccato
                                        - \markup \with-color #darkred { "p" } 
                                        \once \override TextScript.whiteout = ##f
                                        \afterGrace
                                        c'8
                                        - \markup \with-color #darkred { "θ" } 
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override TextScript.whiteout = ##f
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            c'16
                                            - \markup \with-color #darkred { \hspace #-0.75 "p" } 
                                        }
                                        \once \override TextScript.whiteout = ##f
                                        c'32
                                        - \staccato
                                        - \markup \with-color #darkred { "θp" } 
                                        \once \override TextScript.whiteout = ##f
                                        c'32
                                        - \accent
                                        - \staccato
                                        - \markup \with-color #darkred { "p" } 
                                        ~
                                    }
                                    \once \override Accidental.stencil = ##f
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.transparent = ##t
                                    c'32
                                    \once \override TextScript.whiteout = ##f
                                    c'32
                                    - \staccato
                                    - \markup \with-color #darkred { "p" } 
                                    \once \override TextScript.whiteout = ##f
                                    \afterGrace
                                    c'32
                                    - \accent
                                    - \markup \with-color #darkred { "θ" } 
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override TextScript.whiteout = ##f
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        c'16
                                        - \markup \with-color #darkred { \hspace #-0.75 "p" } 
                                    }
                                    \once \override TextScript.whiteout = ##f
                                    \afterGrace
                                    c'32
                                    - \markup \with-color #darkred { "θ" } 
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override TextScript.whiteout = ##f
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        c'16
                                        - \markup \with-color #darkred { \hspace #-0.75 "p" } 
                                    }
                                    \once \override TextScript.whiteout = ##f
                                    c'16
                                    - \staccato
                                    - \markup \with-color #darkred { "θp" } 
                                    \times 4/5
                                    {
                                        \once \override TextScript.whiteout = ##f
                                        c'16.
                                        - \accent
                                        - \staccato
                                        - \markup \with-color #darkred { "p" } 
                                        \once \override TextScript.whiteout = ##f
                                        \afterGrace
                                        c'32
                                        - \markup \with-color #darkred { "θ" } 
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override TextScript.whiteout = ##f
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            c'16
                                            - \markup \with-color #darkred { \hspace #-0.75 "p" } 
                                        }
                                        \once \override TextScript.whiteout = ##f
                                        c'32
                                        - \staccato
                                        - \markup \with-color #darkred { "θp" } 
                                        ~
                                    }
                                    \times 4/5
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        c'16
                                        \once \override TextScript.whiteout = ##f
                                        c'8
                                        - \staccato
                                        - \markup \with-color #darkred { "p" } 
                                        \once \override TextScript.whiteout = ##f
                                        c'32
                                        - \accent
                                        - \staccato
                                        - \markup \with-color #darkred { "p" } 
                                        \once \override TextScript.whiteout = ##f
                                        \afterGrace
                                        c'16
                                        - \markup \with-color #darkred { "θ" } 
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override TextScript.whiteout = ##f
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            c'16
                                            - \markup \with-color #darkred { \hspace #-0.75 "p" } 
                                        }
                                        \once \override TextScript.whiteout = ##f
                                        \afterGrace
                                        c'32
                                        - \accent
                                        - \markup \with-color #darkred { "θ" } 
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override TextScript.whiteout = ##f
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            c'16
                                            \f
                                            - \markup \with-color #darkred { \hspace #-0.75 "p" } 
                                            \stopTextSpan
                                        }
                                    }
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice4
                        {
                            \context UnmeteredStaff = "bassflute staff"
                            {
                                \context Voice = "bassflute voice"
                                {
                                    \staff-line-count 5
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { bass flute }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { b. fl. }
                                    \clef "treble"
                                    \time 1/8
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup \concat { \one-twenty-nine-limit-comma-up \hspace #0.125 \abjad-flat  }
                                    df'''8
                                    \fff
                                    ^ \markup \center-align { \concat { +30 } }
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak circled-tip ##t
                                    \>
                                    ~
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \afterGrace
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup \concat { \one-twenty-nine-limit-comma-up \hspace #0.125 \abjad-flat  }
                                    df'''8
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        df'''16
                                        \!
                                    }
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    \times 8/11
                                    {
                                        r32
                                        \staff-line-count 1
                                        \clef "varpercussion"
                                        \afterGrace
                                        c'16
                                        \fff
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        - \tweak color #(css-color 'indianred)
                                        - \tweak padding #5.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \with-color "indianred" \center-column { \line { covering the entire } \line { mouthpiece with the lips } } \hspace #0.5 }
                                        \startTextSpan
                                        - \tweak stencil #constante-hairpin
                                        \<
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            c'16
                                        }
                                        r32
                                        \afterGrace
                                        c'32
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            c'16
                                        }
                                        r16
                                        \afterGrace
                                        c'32
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            c'16
                                        }
                                        r32
                                        \afterGrace
                                        c'16
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            c'16
                                            \!
                                        }
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 10/11
                                    {
                                        \once \override TextScript.whiteout = ##f
                                        \afterGrace
                                        c'16
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "sppp"))
                                        - \markup \with-color #darkred { "θ" } 
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        \<
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override TextScript.whiteout = ##f
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            c'16
                                            - \markup \with-color #darkred { \hspace #-0.75 "p" } 
                                        }
                                        \once \override TextScript.whiteout = ##f
                                        \afterGrace
                                        c'16.
                                        - \accent
                                        - \markup \with-color #darkred { "θ" } 
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override TextScript.whiteout = ##f
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            c'16
                                            - \markup \with-color #darkred { \hspace #-0.75 "p" } 
                                        }
                                        \once \override TextScript.whiteout = ##f
                                        c'32
                                        - \staccato
                                        - \markup \with-color #darkred { "p" } 
                                        \once \override TextScript.whiteout = ##f
                                        c'16.
                                        - \accent
                                        - \staccato
                                        - \markup \with-color #darkred { "θp" } 
                                        \once \override TextScript.whiteout = ##f
                                        c'16
                                        - \staccato
                                        - \markup \with-color #darkred { "p" } 
                                        ~
                                    }
                                    \once \override Accidental.stencil = ##f
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.transparent = ##t
                                    c'32.
                                    \once \override TextScript.whiteout = ##f
                                    \afterGrace
                                    c'64.
                                    - \markup \with-color #darkred { "θ" } 
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override TextScript.whiteout = ##f
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        c'16
                                        - \markup \with-color #darkred { \hspace #-0.75 "p" } 
                                    }
                                    \once \override TextScript.whiteout = ##f
                                    c'32.
                                    - \accent
                                    - \staccato
                                    - \markup \with-color #darkred { "θp" } 
                                    \once \override TextScript.whiteout = ##f
                                    c'64.
                                    - \staccato
                                    - \markup \with-color #darkred { "θp" } 
                                    \once \override TextScript.whiteout = ##f
                                    \afterGrace
                                    c'64.
                                    - \markup \with-color #darkred { "θ" } 
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override TextScript.whiteout = ##f
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        c'16
                                        - \markup \with-color #darkred { \hspace #-0.75 "p" } 
                                    }
                                    \once \override TextScript.whiteout = ##f
                                    \afterGrace
                                    c'64.
                                    - \markup \with-color #darkred { "θ" } 
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override TextScript.whiteout = ##f
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        c'16
                                        - \markup \with-color #darkred { \hspace #-0.75 "p" } 
                                    }
                                    \once \override TextScript.whiteout = ##f
                                    c'16
                                    - \accent
                                    - \staccato
                                    - \markup \with-color #darkred { "p" } 
                                    \once \override TextScript.whiteout = ##f
                                    c'16
                                    - \staccato
                                    - \markup \with-color #darkred { "θp" } 
                                    ~
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/7
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        c'32
                                        \once \override TextScript.whiteout = ##f
                                        c'32
                                        - \accent
                                        - \staccato
                                        - \markup \with-color #darkred { "p" } 
                                        \once \override TextScript.whiteout = ##f
                                        \afterGrace
                                        c'16.
                                        - \markup \with-color #darkred { "θ" } 
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override TextScript.whiteout = ##f
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            c'16
                                            - \markup \with-color #darkred { \hspace #-0.75 "p" } 
                                        }
                                        \once \override TextScript.whiteout = ##f
                                        c'8
                                        - \staccato
                                        - \markup \with-color #darkred { "θp" } 
                                        \once \override TextScript.whiteout = ##f
                                        c'32
                                        - \accent
                                        - \staccato
                                        - \markup \with-color #darkred { "θp" } 
                                        \once \override TextScript.whiteout = ##f
                                        \afterGrace
                                        c'16
                                        - \markup \with-color #darkred { "θ" } 
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override TextScript.whiteout = ##f
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            c'16
                                            - \markup \with-color #darkred { \hspace #-0.75 "p" } 
                                        }
                                        \once \override TextScript.whiteout = ##f
                                        \afterGrace
                                        c'32
                                        - \markup \with-color #darkred { "θ" } 
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override TextScript.whiteout = ##f
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            c'16
                                            - \markup \with-color #darkred { \hspace #-0.75 "p" } 
                                        }
                                        \once \override TextScript.whiteout = ##f
                                        c'32
                                        - \staccato
                                        - \markup \with-color #darkred { "p" } 
                                    }
                                    \once \override TextScript.whiteout = ##f
                                    c'32
                                    - \accent
                                    - \staccato
                                    - \markup \with-color #darkred { "θp" } 
                                    \once \override TextScript.whiteout = ##f
                                    c'32
                                    - \staccato
                                    \f
                                    - \markup \with-color #darkred { "p" } 
                                    \stopTextSpan
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice5
                        {
                            \context UnmeteredStaff = "violin staff"
                            {
                                \context Voice = "violin voice"
                                {
                                    \times 8/11
                                    {
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { violin }
                                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vln. }
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                        \time 1/8
                                        c'''4...
                                        \fff
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak circled-tip ##t
                                        \>
                                        - \tweak color #(css-color 'indianred)
                                        - \tweak padding #8
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \with-color "indianred" { "tast. poss." } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -1
                                        \startTextSpanOne
                                        - \tweak color #darkred
                                        - \tweak padding #6
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \with-color "darkred" { norm. } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \with-color "darkred" { scratch }
                                        - \tweak bound-details.right.padding 23
                                        \startTextSpanTwo
                                        eqs''32.
                                        \!
                                        \stopTextSpanOne
                                        \stopTextSpanTwo
                                    }
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    \times 2/3
                                    {
                                        \fancy-gliss
                                           #'(
                                              (0 0 0.5 3 1 0)
                                              (1 0 1.5 -3 2 0)
                                              (2 0 2.5 0.5 3 0)
                                              (3 0 3.5 -0.5 4 0)
                                              (4 0 4.5 3 5 0)
                                              (5 0 5.5 -3 6 0)
                                              (6 0 6.5 2 7 0)
                                              (7 0 7.5 -2 8 0)
                                         )
                                         #-6
                                        \ottava 2
                                        \afterGrace
                                        af''''!16
                                        - \espressivo
                                        \ppp
                                        (
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        - \tweak color #(css-color 'indianred)
                                        - \tweak padding #13
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \with-color "indianred" { "tast. poss." } \hspace #0.5 }
                                        \startTextSpanOne
                                        - \tweak color #darkred
                                        - \tweak padding #11
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \with-color "darkred" { louré } \hspace #0.5 }
                                        \startTextSpanTwo
                                        - \tweak color #darkred
                                        - \tweak padding #9
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \with-color "darkred" { norm. } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \with-color "darkred" { scratch }
                                        - \tweak bound-details.right.padding 1
                                        \startTextSpanThree
                                        \<
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            af''''16
                                        }
                                        \fancy-gliss
                                           #'(
                                              (0 0 0.5 3 1 0)
                                              (1 0 1.5 -3 2 0)
                                              (2 0 2.5 0.5 3 0)
                                              (3 0 3.5 -0.5 4 0)
                                              (4 0 4.5 3 5 0)
                                              (5 0 5.5 -3 6 0)
                                              (6 0 6.5 2 7 0)
                                              (7 0 7.5 -2 8 0)
                                         )
                                         #-6
                                        \afterGrace
                                        af''''!16
                                        - \espressivo
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            af''''16
                                        }
                                        \fancy-gliss
                                           #'(
                                              (0 0 0.5 3 1 0)
                                              (1 0 1.5 -3 2 0)
                                              (2 0 2.5 0.5 3 0)
                                              (3 0 3.5 -0.5 4 0)
                                              (4 0 4.5 3 5 0)
                                              (5 0 5.5 -3 6 0)
                                              (6 0 6.5 2 7 0)
                                              (7 0 7.5 -2 8 0)
                                         )
                                         #-6
                                        \afterGrace
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \three-eighths-sharp-markup
                                        g''''!16
                                        - \espressivo
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            g''''16
                                            )
                                        }
                                    }
                                    r32.
                                    \fancy-gliss
                                       #'(
                                          (0 0 0.5 3 1 0)
                                          (1 0 1.5 -3 2 0)
                                          (2 0 2.5 0.5 3 0)
                                          (3 0 3.5 -0.5 4 0)
                                          (4 0 4.5 3 5 0)
                                          (5 0 5.5 -3 6 0)
                                          (6 0 6.5 2 7 0)
                                          (7 0 7.5 -2 8 0)
                                     )
                                     #-6
                                    \afterGrace
                                    gqs''''!32.
                                    - \espressivo
                                    (
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        gqs''''16
                                    }
                                    \fancy-gliss
                                       #'(
                                          (0 0 0.5 3 1 0)
                                          (1 0 1.5 -3 2 0)
                                          (2 0 2.5 0.5 3 0)
                                          (3 0 3.5 -0.5 4 0)
                                          (4 0 4.5 3 5 0)
                                          (5 0 5.5 -3 6 0)
                                          (6 0 6.5 2 7 0)
                                          (7 0 7.5 -2 8 0)
                                     )
                                     #-6
                                    \afterGrace
                                    af''''!32.
                                    - \espressivo
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        af''''16
                                        )
                                    }
                                    r32.
                                    \times 2/3
                                    {
                                        \fancy-gliss
                                           #'(
                                              (0 0 0.5 3 1 0)
                                              (1 0 1.5 -3 2 0)
                                              (2 0 2.5 0.5 3 0)
                                              (3 0 3.5 -0.5 4 0)
                                              (4 0 4.5 3 5 0)
                                              (5 0 5.5 -3 6 0)
                                              (6 0 6.5 2 7 0)
                                              (7 0 7.5 -2 8 0)
                                         )
                                         #-6
                                        \afterGrace
                                        g''''!16
                                        - \espressivo
                                        (
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            g''''16
                                        }
                                        \fancy-gliss
                                           #'(
                                              (0 0 0.5 3 1 0)
                                              (1 0 1.5 -3 2 0)
                                              (2 0 2.5 0.5 3 0)
                                              (3 0 3.5 -0.5 4 0)
                                              (4 0 4.5 3 5 0)
                                              (5 0 5.5 -3 6 0)
                                              (6 0 6.5 2 7 0)
                                              (7 0 7.5 -2 8 0)
                                         )
                                         #-6
                                        \afterGrace
                                        gqs''''!16
                                        - \espressivo
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            gqs''''16
                                        }
                                        \fancy-gliss
                                           #'(
                                              (0 0 0.5 3 1 0)
                                              (1 0 1.5 -3 2 0)
                                              (2 0 2.5 0.5 3 0)
                                              (3 0 3.5 -0.5 4 0)
                                              (4 0 4.5 3 5 0)
                                              (5 0 5.5 -3 6 0)
                                              (6 0 6.5 2 7 0)
                                              (7 0 7.5 -2 8 0)
                                         )
                                         #-6
                                        \afterGrace
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \three-eighths-flat-markup
                                        af''''!16
                                        - \espressivo
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            af''''16
                                        }
                                    }
                                    \fancy-gliss
                                       #'(
                                          (0 0 0.5 3 1 0)
                                          (1 0 1.5 -3 2 0)
                                          (2 0 2.5 0.5 3 0)
                                          (3 0 3.5 -0.5 4 0)
                                          (4 0 4.5 3 5 0)
                                          (5 0 5.5 -3 6 0)
                                          (6 0 6.5 2 7 0)
                                          (7 0 7.5 -2 8 0)
                                     )
                                     #-6
                                    \afterGrace
                                    g''''!16
                                    - \espressivo
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        g''''16
                                        )
                                    }
                                    r16
                                    \fancy-gliss
                                       #'(
                                          (0 0 0.5 3 1 0)
                                          (1 0 1.5 -3 2 0)
                                          (2 0 2.5 0.5 3 0)
                                          (3 0 3.5 -0.5 4 0)
                                          (4 0 4.5 3 5 0)
                                          (5 0 5.5 -3 6 0)
                                          (6 0 6.5 2 7 0)
                                          (7 0 7.5 -2 8 0)
                                     )
                                     #-6
                                    \afterGrace
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \three-eighths-flat-markup
                                    af''''!16
                                    - \espressivo
                                    (
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        af''''16
                                    }
                                    \fancy-gliss
                                       #'(
                                          (0 0 0.5 3 1 0)
                                          (1 0 1.5 -3 2 0)
                                          (2 0 2.5 0.5 3 0)
                                          (3 0 3.5 -0.5 4 0)
                                          (4 0 4.5 3 5 0)
                                          (5 0 5.5 -3 6 0)
                                          (6 0 6.5 2 7 0)
                                          (7 0 7.5 -2 8 0)
                                     )
                                     #-6
                                    \afterGrace
                                    g''''!32
                                    - \espressivo
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        g''''16
                                    }
                                    \fancy-gliss
                                       #'(
                                          (0 0 0.5 3 1 0)
                                          (1 0 1.5 -3 2 0)
                                          (2 0 2.5 0.5 3 0)
                                          (3 0 3.5 -0.5 4 0)
                                          (4 0 4.5 3 5 0)
                                          (5 0 5.5 -3 6 0)
                                          (6 0 6.5 2 7 0)
                                          (7 0 7.5 -2 8 0)
                                     )
                                     #-6
                                    \afterGrace
                                    g''''!32
                                    - \espressivo
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        g''''16
                                    }
                                    \fancy-gliss
                                       #'(
                                          (0 0 0.5 3 1 0)
                                          (1 0 1.5 -3 2 0)
                                          (2 0 2.5 0.5 3 0)
                                          (3 0 3.5 -0.5 4 0)
                                          (4 0 4.5 3 5 0)
                                          (5 0 5.5 -3 6 0)
                                          (6 0 6.5 2 7 0)
                                          (7 0 7.5 -2 8 0)
                                     )
                                     #-6
                                    \afterGrace
                                    gqs''''!32
                                    - \espressivo
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        gqs''''16
                                    }
                                    \fancy-gliss
                                       #'(
                                          (0 0 0.5 3 1 0)
                                          (1 0 1.5 -3 2 0)
                                          (2 0 2.5 0.5 3 0)
                                          (3 0 3.5 -0.5 4 0)
                                          (4 0 4.5 3 5 0)
                                          (5 0 5.5 -3 6 0)
                                          (6 0 6.5 2 7 0)
                                          (7 0 7.5 -2 8 0)
                                     )
                                     #-6
                                    \afterGrace
                                    af''''!32
                                    - \espressivo
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        af''''16
                                        )
                                    }
                                    r16
                                    \fancy-gliss
                                       #'(
                                          (0 0 0.5 3 1 0)
                                          (1 0 1.5 -3 2 0)
                                          (2 0 2.5 0.5 3 0)
                                          (3 0 3.5 -0.5 4 0)
                                          (4 0 4.5 3 5 0)
                                          (5 0 5.5 -3 6 0)
                                          (6 0 6.5 2 7 0)
                                          (7 0 7.5 -2 8 0)
                                     )
                                     #-6
                                    \afterGrace
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \three-eighths-sharp-markup
                                    g''''!16
                                    - \espressivo
                                    (
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        g''''16
                                    }
                                    \fancy-gliss
                                       #'(
                                          (0 0 0.5 3 1 0)
                                          (1 0 1.5 -3 2 0)
                                          (2 0 2.5 0.5 3 0)
                                          (3 0 3.5 -0.5 4 0)
                                          (4 0 4.5 3 5 0)
                                          (5 0 5.5 -3 6 0)
                                          (6 0 6.5 2 7 0)
                                          (7 0 7.5 -2 8 0)
                                     )
                                     #-6
                                    \afterGrace
                                    af''''!16
                                    - \espressivo
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        af''''16
                                        )
                                    }
                                    \times 2/3
                                    {
                                        r16
                                        \fancy-gliss
                                           #'(
                                              (0 0 0.5 3 1 0)
                                              (1 0 1.5 -3 2 0)
                                              (2 0 2.5 0.5 3 0)
                                              (3 0 3.5 -0.5 4 0)
                                              (4 0 4.5 3 5 0)
                                              (5 0 5.5 -3 6 0)
                                              (6 0 6.5 2 7 0)
                                              (7 0 7.5 -2 8 0)
                                         )
                                         #-6
                                        \afterGrace
                                        gqs''''!16
                                        - \espressivo
                                        (
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            gqs''''16
                                        }
                                        \fancy-gliss
                                           #'(
                                              (0 0 0.5 3 1 0)
                                              (1 0 1.5 -3 2 0)
                                              (2 0 2.5 0.5 3 0)
                                              (3 0 3.5 -0.5 4 0)
                                              (4 0 4.5 3 5 0)
                                              (5 0 5.5 -3 6 0)
                                              (6 0 6.5 2 7 0)
                                              (7 0 7.5 -2 8 0)
                                         )
                                         #-6
                                        \afterGrace
                                        g''''!16
                                        - \espressivo
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            g''''16
                                        }
                                    }
                                    \fancy-gliss
                                       #'(
                                          (0 0 0.5 3 1 0)
                                          (1 0 1.5 -3 2 0)
                                          (2 0 2.5 0.5 3 0)
                                          (3 0 3.5 -0.5 4 0)
                                          (4 0 4.5 3 5 0)
                                          (5 0 5.5 -3 6 0)
                                          (6 0 6.5 2 7 0)
                                          (7 0 7.5 -2 8 0)
                                     )
                                     #-6
                                    \afterGrace
                                    g''''!32.
                                    - \espressivo
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        g''''16
                                    }
                                    \fancy-gliss
                                       #'(
                                          (0 0 0.5 3 1 0)
                                          (1 0 1.5 -3 2 0)
                                          (2 0 2.5 0.5 3 0)
                                          (3 0 3.5 -0.5 4 0)
                                          (4 0 4.5 3 5 0)
                                          (5 0 5.5 -3 6 0)
                                          (6 0 6.5 2 7 0)
                                          (7 0 7.5 -2 8 0)
                                     )
                                     #-6
                                    \afterGrace
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \three-eighths-flat-markup
                                    af''''!32.
                                    - \espressivo
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        af''''16
                                        )
                                    }
                                    r32.
                                    \fancy-gliss
                                       #'(
                                          (0 0 0.5 3 1 0)
                                          (1 0 1.5 -3 2 0)
                                          (2 0 2.5 0.5 3 0)
                                          (3 0 3.5 -0.5 4 0)
                                          (4 0 4.5 3 5 0)
                                          (5 0 5.5 -3 6 0)
                                          (6 0 6.5 2 7 0)
                                          (7 0 7.5 -2 8 0)
                                     )
                                     #-6
                                    \afterGrace
                                    g''''!32.
                                    - \espressivo
                                    \stopTextSpanThree
                                    (
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        g''''16
                                        \f
                                        )
                                        \stopTextSpanOne
                                        \stopTextSpanTwo
                                        \ottava 0
                                    }
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                }
                            }
                        }
                    >>
                }
                \tag #'group3
                {
                    \context SquareBracketGroup = "sub group 2"
                    <<
                        \tag #'voice6
                        {
                            \context UnmeteredStaff = "bassclarinet staff"
                            {
                                \context Voice = "bassclarinet voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { bass clarinet }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic"){ b. cl. }
                                    \time 1/8
                                    e8
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "spp"))
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    ~
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    e8
                                    ~
                                    e8
                                    ~
                                    \afterGrace
                                    e32
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        e16
                                    }
                                    eqs16.
                                    - \espressivo
                                    \p
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    ~
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \afterGrace
                                    eqs32
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        eqs16
                                    }
                                    e16.
                                    - \espressivo
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    ~
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \afterGrace
                                    e32
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        e16
                                    }
                                    eqs16.
                                    - \espressivo
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    ~
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \afterGrace
                                    eqs32
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        eqs16
                                    }
                                    f16.
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    f8
                                    ~
                                    f32
                                    f16.
                                    \mf
                                    \>
                                    ~
                                    f16.
                                    f32
                                    \p
                                    \<
                                    ~
                                    \afterGrace
                                    f8
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        f16
                                    }
                                    eqs8
                                    \mp
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    ~
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    eqs8
                                    ~
                                    eqs8
                                    ~
                                    eqs8
                                    ~
                                    eqs8
                                    ~
                                    eqs8
                                    ~
                                    eqs8
                                    ~
                                    eqs8
                                    \<
                                    ~
                                    \afterGrace
                                    eqs8
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        eqs16
                                        \f
                                    }
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice7
                        {
                            \context UnmeteredStaff = "percussion 1 staff"
                            {
                                \context Voice = "percussion 1 voice"
                                {
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { percussion i }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { perc. i }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    \time 1/8
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    \staff-line-count 2
                                    \boxed-markup "Anvils with pipe" 1
                                    \clef "percussion"
                                    \afterGrace
                                    b8
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz p"))
                                    - \accent
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    \<
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        b16
                                    }
                                    \times 4/7
                                    {
                                        d'32
                                        \laissezVibrer
                                        d'32
                                        - \staccato
                                        b32
                                        \laissezVibrer
                                        b32
                                        \laissezVibrer
                                        \afterGrace
                                        d'16
                                        - \accent
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            d'16
                                        }
                                        b32
                                        - \staccato
                                    }
                                    \afterGrace
                                    d'16
                                    - \accent
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        d'16
                                    }
                                    d'16
                                    - \accent
                                    \laissezVibrer
                                    ~
                                    \times 4/5
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        d'32
                                        b32
                                        - \staccato
                                        b32
                                        \laissezVibrer
                                        d'32
                                        \laissezVibrer
                                        \afterGrace
                                        b32
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            b16
                                        }
                                    }
                                    d'16
                                    - \accent
                                    - \staccato
                                    \afterGrace
                                    d'32
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        d'16
                                    }
                                    b32
                                    - \accent
                                    \f
                                    \laissezVibrer
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                }
                            }
                        }
                    >>
                }
                \tag #'group4
                {
                    \context SquareBracketGroup = "sub group 3"
                    <<
                        \tag #'voice8
                        {
                            \context UnmeteredStaff = "cello 1 staff"
                            {
                                \context Voice = "cello 1 voice"
                                {
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { violoncello i }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vc. i }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    \time 1/8
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 56/57
                                    {
                                        <<
                                            \context Voice = "On_Beat_Grace_Container"
                                            {
                                                  %! abjad.on_beat_grace_container(1)
                                                \set fontSize = #-3
                                                \tweak text #tuplet-number::calc-fraction-text
                                                \times 1/1
                                                {
                                                      %! abjad.on_beat_grace_container(2)
                                                    \slash
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override NoteHead.transparent = ##t
                                                    \abjad-color-music #'darkred
                                                    \voiceOne
                                                    b''32
                                                    - \tweak color #"darkmagenta"
                                                    - \downbow
                                                    _ \ff
                                                    [
                                                    (
                                                      %! abjad.glissando(7)
                                                    - \abjad-zero-padding-glissando
                                                      %! abjad.glissando(7)
                                                    \glissando
                                                    - \tweak color #darkred
                                                    - \tweak padding #19.5
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 0 7 \hspace #0.5 } \hspace #0.5 }
                                                    \startTextSpan
                                                    - \tweak stencil #abjad-flared-hairpin
                                                    _ \>
                                                    - \tweak color #(css-color 'goldenrod)
                                                    - \tweak details.squiggle-Y-scale 0.9
                                                    - \tweak details.squiggle-initial-width 0.2
                                                    - \tweak details.squiggle-speed-factor -0.9
                                                    - \tweak thickness 3
                                                    \slow-fast-trill
                                                    \abjad-color-music #'darkred
                                                      %! abjad.glissando(1)
                                                    \hide NoteHead
                                                      %! abjad.glissando(1)
                                                    \override Accidental.stencil = ##f
                                                      %! abjad.glissando(1)
                                                    \override NoteColumn.glissando-skip = ##t
                                                      %! abjad.glissando(1)
                                                    \override NoteHead.no-ledgers = ##t
                                                    \revert Staff.Stem.stencil
                                                    b''32
                                                    \stopTextSpan
                                                    - \tweak color #darkred
                                                    - \tweak padding #19.5
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 2 7 \hspace #0.5 } \hspace #0.5 }
                                                    \startTextSpan
                                                    \abjad-color-music #'darkred
                                                    b''16 * 1/2
                                                    \stopTextSpan
                                                    - \tweak color #darkred
                                                    - \tweak padding #19.5
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 3 7 \hspace #0.5 } \hspace #0.5 }
                                                    \startTextSpan
                                                    \abjad-color-music #'darkred
                                                    b''32
                                                    \stopTextSpan
                                                    - \tweak color #darkred
                                                    - \tweak padding #19.5
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 4 7 \hspace #0.5 } \hspace #0.5 }
                                                    \startTextSpan
                                                    \times 512/608
                                                    {
                                                        \abjad-color-music #'darkred
                                                        b''32 * 19/16
                                                        \stopTextSpan
                                                        - \tweak color #darkred
                                                        - \tweak padding #19.5
                                                        - \abjad-solid-line-with-arrow
                                                        - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 6 7 \hspace #0.5 } \hspace #0.5 }
                                                        - \tweak bound-details.right.text \markup \with-color "darkred" \concat { \upright \fraction 7 7 \hspace #0.5 }
                                                        \startTextSpan
                                                        ~
                                                        \abjad-color-music #'darkred
                                                        \afterGrace
                                                        b''512 * 19
                                                        )
                                                        \stopTextSpan
                                                        ]
                                                        {
                                                            \once \override Accidental.stencil = ##f
                                                            \once \override NoteHead.no-ledgers = ##t
                                                            \override Staff.Stem.stencil = ##f
                                                            \once \override NoteHead.transparent = ##t
                                                              %! abjad.glissando(6)
                                                            \revert Accidental.stencil
                                                              %! abjad.glissando(6)
                                                            \revert NoteColumn.glissando-skip
                                                              %! abjad.glissando(6)
                                                            \revert NoteHead.no-ledgers
                                                              %! abjad.glissando(6)
                                                            \undo \hide NoteHead
                                                            b''16
                                                            _ \p
                                                            \stopTrillSpan
                                                        }
                                                    }
                                                }
                                            }
                                            \context Voice = "cello 1 voice Anchor"
                                            {
                                                \staff-line-count 5
                                                \clef "treble"
                                                \once \override NoteHead.X-extent = #'(0.5 . 0)
                                                  %! abjad.on_beat_grace_container(4)
                                                \voiceTwo
                                                \tweak Accidental.stencil #ly:text-interface::print
                                                \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                                                b''!8.
                                                ^ \markup \center-align { \concat { B\raise #0.5 { \teeny \flat } +41 } }
                                            }
                                        >>
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                                        b''!4.
                                        ^ \markup \center-align { \concat { B\raise #0.5 { \teeny \flat } +41 } }
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        - \tweak color #(css-color 'indianred)
                                        - \tweak padding #10
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \with-color "indianred" { "molto pont." } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -1
                                        \startTextSpanOne
                                        ~
                                        - \tweak color #(css-color 'goldenrod)
                                        - \tweak details.squiggle-Y-scale 0.9
                                        - \tweak details.squiggle-initial-width 7
                                        - \tweak details.squiggle-speed-factor 0.7
                                        - \tweak thickness 3
                                        \slow-fast-trill
                                        \once \override Accidental.stencil = ##f
                                        \once \override Beam.stencil = ##f
                                        \once \override Dots.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.duration-log = 2
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Stem.stencil = ##f
                                        \once \override Tie.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        \afterGrace
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                                        b''32
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            b''16
                                            \stopTextSpanOne
                                            \stopTrillSpan
                                        }
                                        <<
                                            \context Voice = "On_Beat_Grace_Container"
                                            {
                                                  %! abjad.on_beat_grace_container(1)
                                                \set fontSize = #-3
                                                \tweak text #tuplet-number::calc-fraction-text
                                                \times 1/1
                                                {
                                                      %! abjad.on_beat_grace_container(2)
                                                    \slash
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override NoteHead.transparent = ##t
                                                    \abjad-color-music #'darkred
                                                    \voiceOne
                                                    b''32 * 6/5
                                                    - \tweak color #"darkmagenta"
                                                    - \downbow
                                                    _ \ff
                                                    [
                                                    (
                                                      %! abjad.glissando(7)
                                                    - \abjad-zero-padding-glissando
                                                      %! abjad.glissando(7)
                                                    \glissando
                                                    - \tweak color #darkred
                                                    - \tweak padding #18
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 0 7 \hspace #0.5 } \hspace #0.5 }
                                                    \startTextSpan
                                                    - \tweak stencil #abjad-flared-hairpin
                                                    _ \>
                                                    - \tweak color #(css-color 'goldenrod)
                                                    - \tweak details.squiggle-Y-scale 0.9
                                                    - \tweak details.squiggle-initial-width 0.2
                                                    - \tweak details.squiggle-speed-factor -0.9
                                                    - \tweak thickness 3
                                                    \slow-fast-trill
                                                    \abjad-color-music #'darkred
                                                      %! abjad.glissando(1)
                                                    \hide NoteHead
                                                      %! abjad.glissando(1)
                                                    \override Accidental.stencil = ##f
                                                      %! abjad.glissando(1)
                                                    \override NoteColumn.glissando-skip = ##t
                                                      %! abjad.glissando(1)
                                                    \override NoteHead.no-ledgers = ##t
                                                    \revert Staff.Stem.stencil
                                                    b''16 * 3/5
                                                    \stopTextSpan
                                                    - \tweak color #darkred
                                                    - \tweak padding #18
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 2 7 \hspace #0.5 } \hspace #0.5 }
                                                    \startTextSpan
                                                    \abjad-color-music #'darkred
                                                    b''32 * 6/5
                                                    \stopTextSpan
                                                    - \tweak color #darkred
                                                    - \tweak padding #18
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 3 7 \hspace #0.5 } \hspace #0.5 }
                                                    \startTextSpan
                                                    \tweak edge-height #'(0.7 . 0)
                                                    \times 128/152
                                                    {
                                                        \abjad-color-music #'darkred
                                                        b''16 * 57/80
                                                        \stopTextSpan
                                                        - \tweak color #darkred
                                                        - \tweak padding #18
                                                        - \abjad-solid-line-with-arrow
                                                        - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 4 7 \hspace #0.5 } \hspace #0.5 }
                                                        - \tweak bound-details.right.text \markup \with-color "darkred" \concat { \upright \fraction 6 7 \hspace #0.5 }
                                                        \startTextSpan
                                                        ~
                                                        \abjad-color-music #'darkred
                                                        \afterGrace
                                                        b''128 * 57/10
                                                        )
                                                        \stopTextSpan
                                                        ]
                                                        {
                                                            \once \override Accidental.stencil = ##f
                                                            \once \override NoteHead.no-ledgers = ##t
                                                            \override Staff.Stem.stencil = ##f
                                                            \once \override NoteHead.transparent = ##t
                                                              %! abjad.glissando(6)
                                                            \revert Accidental.stencil
                                                              %! abjad.glissando(6)
                                                            \revert NoteColumn.glissando-skip
                                                              %! abjad.glissando(6)
                                                            \revert NoteHead.no-ledgers
                                                              %! abjad.glissando(6)
                                                            \undo \hide NoteHead
                                                            b''16
                                                            _ \p
                                                            \stopTrillSpan
                                                        }
                                                    }
                                                }
                                            }
                                            \context Voice = "cello 1 voice Anchor"
                                            {
                                                \once \override NoteHead.X-extent = #'(0.5 . 0)
                                                  %! abjad.on_beat_grace_container(4)
                                                \voiceTwo
                                                \tweak Accidental.stencil #ly:text-interface::print
                                                \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                                                b''!8.
                                                ^ \markup \center-align { \concat { B\raise #0.5 { \teeny \flat } +41 } }
                                            }
                                        >>
                                        \once \override Staff.TextScript.whiteout = ##f
                                        \afterGrace
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                                        b''!16
                                        ^ \markup \center-align { \concat { B\raise #0.5 { \teeny \flat } +41 } }
                                        ^ \markup \with-color "indianred" { "molto pont." }
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        - \tweak color #(css-color 'goldenrod)
                                        - \tweak details.squiggle-Y-scale 0.9
                                        - \tweak details.squiggle-initial-width 0.3
                                        - \tweak details.squiggle-speed-factor -0.1
                                        - \tweak thickness 3
                                        \slow-fast-trill
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            b''16
                                            \stopTrillSpan
                                        }
                                        <<
                                            \context Voice = "On_Beat_Grace_Container"
                                            {
                                                  %! abjad.on_beat_grace_container(1)
                                                \set fontSize = #-3
                                                \tweak text #tuplet-number::calc-fraction-text
                                                \times 1/1
                                                {
                                                      %! abjad.on_beat_grace_container(2)
                                                    \slash
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override NoteHead.transparent = ##t
                                                    \abjad-color-music #'darkred
                                                    \voiceOne
                                                    b''16 * 3/5
                                                    - \tweak color #"darkmagenta"
                                                    - \downbow
                                                    _ \ff
                                                    [
                                                    (
                                                      %! abjad.glissando(7)
                                                    - \abjad-zero-padding-glissando
                                                      %! abjad.glissando(7)
                                                    \glissando
                                                    - \tweak color #darkred
                                                    - \tweak padding #19.5
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 0 7 \hspace #0.5 } \hspace #0.5 }
                                                    \startTextSpan
                                                    - \tweak stencil #abjad-flared-hairpin
                                                    _ \>
                                                    - \tweak color #(css-color 'goldenrod)
                                                    - \tweak details.squiggle-Y-scale 0.9
                                                    - \tweak details.squiggle-initial-width 0.2
                                                    - \tweak details.squiggle-speed-factor -0.9
                                                    - \tweak thickness 3
                                                    \slow-fast-trill
                                                    \abjad-color-music #'darkred
                                                      %! abjad.glissando(1)
                                                    \hide NoteHead
                                                      %! abjad.glissando(1)
                                                    \override Accidental.stencil = ##f
                                                      %! abjad.glissando(1)
                                                    \override NoteColumn.glissando-skip = ##t
                                                      %! abjad.glissando(1)
                                                    \override NoteHead.no-ledgers = ##t
                                                    \revert Staff.Stem.stencil
                                                    b''32 * 6/5
                                                    \stopTextSpan
                                                    - \tweak color #darkred
                                                    - \tweak padding #19.5
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 2 7 \hspace #0.5 } \hspace #0.5 }
                                                    \startTextSpan
                                                    \abjad-color-music #'darkred
                                                    b''16 * 3/5
                                                    \stopTextSpan
                                                    - \tweak color #darkred
                                                    - \tweak padding #19.5
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 3 7 \hspace #0.5 } \hspace #0.5 }
                                                    \startTextSpan
                                                    \tweak edge-height #'(0.7 . 0)
                                                    \times 512/608
                                                    {
                                                        \abjad-color-music #'darkred
                                                        b''32 * 57/40
                                                        \stopTextSpan
                                                        - \tweak color #darkred
                                                        - \tweak padding #19.5
                                                        - \abjad-solid-line-with-arrow
                                                        - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 4 7 \hspace #0.5 } \hspace #0.5 }
                                                        - \tweak bound-details.right.text \markup \with-color "darkred" \concat { \upright \fraction 6 7 \hspace #0.5 }
                                                        \startTextSpan
                                                        ~
                                                        \abjad-color-music #'darkred
                                                        \afterGrace
                                                        b''512 * 114/5
                                                        )
                                                        \stopTextSpan
                                                        ]
                                                        {
                                                            \once \override Accidental.stencil = ##f
                                                            \once \override NoteHead.no-ledgers = ##t
                                                            \override Staff.Stem.stencil = ##f
                                                            \once \override NoteHead.transparent = ##t
                                                              %! abjad.glissando(6)
                                                            \revert Accidental.stencil
                                                              %! abjad.glissando(6)
                                                            \revert NoteColumn.glissando-skip
                                                              %! abjad.glissando(6)
                                                            \revert NoteHead.no-ledgers
                                                              %! abjad.glissando(6)
                                                            \undo \hide NoteHead
                                                            b''16
                                                            _ \p
                                                            \stopTrillSpan
                                                        }
                                                    }
                                                }
                                            }
                                            \context Voice = "cello 1 voice Anchor"
                                            {
                                                \once \override NoteHead.X-extent = #'(0.5 . 0)
                                                  %! abjad.on_beat_grace_container(4)
                                                \voiceTwo
                                                \tweak Accidental.stencil #ly:text-interface::print
                                                \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                                                b''!8.
                                                ^ \markup \center-align { \concat { B\raise #0.5 { \teeny \flat } +41 } }
                                            }
                                        >>
                                        \afterGrace
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                                        b''!4
                                        ^ \markup \center-align { \concat { B\raise #0.5 { \teeny \flat } +41 } }
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        - \tweak color #(css-color 'indianred)
                                        - \tweak padding #10
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \with-color "indianred" { "molto pont." } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -1
                                        \startTextSpanOne
                                        - \tweak color #(css-color 'goldenrod)
                                        - \tweak details.squiggle-Y-scale 0.9
                                        - \tweak details.squiggle-initial-width 7
                                        - \tweak details.squiggle-speed-factor 0.8
                                        - \tweak thickness 3
                                        \slow-fast-trill
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            b''16
                                            \stopTextSpanOne
                                            \stopTrillSpan
                                        }
                                        <<
                                            \context Voice = "On_Beat_Grace_Container"
                                            {
                                                  %! abjad.on_beat_grace_container(1)
                                                \set fontSize = #-3
                                                \tweak text #tuplet-number::calc-fraction-text
                                                \times 1/1
                                                {
                                                      %! abjad.on_beat_grace_container(2)
                                                    \slash
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override NoteHead.transparent = ##t
                                                    \abjad-color-music #'darkred
                                                    \voiceOne
                                                    b''32 * 6/5
                                                    - \tweak color #"darkmagenta"
                                                    - \downbow
                                                    _ \ff
                                                    [
                                                    (
                                                      %! abjad.glissando(7)
                                                    - \abjad-zero-padding-glissando
                                                      %! abjad.glissando(7)
                                                    \glissando
                                                    - \tweak color #darkred
                                                    - \tweak padding #18
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 0 7 \hspace #0.5 } \hspace #0.5 }
                                                    \startTextSpan
                                                    - \tweak stencil #abjad-flared-hairpin
                                                    _ \>
                                                    - \tweak color #(css-color 'goldenrod)
                                                    - \tweak details.squiggle-Y-scale 0.9
                                                    - \tweak details.squiggle-initial-width 0.2
                                                    - \tweak details.squiggle-speed-factor -0.9
                                                    - \tweak thickness 3
                                                    \slow-fast-trill
                                                    \abjad-color-music #'darkred
                                                      %! abjad.glissando(1)
                                                    \hide NoteHead
                                                      %! abjad.glissando(1)
                                                    \override Accidental.stencil = ##f
                                                      %! abjad.glissando(1)
                                                    \override NoteColumn.glissando-skip = ##t
                                                      %! abjad.glissando(1)
                                                    \override NoteHead.no-ledgers = ##t
                                                    \revert Staff.Stem.stencil
                                                    b''16 * 3/5
                                                    \stopTextSpan
                                                    - \tweak color #darkred
                                                    - \tweak padding #18
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 2 7 \hspace #0.5 } \hspace #0.5 }
                                                    \startTextSpan
                                                    \abjad-color-music #'darkred
                                                    b''32 * 6/5
                                                    \stopTextSpan
                                                    - \tweak color #darkred
                                                    - \tweak padding #18
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 3 7 \hspace #0.5 } \hspace #0.5 }
                                                    \startTextSpan
                                                    \tweak edge-height #'(0.7 . 0)
                                                    \times 128/152
                                                    {
                                                        \abjad-color-music #'darkred
                                                        b''16 * 57/80
                                                        \stopTextSpan
                                                        - \tweak color #darkred
                                                        - \tweak padding #18
                                                        - \abjad-solid-line-with-arrow
                                                        - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 4 7 \hspace #0.5 } \hspace #0.5 }
                                                        - \tweak bound-details.right.text \markup \with-color "darkred" \concat { \upright \fraction 6 7 \hspace #0.5 }
                                                        \startTextSpan
                                                        ~
                                                        \abjad-color-music #'darkred
                                                        \afterGrace
                                                        b''128 * 57/10
                                                        )
                                                        \stopTextSpan
                                                        ]
                                                        {
                                                            \once \override Accidental.stencil = ##f
                                                            \once \override NoteHead.no-ledgers = ##t
                                                            \override Staff.Stem.stencil = ##f
                                                            \once \override NoteHead.transparent = ##t
                                                              %! abjad.glissando(6)
                                                            \revert Accidental.stencil
                                                              %! abjad.glissando(6)
                                                            \revert NoteColumn.glissando-skip
                                                              %! abjad.glissando(6)
                                                            \revert NoteHead.no-ledgers
                                                              %! abjad.glissando(6)
                                                            \undo \hide NoteHead
                                                            b''16
                                                            _ \p
                                                            \stopTrillSpan
                                                        }
                                                    }
                                                }
                                            }
                                            \context Voice = "cello 1 voice Anchor"
                                            {
                                                \once \override NoteHead.X-extent = #'(0.5 . 0)
                                                  %! abjad.on_beat_grace_container(4)
                                                \voiceTwo
                                                \tweak Accidental.stencil #ly:text-interface::print
                                                \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                                                b''!8.
                                                ^ \markup \center-align { \concat { B\raise #0.5 { \teeny \flat } +41 } }
                                            }
                                        >>
                                        \once \override Staff.TextScript.whiteout = ##f
                                        \afterGrace
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                                        b''!16
                                        ^ \markup \center-align { \concat { B\raise #0.5 { \teeny \flat } +41 } }
                                        ^ \markup \with-color "indianred" { "molto pont." }
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        - \tweak color #(css-color 'goldenrod)
                                        - \tweak details.squiggle-Y-scale 0.9
                                        - \tweak details.squiggle-initial-width 0.3
                                        - \tweak details.squiggle-speed-factor -0.1
                                        - \tweak thickness 3
                                        \slow-fast-trill
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            b''16
                                            \stopTrillSpan
                                        }
                                        <<
                                            \context Voice = "On_Beat_Grace_Container"
                                            {
                                                  %! abjad.on_beat_grace_container(1)
                                                \set fontSize = #-3
                                                \tweak text #tuplet-number::calc-fraction-text
                                                \times 1/1
                                                {
                                                      %! abjad.on_beat_grace_container(2)
                                                    \slash
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override NoteHead.transparent = ##t
                                                    \abjad-color-music #'darkred
                                                    \voiceOne
                                                    b''16 * 3/5
                                                    - \tweak color #"darkmagenta"
                                                    - \downbow
                                                    _ \ff
                                                    [
                                                    (
                                                      %! abjad.glissando(7)
                                                    - \abjad-zero-padding-glissando
                                                      %! abjad.glissando(7)
                                                    \glissando
                                                    - \tweak color #darkred
                                                    - \tweak padding #19.5
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 0 7 \hspace #0.5 } \hspace #0.5 }
                                                    \startTextSpan
                                                    - \tweak stencil #abjad-flared-hairpin
                                                    _ \>
                                                    - \tweak color #(css-color 'goldenrod)
                                                    - \tweak details.squiggle-Y-scale 0.9
                                                    - \tweak details.squiggle-initial-width 0.2
                                                    - \tweak details.squiggle-speed-factor -0.9
                                                    - \tweak thickness 3
                                                    \slow-fast-trill
                                                    \abjad-color-music #'darkred
                                                      %! abjad.glissando(1)
                                                    \hide NoteHead
                                                      %! abjad.glissando(1)
                                                    \override Accidental.stencil = ##f
                                                      %! abjad.glissando(1)
                                                    \override NoteColumn.glissando-skip = ##t
                                                      %! abjad.glissando(1)
                                                    \override NoteHead.no-ledgers = ##t
                                                    \revert Staff.Stem.stencil
                                                    b''32 * 6/5
                                                    \stopTextSpan
                                                    - \tweak color #darkred
                                                    - \tweak padding #19.5
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 2 7 \hspace #0.5 } \hspace #0.5 }
                                                    \startTextSpan
                                                    \abjad-color-music #'darkred
                                                    b''16 * 3/5
                                                    \stopTextSpan
                                                    - \tweak color #darkred
                                                    - \tweak padding #19.5
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 3 7 \hspace #0.5 } \hspace #0.5 }
                                                    \startTextSpan
                                                    \tweak edge-height #'(0.7 . 0)
                                                    \times 512/608
                                                    {
                                                        \abjad-color-music #'darkred
                                                        b''32 * 57/40
                                                        \stopTextSpan
                                                        - \tweak color #darkred
                                                        - \tweak padding #19.5
                                                        - \abjad-solid-line-with-arrow
                                                        - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 4 7 \hspace #0.5 } \hspace #0.5 }
                                                        - \tweak bound-details.right.text \markup \with-color "darkred" \concat { \upright \fraction 6 7 \hspace #0.5 }
                                                        \startTextSpan
                                                        ~
                                                        \abjad-color-music #'darkred
                                                        \afterGrace
                                                        b''512 * 114/5
                                                        )
                                                        \stopTextSpan
                                                        ]
                                                        {
                                                            \once \override Accidental.stencil = ##f
                                                            \once \override NoteHead.no-ledgers = ##t
                                                            \override Staff.Stem.stencil = ##f
                                                            \once \override NoteHead.transparent = ##t
                                                              %! abjad.glissando(6)
                                                            \revert Accidental.stencil
                                                              %! abjad.glissando(6)
                                                            \revert NoteColumn.glissando-skip
                                                              %! abjad.glissando(6)
                                                            \revert NoteHead.no-ledgers
                                                              %! abjad.glissando(6)
                                                            \undo \hide NoteHead
                                                            b''16
                                                            _ \p
                                                            \stopTrillSpan
                                                        }
                                                    }
                                                }
                                            }
                                            \context Voice = "cello 1 voice Anchor"
                                            {
                                                \once \override NoteHead.X-extent = #'(0.5 . 0)
                                                  %! abjad.on_beat_grace_container(4)
                                                \voiceTwo
                                                \tweak Accidental.stencil #ly:text-interface::print
                                                \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                                                b''!8.
                                                ^ \markup \center-align { \concat { B\raise #0.5 { \teeny \flat } +41 } }
                                            }
                                        >>
                                        \once \override Staff.TextScript.whiteout = ##f
                                        \afterGrace
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                                        b''!16
                                        ^ \markup \center-align { \concat { B\raise #0.5 { \teeny \flat } +41 } }
                                        ^ \markup \with-color "indianred" { "molto pont." }
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        \<
                                        - \tweak color #(css-color 'goldenrod)
                                        - \tweak details.squiggle-Y-scale 0.9
                                        - \tweak details.squiggle-initial-width 0.3
                                        - \tweak details.squiggle-speed-factor -0.1
                                        - \tweak thickness 3
                                        \slow-fast-trill
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            b''16
                                            \f
                                            \stopTrillSpan
                                        }
                                    }
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    \times 4/5
                                    {
                                        \staff-line-count 4
                                        \clef "varpercussion"
                                        \afterGrace
                                        f'32
                                        \ff
                                        (
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        - \tweak color #(css-color 'indianred)
                                        - \tweak padding #7.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \with-color "indianred" { pont. } \hspace #0.5 }
                                        \startTextSpanOne
                                        - \tweak color #darkred
                                        - \tweak padding #5.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \with-color "darkred" { louré } \hspace #0.5 }
                                        \startTextSpanTwo
                                        - \tweak stencil #constante-hairpin
                                        \<
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            f'16
                                        }
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                        \afterGrace
                                        f'32
                                        \p
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        - \tweak stencil #constante-hairpin
                                        \<
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            f'16
                                        }
                                        \afterGrace
                                        f'32
                                        \ff
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        - \tweak stencil #constante-hairpin
                                        \<
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            f'16
                                        }
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                        \afterGrace
                                        f'32
                                        \p
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        - \tweak stencil #constante-hairpin
                                        \<
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            f'16
                                        }
                                        \afterGrace
                                        f'32
                                        \ff
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        - \tweak stencil #constante-hairpin
                                        \<
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            f'16
                                            \!
                                            )
                                            \stopTextSpanOne
                                            \stopTextSpanTwo
                                        }
                                    }
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice9
                        {
                            \context UnmeteredStaff = "cello 2 staff"
                            {
                                \context Voice = "cello 2 voice"
                                {
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { violoncello ii }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vc. ii }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    \time 1/8
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 56/55
                                    {
                                        <<
                                            \context Voice = "On_Beat_Grace_Container"
                                            {
                                                  %! abjad.on_beat_grace_container(1)
                                                \set fontSize = #-3
                                                \tweak text #tuplet-number::calc-fraction-text
                                                \times 1/1
                                                {
                                                      %! abjad.on_beat_grace_container(2)
                                                    \slash
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override NoteHead.transparent = ##t
                                                    \abjad-color-music #'darkred
                                                    \voiceOne
                                                    g''32
                                                    - \tweak color #"darkmagenta"
                                                    - \downbow
                                                    _ \ff
                                                    [
                                                    (
                                                      %! abjad.glissando(7)
                                                    - \abjad-zero-padding-glissando
                                                      %! abjad.glissando(7)
                                                    \glissando
                                                    - \tweak color #darkred
                                                    - \tweak padding #16.5
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 0 6 \hspace #0.5 } \hspace #0.5 }
                                                    \startTextSpan
                                                    - \tweak stencil #abjad-flared-hairpin
                                                    _ \>
                                                    - \tweak color #(css-color 'goldenrod)
                                                    - \tweak details.squiggle-Y-scale 0.9
                                                    - \tweak details.squiggle-initial-width 0.2
                                                    - \tweak details.squiggle-speed-factor -0.9
                                                    - \tweak thickness 3
                                                    \slow-fast-trill
                                                    \abjad-color-music #'darkred
                                                      %! abjad.glissando(1)
                                                    \hide NoteHead
                                                      %! abjad.glissando(1)
                                                    \override Accidental.stencil = ##f
                                                      %! abjad.glissando(1)
                                                    \override NoteColumn.glissando-skip = ##t
                                                      %! abjad.glissando(1)
                                                    \override NoteHead.no-ledgers = ##t
                                                    \revert Staff.Stem.stencil
                                                    g''16 * 1/2
                                                    \stopTextSpan
                                                    - \tweak color #darkred
                                                    - \tweak padding #16.5
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 2 6 \hspace #0.5 } \hspace #0.5 }
                                                    \startTextSpan
                                                    \abjad-color-music #'darkred
                                                    g''32
                                                    \stopTextSpan
                                                    - \tweak color #darkred
                                                    - \tweak padding #16.5
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 3 6 \hspace #0.5 } \hspace #0.5 }
                                                    - \tweak bound-details.right.text \markup \with-color "darkred" \concat { \upright \fraction 5 6 \hspace #0.5 }
                                                    \startTextSpan
                                                    \times 64/88
                                                    {
                                                        \abjad-color-music #'darkred
                                                        \afterGrace
                                                        g''32. * 11/12
                                                        )
                                                        \stopTextSpan
                                                        ]
                                                        {
                                                            \once \override Accidental.stencil = ##f
                                                            \once \override NoteHead.no-ledgers = ##t
                                                            \override Staff.Stem.stencil = ##f
                                                            \once \override NoteHead.transparent = ##t
                                                              %! abjad.glissando(6)
                                                            \revert Accidental.stencil
                                                              %! abjad.glissando(6)
                                                            \revert NoteColumn.glissando-skip
                                                              %! abjad.glissando(6)
                                                            \revert NoteHead.no-ledgers
                                                              %! abjad.glissando(6)
                                                            \undo \hide NoteHead
                                                            g''16
                                                            _ \p
                                                            \stopTrillSpan
                                                        }
                                                    }
                                                }
                                            }
                                            \context Voice = "cello 2 voice Anchor"
                                            {
                                                \staff-line-count 5
                                                \clef "treble"
                                                \once \override NoteHead.X-extent = #'(0.5 . 0)
                                                  %! abjad.on_beat_grace_container(4)
                                                \voiceTwo
                                                \tweak Accidental.stencil #ly:text-interface::print
                                                \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                                g''!8
                                                ^ \markup \center-align { \concat { A\raise #0.5 { \teeny \flat } -49 } }
                                                ~
                                                \once \override Accidental.stencil = ##f
                                                \once \override Beam.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override Stem.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                \tweak Accidental.stencil #ly:text-interface::print
                                                \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                                g''32
                                            }
                                        >>
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        e''!4.
                                        ^ \markup \center-align { \concat { +4 } }
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        - \tweak color #(css-color 'indianred)
                                        - \tweak padding #10
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \with-color "indianred" { "molto pont." } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -1
                                        \startTextSpanOne
                                        ~
                                        - \tweak color #(css-color 'goldenrod)
                                        - \tweak details.squiggle-Y-scale 0.9
                                        - \tweak details.squiggle-initial-width 7
                                        - \tweak details.squiggle-speed-factor 0.5
                                        - \tweak thickness 3
                                        \slow-fast-trill
                                        \once \override Accidental.stencil = ##f
                                        \once \override Beam.stencil = ##f
                                        \once \override Dots.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.duration-log = 2
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Stem.stencil = ##f
                                        \once \override Tie.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        \afterGrace
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        e''32
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            e''16
                                            \stopTextSpanOne
                                            \stopTrillSpan
                                        }
                                        <<
                                            \context Voice = "On_Beat_Grace_Container"
                                            {
                                                  %! abjad.on_beat_grace_container(1)
                                                \set fontSize = #-3
                                                \tweak text #tuplet-number::calc-fraction-text
                                                \times 1/1
                                                {
                                                      %! abjad.on_beat_grace_container(2)
                                                    \slash
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override NoteHead.transparent = ##t
                                                    \abjad-color-music #'darkred
                                                    \voiceOne
                                                    g''16 * 1/2
                                                    - \tweak color #"darkmagenta"
                                                    - \downbow
                                                    _ \ff
                                                    [
                                                    (
                                                      %! abjad.glissando(7)
                                                    - \abjad-zero-padding-glissando
                                                      %! abjad.glissando(7)
                                                    \glissando
                                                    - \tweak color #darkred
                                                    - \tweak padding #17.5
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 0 6 \hspace #0.5 } \hspace #0.5 }
                                                    \startTextSpan
                                                    - \tweak stencil #abjad-flared-hairpin
                                                    _ \>
                                                    - \tweak color #(css-color 'goldenrod)
                                                    - \tweak details.squiggle-Y-scale 0.9
                                                    - \tweak details.squiggle-initial-width 0.2
                                                    - \tweak details.squiggle-speed-factor -0.9
                                                    - \tweak thickness 3
                                                    \slow-fast-trill
                                                    \abjad-color-music #'darkred
                                                      %! abjad.glissando(1)
                                                    \hide NoteHead
                                                      %! abjad.glissando(1)
                                                    \override Accidental.stencil = ##f
                                                      %! abjad.glissando(1)
                                                    \override NoteColumn.glissando-skip = ##t
                                                      %! abjad.glissando(1)
                                                    \override NoteHead.no-ledgers = ##t
                                                    \revert Staff.Stem.stencil
                                                    g''32
                                                    \stopTextSpan
                                                    - \tweak color #darkred
                                                    - \tweak padding #17.5
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 2 6 \hspace #0.5 } \hspace #0.5 }
                                                    \startTextSpan
                                                    \abjad-color-music #'darkred
                                                    g''16 * 1/2
                                                    \stopTextSpan
                                                    - \tweak color #darkred
                                                    - \tweak padding #17.5
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 3 6 \hspace #0.5 } \hspace #0.5 }
                                                    - \tweak bound-details.right.text \markup \with-color "darkred" \concat { \upright \fraction 5 6 \hspace #0.5 }
                                                    \startTextSpan
                                                    \times 256/352
                                                    {
                                                        \abjad-color-music #'darkred
                                                        \afterGrace
                                                        g''256 * 11
                                                        )
                                                        \stopTextSpan
                                                        ]
                                                        {
                                                            \once \override Accidental.stencil = ##f
                                                            \once \override NoteHead.no-ledgers = ##t
                                                            \override Staff.Stem.stencil = ##f
                                                            \once \override NoteHead.transparent = ##t
                                                              %! abjad.glissando(6)
                                                            \revert Accidental.stencil
                                                              %! abjad.glissando(6)
                                                            \revert NoteColumn.glissando-skip
                                                              %! abjad.glissando(6)
                                                            \revert NoteHead.no-ledgers
                                                              %! abjad.glissando(6)
                                                            \undo \hide NoteHead
                                                            g''16
                                                            _ \p
                                                            \stopTrillSpan
                                                        }
                                                    }
                                                }
                                            }
                                            \context Voice = "cello 2 voice Anchor"
                                            {
                                                \once \override NoteHead.X-extent = #'(0.5 . 0)
                                                  %! abjad.on_beat_grace_container(4)
                                                \voiceTwo
                                                \tweak Accidental.stencil #ly:text-interface::print
                                                \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                                g''!8
                                                ^ \markup \center-align { \concat { A\raise #0.5 { \teeny \flat } -49 } }
                                                ~
                                                \once \override Accidental.stencil = ##f
                                                \once \override Beam.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override Stem.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                \tweak Accidental.stencil #ly:text-interface::print
                                                \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                                g''32
                                            }
                                        >>
                                        \once \override Staff.TextScript.whiteout = ##f
                                        \afterGrace
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        e''!16
                                        ^ \markup \center-align { \concat { +4 } }
                                        ^ \markup \with-color "indianred" { "molto pont." }
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        - \tweak color #(css-color 'goldenrod)
                                        - \tweak details.squiggle-Y-scale 0.9
                                        - \tweak details.squiggle-initial-width 0.3
                                        - \tweak details.squiggle-speed-factor -0.1
                                        - \tweak thickness 3
                                        \slow-fast-trill
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            e''16
                                            \stopTrillSpan
                                        }
                                        <<
                                            \context Voice = "On_Beat_Grace_Container"
                                            {
                                                  %! abjad.on_beat_grace_container(1)
                                                \set fontSize = #-3
                                                \tweak text #tuplet-number::calc-fraction-text
                                                \times 1/1
                                                {
                                                      %! abjad.on_beat_grace_container(2)
                                                    \slash
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override NoteHead.transparent = ##t
                                                    \abjad-color-music #'darkred
                                                    \voiceOne
                                                    g''32
                                                    - \tweak color #"darkmagenta"
                                                    - \downbow
                                                    _ \ff
                                                    [
                                                    (
                                                      %! abjad.glissando(7)
                                                    - \abjad-zero-padding-glissando
                                                      %! abjad.glissando(7)
                                                    \glissando
                                                    - \tweak color #darkred
                                                    - \tweak padding #16
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 0 6 \hspace #0.5 } \hspace #0.5 }
                                                    \startTextSpan
                                                    - \tweak stencil #abjad-flared-hairpin
                                                    _ \>
                                                    - \tweak color #(css-color 'goldenrod)
                                                    - \tweak details.squiggle-Y-scale 0.9
                                                    - \tweak details.squiggle-initial-width 0.2
                                                    - \tweak details.squiggle-speed-factor -0.9
                                                    - \tweak thickness 3
                                                    \slow-fast-trill
                                                    \abjad-color-music #'darkred
                                                      %! abjad.glissando(1)
                                                    \hide NoteHead
                                                      %! abjad.glissando(1)
                                                    \override Accidental.stencil = ##f
                                                      %! abjad.glissando(1)
                                                    \override NoteColumn.glissando-skip = ##t
                                                      %! abjad.glissando(1)
                                                    \override NoteHead.no-ledgers = ##t
                                                    \revert Staff.Stem.stencil
                                                    g''16 * 1/2
                                                    \stopTextSpan
                                                    - \tweak color #darkred
                                                    - \tweak padding #16
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 2 6 \hspace #0.5 } \hspace #0.5 }
                                                    \startTextSpan
                                                    \abjad-color-music #'darkred
                                                    g''32
                                                    \stopTextSpan
                                                    - \tweak color #darkred
                                                    - \tweak padding #16
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 3 6 \hspace #0.5 } \hspace #0.5 }
                                                    - \tweak bound-details.right.text \markup \with-color "darkred" \concat { \upright \fraction 5 6 \hspace #0.5 }
                                                    \startTextSpan
                                                    \times 64/88
                                                    {
                                                        \abjad-color-music #'darkred
                                                        \afterGrace
                                                        g''32. * 11/12
                                                        )
                                                        \stopTextSpan
                                                        ]
                                                        {
                                                            \once \override Accidental.stencil = ##f
                                                            \once \override NoteHead.no-ledgers = ##t
                                                            \override Staff.Stem.stencil = ##f
                                                            \once \override NoteHead.transparent = ##t
                                                              %! abjad.glissando(6)
                                                            \revert Accidental.stencil
                                                              %! abjad.glissando(6)
                                                            \revert NoteColumn.glissando-skip
                                                              %! abjad.glissando(6)
                                                            \revert NoteHead.no-ledgers
                                                              %! abjad.glissando(6)
                                                            \undo \hide NoteHead
                                                            g''16
                                                            _ \p
                                                            \stopTrillSpan
                                                        }
                                                    }
                                                }
                                            }
                                            \context Voice = "cello 2 voice Anchor"
                                            {
                                                \once \override NoteHead.X-extent = #'(0.5 . 0)
                                                  %! abjad.on_beat_grace_container(4)
                                                \voiceTwo
                                                \tweak Accidental.stencil #ly:text-interface::print
                                                \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                                g''!8
                                                ^ \markup \center-align { \concat { A\raise #0.5 { \teeny \flat } -49 } }
                                                ~
                                                \once \override Accidental.stencil = ##f
                                                \once \override Beam.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override Stem.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                \tweak Accidental.stencil #ly:text-interface::print
                                                \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                                g''32
                                            }
                                        >>
                                        \afterGrace
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        e''!4
                                        ^ \markup \center-align { \concat { +4 } }
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        - \tweak color #(css-color 'indianred)
                                        - \tweak padding #9
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \with-color "indianred" { "molto pont." } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -1
                                        \startTextSpanOne
                                        - \tweak color #(css-color 'goldenrod)
                                        - \tweak details.squiggle-Y-scale 0.9
                                        - \tweak details.squiggle-initial-width 7
                                        - \tweak details.squiggle-speed-factor 0.8
                                        - \tweak thickness 3
                                        \slow-fast-trill
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            e''16
                                            \stopTextSpanOne
                                            \stopTrillSpan
                                        }
                                        <<
                                            \context Voice = "On_Beat_Grace_Container"
                                            {
                                                  %! abjad.on_beat_grace_container(1)
                                                \set fontSize = #-3
                                                \tweak text #tuplet-number::calc-fraction-text
                                                \times 1/1
                                                {
                                                      %! abjad.on_beat_grace_container(2)
                                                    \slash
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override NoteHead.transparent = ##t
                                                    \abjad-color-music #'darkred
                                                    \voiceOne
                                                    g''16 * 5/8
                                                    - \tweak color #"darkmagenta"
                                                    - \downbow
                                                    _ \ff
                                                    [
                                                    (
                                                      %! abjad.glissando(7)
                                                    - \abjad-zero-padding-glissando
                                                      %! abjad.glissando(7)
                                                    \glissando
                                                    - \tweak color #darkred
                                                    - \tweak padding #16.5
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 0 6 \hspace #0.5 } \hspace #0.5 }
                                                    \startTextSpan
                                                    - \tweak stencil #abjad-flared-hairpin
                                                    _ \>
                                                    - \tweak color #(css-color 'goldenrod)
                                                    - \tweak details.squiggle-Y-scale 0.9
                                                    - \tweak details.squiggle-initial-width 0.2
                                                    - \tweak details.squiggle-speed-factor -0.9
                                                    - \tweak thickness 3
                                                    \slow-fast-trill
                                                    \abjad-color-music #'darkred
                                                      %! abjad.glissando(1)
                                                    \hide NoteHead
                                                      %! abjad.glissando(1)
                                                    \override Accidental.stencil = ##f
                                                      %! abjad.glissando(1)
                                                    \override NoteColumn.glissando-skip = ##t
                                                      %! abjad.glissando(1)
                                                    \override NoteHead.no-ledgers = ##t
                                                    \revert Staff.Stem.stencil
                                                    g''32 * 5/4
                                                    \stopTextSpan
                                                    - \tweak color #darkred
                                                    - \tweak padding #16.5
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 2 6 \hspace #0.5 } \hspace #0.5 }
                                                    \startTextSpan
                                                    \times 256/352
                                                    {
                                                        \abjad-color-music #'darkred
                                                        g''16 * 55/64
                                                        \stopTextSpan
                                                        - \tweak color #darkred
                                                        - \tweak padding #16.5
                                                        - \abjad-solid-line-with-arrow
                                                        - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 3 6 \hspace #0.5 } \hspace #0.5 }
                                                        - \tweak bound-details.right.text \markup \with-color "darkred" \concat { \upright \fraction 5 6 \hspace #0.5 }
                                                        \startTextSpan
                                                        ~
                                                        \abjad-color-music #'darkred
                                                        \afterGrace
                                                        g''64.. * 55/28
                                                        )
                                                        \stopTextSpan
                                                        ]
                                                        {
                                                            \once \override Accidental.stencil = ##f
                                                            \once \override NoteHead.no-ledgers = ##t
                                                            \override Staff.Stem.stencil = ##f
                                                            \once \override NoteHead.transparent = ##t
                                                              %! abjad.glissando(6)
                                                            \revert Accidental.stencil
                                                              %! abjad.glissando(6)
                                                            \revert NoteColumn.glissando-skip
                                                              %! abjad.glissando(6)
                                                            \revert NoteHead.no-ledgers
                                                              %! abjad.glissando(6)
                                                            \undo \hide NoteHead
                                                            g''16
                                                            _ \p
                                                            \stopTrillSpan
                                                        }
                                                    }
                                                }
                                            }
                                            \context Voice = "cello 2 voice Anchor"
                                            {
                                                \once \override NoteHead.X-extent = #'(0.5 . 0)
                                                  %! abjad.on_beat_grace_container(4)
                                                \voiceTwo
                                                \tweak Accidental.stencil #ly:text-interface::print
                                                \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                                g''!8
                                                ^ \markup \center-align { \concat { A\raise #0.5 { \teeny \flat } -49 } }
                                                ~
                                                \once \override Accidental.stencil = ##f
                                                \once \override Beam.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override Stem.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                \tweak Accidental.stencil #ly:text-interface::print
                                                \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                                g''32
                                            }
                                        >>
                                        \once \override Staff.TextScript.whiteout = ##f
                                        \afterGrace
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        e''!16
                                        ^ \markup \center-align { \concat { +4 } }
                                        ^ \markup \with-color "indianred" { "molto pont." }
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        - \tweak color #(css-color 'goldenrod)
                                        - \tweak details.squiggle-Y-scale 0.9
                                        - \tweak details.squiggle-initial-width 0.3
                                        - \tweak details.squiggle-speed-factor -0.1
                                        - \tweak thickness 3
                                        \slow-fast-trill
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            e''16
                                            \stopTrillSpan
                                        }
                                        <<
                                            \context Voice = "On_Beat_Grace_Container"
                                            {
                                                  %! abjad.on_beat_grace_container(1)
                                                \set fontSize = #-3
                                                \tweak text #tuplet-number::calc-fraction-text
                                                \times 1/1
                                                {
                                                      %! abjad.on_beat_grace_container(2)
                                                    \slash
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override NoteHead.transparent = ##t
                                                    \abjad-color-music #'darkred
                                                    \voiceOne
                                                    g''32 * 5/4
                                                    - \tweak color #"darkmagenta"
                                                    - \downbow
                                                    _ \ff
                                                    [
                                                    (
                                                      %! abjad.glissando(7)
                                                    - \abjad-zero-padding-glissando
                                                      %! abjad.glissando(7)
                                                    \glissando
                                                    - \tweak color #darkred
                                                    - \tweak padding #17.5
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 0 6 \hspace #0.5 } \hspace #0.5 }
                                                    \startTextSpan
                                                    - \tweak stencil #abjad-flared-hairpin
                                                    _ \>
                                                    - \tweak color #(css-color 'goldenrod)
                                                    - \tweak details.squiggle-Y-scale 0.9
                                                    - \tweak details.squiggle-initial-width 0.2
                                                    - \tweak details.squiggle-speed-factor -0.9
                                                    - \tweak thickness 3
                                                    \slow-fast-trill
                                                    \abjad-color-music #'darkred
                                                      %! abjad.glissando(1)
                                                    \hide NoteHead
                                                      %! abjad.glissando(1)
                                                    \override Accidental.stencil = ##f
                                                      %! abjad.glissando(1)
                                                    \override NoteColumn.glissando-skip = ##t
                                                      %! abjad.glissando(1)
                                                    \override NoteHead.no-ledgers = ##t
                                                    \revert Staff.Stem.stencil
                                                    g''8 * 5/16
                                                    \stopTextSpan
                                                    - \tweak color #darkred
                                                    - \tweak padding #17.5
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 2 6 \hspace #0.5 } \hspace #0.5 }
                                                    - \tweak bound-details.right.text \markup \with-color "darkred" \concat { \upright \fraction 3 6 \hspace #0.5 }
                                                    \startTextSpan
                                                    \times 256/352
                                                    {
                                                        \abjad-color-music #'darkred
                                                        \afterGrace
                                                        g''256 * 55/4
                                                        )
                                                        \stopTextSpan
                                                        ]
                                                        {
                                                            \once \override Accidental.stencil = ##f
                                                            \once \override NoteHead.no-ledgers = ##t
                                                            \override Staff.Stem.stencil = ##f
                                                            \once \override NoteHead.transparent = ##t
                                                              %! abjad.glissando(6)
                                                            \revert Accidental.stencil
                                                              %! abjad.glissando(6)
                                                            \revert NoteColumn.glissando-skip
                                                              %! abjad.glissando(6)
                                                            \revert NoteHead.no-ledgers
                                                              %! abjad.glissando(6)
                                                            \undo \hide NoteHead
                                                            g''16
                                                            _ \p
                                                            \stopTrillSpan
                                                        }
                                                    }
                                                }
                                            }
                                            \context Voice = "cello 2 voice Anchor"
                                            {
                                                \once \override NoteHead.X-extent = #'(0.5 . 0)
                                                  %! abjad.on_beat_grace_container(4)
                                                \voiceTwo
                                                \tweak Accidental.stencil #ly:text-interface::print
                                                \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                                g''!8
                                                ^ \markup \center-align { \concat { A\raise #0.5 { \teeny \flat } -49 } }
                                                ~
                                                \once \override Accidental.stencil = ##f
                                                \once \override Beam.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override Stem.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                \tweak Accidental.stencil #ly:text-interface::print
                                                \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                                g''32
                                            }
                                        >>
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        e''!8
                                        ^ \markup \center-align { \concat { +4 } }
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        - \tweak color #(css-color 'indianred)
                                        - \tweak padding #9
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \with-color "indianred" { "molto pont." } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -1
                                        \startTextSpanOne
                                        \<
                                        ~
                                        - \tweak color #(css-color 'goldenrod)
                                        - \tweak details.squiggle-Y-scale 0.9
                                        - \tweak details.squiggle-initial-width 7
                                        - \tweak details.squiggle-speed-factor 0.8
                                        - \tweak thickness 3
                                        \slow-fast-trill
                                        \once \override Accidental.stencil = ##f
                                        \once \override Beam.stencil = ##f
                                        \once \override Dots.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.duration-log = 2
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Stem.stencil = ##f
                                        \once \override Tie.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        \afterGrace
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        e''32
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            e''16
                                            \f
                                            \stopTextSpanOne
                                            \stopTrillSpan
                                        }
                                    }
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    \staff-line-count 4
                                    \clef "varpercussion"
                                    \afterGrace
                                    f'32
                                    \ff
                                    (
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak color #(css-color 'indianred)
                                    - \tweak padding #7.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \with-color "indianred" { pont. } \hspace #0.5 }
                                    \startTextSpanOne
                                    - \tweak color #darkred
                                    - \tweak padding #5.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" { louré } \hspace #0.5 }
                                    \startTextSpanTwo
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        f'16
                                    }
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \afterGrace
                                    f'32
                                    \p
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        f'16
                                    }
                                    \afterGrace
                                    f'32
                                    \ff
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        f'16
                                    }
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \afterGrace
                                    f'32
                                    \p
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        f'16
                                        \!
                                        )
                                        \stopTextSpanOne
                                        \stopTextSpanTwo
                                    }
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice10
                        {
                            \context UnmeteredStaff = "cello 3 staff"
                            {
                                \context Voice = "cello 3 voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { violoncello iii }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vc. iii }
                                    \clef "bass"
                                    \time 1/8
                                    d,8
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "spp"))
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak color #(css-color 'goldenrod)
                                    - \tweak padding #4
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \with-color #(css-color 'goldenrod) { "( senza vib. )" } \hspace #0.5 }
                                    \startTextSpan
                                    ~
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    d,8
                                    ~
                                    \afterGrace
                                    d,8
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        d,16
                                        \stopTextSpan
                                    }
                                    \fancy-gliss
                                       #'(
                                          (0 0 0.5 5 1 0)
                                          (1 0 1.5 -5 2 0)
                                          (2 0 2.5 6 3 0)
                                          (3 0 3.5 -6 4 0)
                                          (4 0 4.5 5 5 0)
                                          (5 0 5.5 -5 6 0)
                                          (6 0 6.5 0.5 7 0)
                                          (7 0 7.5 -0.5 8 0)
                                          (8 0 8.5 0.5 9 0)
                                          (9 0 9.5 -0.5 10 0)
                                          (10 0 10.5 1 11 0)
                                          (11 0 11.5 -1 12 0)
                                          (12 0 12.5 0.5 13 0)
                                          (13 0 13.5 -0.5 14 0)
                                          (14 0 14.5 0.5 15 0)
                                          (15 0 15.5 -0.5 16 0)
                                          (16 0 16.5 5 17 0)
                                          (17 0 17.5 -5 18 0)
                                          (18 0 18.5 3 19 0)
                                          (19 0 19.5 -3 20 0)
                                          (20 0 20.5 5 21 0)
                                          (21 0 21.5 -5 22 0)
                                          (22 0 22.5 3 23 0)
                                          (23 0 23.5 -3 24 0)
                                          (24 0 24.5 7 25 0)
                                          (25 0 25.5 -7 26 0)
                                          (26 0 26.5 0.5 27 0)
                                          (27 0 27.5 -0.5 28 0)
                                          (28 0 28.5 0.5 29 0)
                                          (29 0 29.5 -0.5 30 0)
                                          (30 0 30.5 1 31 0)
                                          (31 0 31.5 -1 32 0)
                                          (32 0 32.5 1.5 33 0)
                                          (33 0 33.5 -1.5 34 0)
                                          (34 0 34.5 2 35 0)
                                          (35 0 35.5 -2 36 0)
                                          (36 0 36.5 2.5 37 0)
                                          (37 0 37.5 -2.5 38 0)
                                          (38 0 38.5 3 39 0)
                                          (39 0 39.5 -3 40 0)
                                          (40 0 40.5 3.2 41 0)
                                          (41 0 41.5 -3.2 42 0)
                                          (42 0 42.5 3.5 43 0)
                                          (43 0 43.5 -3.5 44 0)
                                          (44 0 44.5 3.7 45 0)
                                          (45 0 45.5 -3.7 46 0)
                                          (46 0 46.5 4 47 0)
                                          (47 0 47.5 -4 48 0)
                                          (48 0 48.5 4.2 49 0)
                                          (49 0 49.5 -4.2 50 0)
                                          (50 0 50.5 4.5 51 0)
                                          (51 0 51.5 -4.5 52 0)
                                          (52 0 52.5 4.7 53 0)
                                          (53 0 53.5 -4.7 54 0)
                                          (54 0 54.5 5 55 0)
                                          (55 0 55.5 -5 56 0)
                                          (56 0 56.5 6 57 0)
                                          (57 0 57.5 -6 58 0)
                                          (58 0 58.5 7 59 0)
                                          (59 0 59.5 -7 60 0)
                                     )
                                     #-6
                                    d,8
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz p"))
                                    - \accent
                                    - \tweak color #"darkmagenta"
                                    - \downbow
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak color #(css-color 'darksalmon)
                                    - \tweak padding #7
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \skin-default-notehead-markup \hspace #0.5 }
                                    - \tweak bound-details.right.text \skin-diamond-notehead-markup
                                    - \tweak bound-details.right.padding 1
                                    \startTextSpanOne
                                    - \tweak color #(css-color 'indianred)
                                    - \tweak padding #5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \with-color "indianred" { norm. } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \with-color "indianred" { pont. }
                                    - \tweak bound-details.right.padding 2
                                    \startTextSpanTwo
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \afterGrace
                                    d,32
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        d,16
                                        \fff
                                        \stopTextSpanOne
                                        \stopTextSpanTwo
                                    }
                                    \fancy-gliss
                                       #'(
                                          (0 0 0.5 0.5 1 0)
                                          (1 0 1.5 -0.5 2 0)
                                          (2 0 2.5 1 3 0)
                                          (3 0 3.5 -1 4 0)
                                          (4 0 4.5 1.2 5 0)
                                          (5 0 5.5 -1.2 6 0)
                                          (6 0 6.5 1.5 7 0)
                                          (7 0 7.5 -1.5 8 0)
                                          (8 0 8.5 1.7 9 0)
                                          (9 0 9.5 -1.7 10 0)
                                          (10 0 10.5 2 11 0)
                                          (11 0 11.5 -2 12 0)
                                          (12 0 12.5 2.2 13 0)
                                          (13 0 13.5 -2.2 14 0)
                                          (14 0 14.5 2.5 15 0)
                                          (15 0 15.5 -2.5 16 0)
                                          (16 0 16.5 2.7 17 0)
                                          (17 0 17.5 -2.7 18 0)
                                          (18 0 18.5 3 19 0)
                                          (19 0 19.5 -3 20 0)
                                          (20 0 20.5 3.2 21 0)
                                          (21 0 21.5 -3.2 22 0)
                                          (22 0 22.5 3.5 23 0)
                                          (23 0 23.5 -3.5 24 0)
                                          (24 0 24.5 3.7 25 0)
                                          (25 0 25.5 -3.7 26 0)
                                          (26 0 26.5 4 27 0)
                                          (27 0 27.5 -4 28 0)
                                          (28 0 28.5 3.7 29 0)
                                          (29 0 29.5 -3.7 30 0)
                                          (30 0 30.5 3.5 31 0)
                                          (31 0 31.5 -3.5 32 0)
                                          (32 0 32.5 3.2 33 0)
                                          (33 0 33.5 -3.2 34 0)
                                          (34 0 34.5 3 35 0)
                                          (35 0 35.5 -3 36 0)
                                          (36 0 36.5 2.7 37 0)
                                          (37 0 37.5 -2.7 38 0)
                                          (38 0 38.5 2.5 39 0)
                                          (39 0 39.5 -2.5 40 0)
                                          (40 0 40.5 2.2 41 0)
                                          (41 0 41.5 -2.2 42 0)
                                          (42 0 42.5 2 43 0)
                                          (43 0 43.5 -2 44 0)
                                          (44 0 44.5 1.7 45 0)
                                          (45 0 45.5 -1.7 46 0)
                                          (46 0 46.5 1.5 47 0)
                                          (47 0 47.5 -1.5 48 0)
                                          (48 0 48.5 1.2 49 0)
                                          (49 0 49.5 -1.2 50 0)
                                          (50 0 50.5 1 51 0)
                                          (51 0 51.5 -1 52 0)
                                          (52 0 52.5 0.5 53 0)
                                          (53 0 53.5 -0.5 54 0)
                                     )
                                     #-6
                                    dqf,16.
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "s mp"))
                                    - \espressivo
                                    - \tenuto
                                    - \tweak color #"darkmagenta"
                                    - \upbow
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    ~
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \afterGrace
                                    dqf,16
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        dqf,16
                                    }
                                    \fancy-gliss
                                       #'(
                                          (0 0 0.5 1 1 0)
                                          (1 0 1.5 -1 2 0)
                                          (2 0 2.5 5 3 0)
                                          (3 0 3.5 -5 4 0)
                                          (4 0 4.5 1 5 0)
                                          (5 0 5.5 -1 6 0)
                                          (6 0 6.5 1 7 0)
                                          (7 0 7.5 -1 8 0)
                                          (8 0 8.5 5 9 0)
                                          (9 0 9.5 -5 10 0)
                                          (10 0 10.5 1 11 0)
                                          (11 0 11.5 -1 12 0)
                                          (12 0 12.5 1 13 0)
                                          (13 0 13.5 -1 14 0)
                                          (14 0 14.5 5 15 0)
                                          (15 0 15.5 -5 16 0)
                                          (16 0 16.5 1 17 0)
                                          (17 0 17.5 -1 18 0)
                                          (18 0 18.5 5 19 0)
                                          (19 0 19.5 -5 20 0)
                                          (20 0 20.5 1 21 0)
                                          (21 0 21.5 -1 22 0)
                                          (22 0 22.5 1 23 0)
                                          (23 0 23.5 -1 24 0)
                                     )
                                     #-6
                                    d,16
                                    - \tenuto
                                    \mf
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak color #(css-color 'darksalmon)
                                    - \tweak padding #6
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \skin-default-notehead-markup \hspace #0.5 }
                                    - \tweak bound-details.right.text \skin-half-diamond-notehead-markup
                                    - \tweak bound-details.right.padding 1
                                    \startTextSpanOne
                                    - \tweak color #(css-color 'indianred)
                                    - \tweak padding #4
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \with-color "indianred" { "molto tast." } \hspace #0.5 }
                                    \startTextSpanTwo
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    ~
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \afterGrace
                                    d,16.
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        d,16
                                        \!
                                        \stopTextSpanOne
                                        \stopTextSpanTwo
                                    }
                                    \fancy-gliss
                                       #'(
                                          (0 0 0.5 0.1 1 0)
                                          (1 0 1.5 -0.1 2 0)
                                          (2 0 2.5 0.1 3 0)
                                          (3 0 3.5 -0.1 4 0)
                                          (4 0 4.5 0.1 5 0)
                                          (5 0 5.5 -0.1 6 0)
                                          (6 0 6.5 0.1 7 0)
                                          (7 0 7.5 -0.1 8 0)
                                          (8 0 8.5 0.1 9 0)
                                          (9 0 9.5 -0.1 10 0)
                                          (10 0 10.5 0.1 11 0)
                                          (11 0 11.5 -0.1 12 0)
                                          (12 0 12.5 0.1 13 0)
                                          (13 0 13.5 -0.1 14 0)
                                          (14 0 14.5 0.1 15 0)
                                          (15 0 15.5 -0.1 16 0)
                                          (16 0 16.5 0.1 17 0)
                                          (17 0 17.5 -0.1 18 0)
                                          (18 0 18.5 0.1 19 0)
                                          (19 0 19.5 -0.1 20 0)
                                          (20 0 20.5 0.1 21 0)
                                          (21 0 21.5 -0.1 22 0)
                                          (22 0 22.5 0.1 23 0)
                                          (23 0 23.5 -0.1 24 0)
                                          (24 0 24.5 0.1 25 0)
                                          (25 0 25.5 -0.1 26 0)
                                          (26 0 26.5 0.1 27 0)
                                          (27 0 27.5 -0.1 28 0)
                                          (28 0 28.5 0.1 29 0)
                                          (29 0 29.5 -0.1 30 0)
                                          (30 0 30.5 0.1 31 0)
                                          (31 0 31.5 -0.1 32 0)
                                          (32 0 32.5 0.1 33 0)
                                          (33 0 33.5 -0.1 34 0)
                                          (34 0 34.5 0.1 35 0)
                                          (35 0 35.5 -0.1 36 0)
                                          (36 0 36.5 0.1 37 0)
                                          (37 0 37.5 -0.1 38 0)
                                          (38 0 38.5 0.1 39 0)
                                          (39 0 39.5 -0.1 40 0)
                                          (40 0 40.5 0.1 41 0)
                                          (41 0 41.5 -0.1 42 0)
                                          (42 0 42.5 0.3 43 0)
                                          (43 0 43.5 -0.3 44 0)
                                          (44 0 44.5 0.3 45 0)
                                          (45 0 45.5 -0.3 46 0)
                                          (46 0 46.5 0.3 47 0)
                                          (47 0 47.5 -0.3 48 0)
                                          (48 0 48.5 0.3 49 0)
                                          (49 0 49.5 -0.3 50 0)
                                          (50 0 50.5 0.3 51 0)
                                          (51 0 51.5 -0.3 52 0)
                                          (52 0 52.5 0.3 53 0)
                                          (53 0 53.5 -0.3 54 0)
                                          (54 0 54.5 0.3 55 0)
                                          (55 0 55.5 -0.3 56 0)
                                          (56 0 56.5 0.5 57 0)
                                          (57 0 57.5 -0.5 58 0)
                                          (58 0 58.5 0.5 59 0)
                                          (59 0 59.5 -0.5 60 0)
                                          (60 0 60.5 0.5 61 0)
                                          (61 0 61.5 -0.5 62 0)
                                          (62 0 62.5 0.5 63 0)
                                          (63 0 63.5 -0.5 64 0)
                                          (64 0 64.5 0.5 65 0)
                                          (65 0 65.5 -0.5 66 0)
                                          (66 0 66.5 1 67 0)
                                          (67 0 67.5 -1 68 0)
                                          (68 0 68.5 1.5 69 0)
                                          (69 0 69.5 -1.5 70 0)
                                          (70 0 70.5 2 71 0)
                                          (71 0 71.5 -2 72 0)
                                          (72 0 72.5 2.5 73 0)
                                          (73 0 73.5 -2.5 74 0)
                                          (74 0 74.5 3 75 0)
                                          (75 0 75.5 -3 76 0)
                                          (76 0 76.5 3.2 77 0)
                                          (77 0 77.5 -3.2 78 0)
                                          (78 0 78.5 3.5 79 0)
                                          (79 0 79.5 -3.5 80 0)
                                          (80 0 80.5 3.7 81 0)
                                          (81 0 81.5 -3.7 82 0)
                                          (82 0 82.5 4 83 0)
                                          (83 0 83.5 -4 84 0)
                                          (84 0 84.5 4.5 85 0)
                                          (85 0 85.5 -4.5 86 0)
                                          (86 0 86.5 5 87 0)
                                          (87 0 87.5 -5 88 0)
                                          (88 0 88.5 6 89 0)
                                          (89 0 89.5 -6 90 0)
                                          (90 0 90.5 7 91 0)
                                          (91 0 91.5 -7 92 0)
                                     )
                                     #-6
                                    d,32
                                    \p
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    \<
                                    ~
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    d,8
                                    ~
                                    d,8
                                    ~
                                    d,8
                                    ~
                                    \afterGrace
                                    d,16
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        d,16
                                    }
                                    \fancy-gliss
                                       #'(
                                          (0 0 0.5 0.5 1 0)
                                          (1 0 1.5 -0.5 2 0)
                                          (2 0 2.5 0.5 3 0)
                                          (3 0 3.5 -0.5 4 0)
                                          (4 0 4.5 0.5 5 0)
                                          (5 0 5.5 -0.5 6 0)
                                          (6 0 6.5 0.5 7 0)
                                          (7 0 7.5 -0.5 8 0)
                                          (8 0 8.5 0.5 9 0)
                                          (9 0 9.5 -0.5 10 0)
                                          (10 0 10.5 0.5 11 0)
                                          (11 0 11.5 -0.5 12 0)
                                          (12 0 12.5 0.5 13 0)
                                          (13 0 13.5 -0.5 14 0)
                                          (14 0 14.5 0.5 15 0)
                                          (15 0 15.5 -0.5 16 0)
                                          (16 0 16.5 0.5 17 0)
                                          (17 0 17.5 -0.5 18 0)
                                          (18 0 18.5 0.5 19 0)
                                          (19 0 19.5 -0.5 20 0)
                                          (20 0 20.5 0.5 21 0)
                                          (21 0 21.5 -0.5 22 0)
                                          (22 0 22.5 0.5 23 0)
                                          (23 0 23.5 -0.5 24 0)
                                     )
                                     #-6
                                    d,16
                                    \mf
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    ~
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    d,8
                                    ~
                                    d,8
                                    ~
                                    d,8
                                    ~
                                    d,8
                                    ~
                                    d,8
                                    ~
                                    d,8
                                    ~
                                    d,8
                                    ~
                                    d,8
                                    \<
                                    ~
                                    \afterGrace
                                    d,8
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        d,16
                                        \f
                                    }
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 4/3
                                    {
                                        \staff-line-count 4
                                        \clef "varpercussion"
                                        \afterGrace
                                        f'32
                                        \ff
                                        (
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        - \tweak color #(css-color 'indianred)
                                        - \tweak padding #7.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \with-color "indianred" { pont. } \hspace #0.5 }
                                        \startTextSpanOne
                                        - \tweak color #darkred
                                        - \tweak padding #5.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \with-color "darkred" { louré } \hspace #0.5 }
                                        \startTextSpanTwo
                                        - \tweak stencil #constante-hairpin
                                        \<
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            f'16
                                        }
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                        \afterGrace
                                        f'32
                                        \p
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        - \tweak stencil #constante-hairpin
                                        \<
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            f'16
                                        }
                                        \afterGrace
                                        f'32
                                        \ff
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        - \tweak stencil #constante-hairpin
                                        \<
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            f'16
                                            \!
                                            )
                                            \stopTextSpanOne
                                            \stopTextSpanTwo
                                        }
                                    }
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                }
                            }
                        }
                    >>
                }
                \tag #'group5
                {
                    \context SquareBracketGroup = "sub group 4"
                    <<
                        \tag #'voice11
                        {
                            \context UnmeteredStaff = "tenortrombone staff"
                            {
                                \context Voice = "tenortrombone voice"
                                {
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { tenor trombone }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { t. tbn. }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    \time 1/8
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    \afterGrace
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \abjad-natural  }
                                    a!16
                                    ^ \markup \center-align { \concat { +2 } }
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    - \tweak color #(css-color 'darksalmon)
                                    - \tweak padding #5.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \with-color "darksalmon" { "with vinyl covers" } \hspace #0.5 }
                                    \startTextSpan
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        a16
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "ff"))
                                    }
                                    r16
                                    r32
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \abjad-natural  }
                                    a!16.
                                    ^ \markup \center-align { \concat { +2 } }
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \afterGrace
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \abjad-natural  }
                                    a16
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        a16
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "mp"))
                                    }
                                    r16
                                    \times 4/5
                                    {
                                        r16
                                        \afterGrace
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        a!16
                                        ^ \markup \center-align { \concat { +2 } }
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            a16
                                                _ #(make-dynamic-script (markup #:whiteout #:italic "p"))
                                        }
                                        r32
                                    }
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    \times 4/5
                                    {
                                        \afterGrace
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        a!8
                                        ^ \markup \center-align { \concat { +2 } }
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            a16
                                                _ #(make-dynamic-script (markup #:whiteout #:italic "p"))
                                        }
                                        r32
                                    }
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    \times 2/3
                                    {
                                        r32
                                        \afterGrace
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        a!8
                                        ^ \markup \center-align { \concat { +2 } }
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            a16
                                                _ #(make-dynamic-script (markup #:whiteout #:italic "p"))
                                        }
                                        r32
                                    }
                                    r32
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \abjad-natural  }
                                    a!16.
                                    ^ \markup \center-align { \concat { +2 } }
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \afterGrace
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \abjad-natural  }
                                    a16
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        a16
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "p"))
                                    }
                                    r16
                                    \afterGrace
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \abjad-natural  }
                                    a!8
                                    ^ \markup \center-align { \concat { +2 } }
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        a16
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "p"))
                                    }
                                    \times 4/5
                                    {
                                        r16.
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        a!16
                                        ^ \markup \center-align { \concat { +2 } }
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                        ~
                                    }
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \afterGrace
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \abjad-natural  }
                                    a16
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        a16
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "p"))
                                    }
                                    r16
                                    \times 4/5
                                    {
                                        r32
                                        \afterGrace
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        a!16
                                        ^ \markup \center-align { \concat { +2 } }
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            a16
                                                _ #(make-dynamic-script (markup #:whiteout #:italic "p"))
                                            \stopTextSpan
                                        }
                                        r16
                                    }
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice12
                        {
                            \context UnmeteredStaff = "basstrombone staff"
                            {
                                \context Voice = "basstrombone voice"
                                {
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { bass trombone }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { b. tbn. }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                    \clef "bass"
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    \time 1/8
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    r16.
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                    d!32
                                    ^ \markup \center-align { \concat { -22 } }
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    - \tweak color #(css-color 'darksalmon)
                                    - \tweak padding #5.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \with-color "darksalmon" { "with vinyl covers" } \hspace #0.5 }
                                    \startTextSpan
                                    ~
                                    \times 4/5
                                    {
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        \afterGrace
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        d32
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            d16
                                                _ #(make-dynamic-script (markup #:whiteout #:italic "ff"))
                                        }
                                        r8
                                    }
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    \times 2/3
                                    {
                                        \afterGrace
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        d!8
                                        ^ \markup \center-align { \concat { -22 } }
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            d16
                                                _ #(make-dynamic-script (markup #:whiteout #:italic "mp"))
                                        }
                                        r16
                                    }
                                    r32
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                    d!16.
                                    ^ \markup \center-align { \concat { -22 } }
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \afterGrace
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                    d32
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        d16
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "p"))
                                    }
                                    r16
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                    d!32
                                    ^ \markup \center-align { \concat { -22 } }
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                    d8
                                    ~
                                    \times 4/5
                                    {
                                        \afterGrace
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        d16
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            d16
                                                _ #(make-dynamic-script (markup #:whiteout #:italic "p"))
                                        }
                                        r16
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        d!32
                                        ^ \markup \center-align { \concat { -22 } }
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                        ~
                                    }
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \afterGrace
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                    d32
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        d16
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "p"))
                                    }
                                    r16.
                                    \times 4/5
                                    {
                                        \afterGrace
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        d!8
                                        ^ \markup \center-align { \concat { -22 } }
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            d16
                                                _ #(make-dynamic-script (markup #:whiteout #:italic "p"))
                                        }
                                        r32
                                    }
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    \times 2/3
                                    {
                                        r32
                                        \afterGrace
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        d!16
                                        ^ \markup \center-align { \concat { -22 } }
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            d16
                                                _ #(make-dynamic-script (markup #:whiteout #:italic "p"))
                                        }
                                        r16.
                                    }
                                    r16
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                    d!16
                                    ^ \markup \center-align { \concat { -22 } }
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \afterGrace
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                    d16
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        d16
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "p"))
                                    }
                                    r16
                                    r16
                                    \afterGrace
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                    d!16
                                    ^ \markup \center-align { \concat { -22 } }
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        d16
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "p"))
                                        \stopTextSpan
                                    }
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice13
                        {
                            \context UnmeteredStaff = "percussion 2 staff"
                            {
                                \context Voice = "percussion 2 voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { percussion ii }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { perc. ii }
                                    \textSpannerDown
                                    \clef "bass"
                                    \time 1/8
                                    d,8
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "spp"))
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak color #darkmagenta
                                    - \tweak padding #8.5
                                    - \abjad-dashed-line-with-up-hook
                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkmagenta" { \fontsize #3.5 \override #'(font-name . "ekmelos") \char ##xe222 } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -1
                                    \startTextSpan
                                    ~
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    d,8
                                    ~
                                    d,16.
                                    d,32
                                    \<
                                    ~
                                    d,16
                                    d,16
                                    \f
                                    \>
                                    ~
                                    d,16
                                    d,16
                                    \p
                                    \<
                                    ~
                                    d,16.
                                    d,32
                                    \f
                                    \>
                                    ~
                                    d,8
                                    ~
                                    d,32
                                    d,16.
                                    \mf
                                    ~
                                    d,8
                                    ~
                                    d,8
                                    ~
                                    d,8
                                    ~
                                    d,8
                                    ~
                                    d,8
                                    ~
                                    d,8
                                    ~
                                    d,8
                                    ~
                                    d,8
                                    ~
                                    d,8
                                    ~
                                    d,8
                                    ~
                                    d,8
                                    \<
                                    ~
                                    \afterGrace
                                    d,8
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        d,16
                                        \f
                                        \stopTextSpan
                                        \textSpannerUp
                                    }
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                }
                            }
                        }
                    >>
                }
            >>
        }
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}
