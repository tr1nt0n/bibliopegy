    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "1\'45\""  }
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "1\'46\""  }
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "1\'47\""  }
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "1\'48\""  }
            \noBreak
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "1\'49\""  }
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "1\'50\""  }
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "1\'51\""  }
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "1\'52\""  }
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "1\'53\""  }
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "1\'54\""  }
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "1\'55\""  }
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "1\'56\""  }
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
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { tape }
                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic"){ tp. }
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
                            \override NoteHead.stencil = #ly:text-interface::print
                            \override NoteHead.text = \markup \with-color "darksalmon" { γ }
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/16
                              %! +SCORE
                            \stopStaff \startStaff
                            \staff-line-count 2
                            \clef "percussion"
                            c'16
                              %! abjad.glissando(7)
                            - \tweak color #(css-color 'darksalmon)
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
                            c'16
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
                                c'16
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
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                              %! +SCORE
                            \once \override Rest.transparent = ##t
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { viola }
                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vla. }
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            \time 1/8
                            s1 * 1/8
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.glyph-name = "!" 
                              %! +SCORE
                            \once \override Staff.BarLine.hair-thickness = 1 
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                              %! +SCORE
                            \once \override Rest.transparent = ##t
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            s1 * 1/8
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.glyph-name = "!" 
                              %! +SCORE
                            \once \override Staff.BarLine.hair-thickness = 1 
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                              %! +SCORE
                            \once \override Rest.transparent = ##t
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            s1 * 1/8
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.glyph-name = "!" 
                              %! +SCORE
                            \once \override Staff.BarLine.hair-thickness = 1 
                            <<
                                \context Voice = "viola voice temp"
                                {
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 4 0))
                                    \times 4/5
                                    {
                                        \staff-line-count 1
                                        \boxed-markup "Styrofoam" 1
                                        \clef "varpercussion"
                                        \afterGrace
                                        c'8.
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "s mp"))
                                        [
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        \<
                                        ^ \markup {
                                          \raise #12 \with-dimensions-from \null
                                          \override #'(font-size . 4)
                                          \concat {
                                              \abjad-metronome-mark-markup #3 #0 #1 #"60"
                                          }
                                        }
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override Flag.stroke-style = #"grace"
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
                                            \once \override NoteHead.X-extent = #'(0 . 0)
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
                                        }
                                        \afterGrace
                                        c'8
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "s mf"))
                                        ]
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override Flag.stroke-style = #"grace"
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
                                            \once \override NoteHead.X-extent = #'(0 . 0)
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
                                        }
                                    }
                                    \staff-line-count 4
                                    \boxed-markup "Viola" 1
                                    \clef "varpercussion"
                                    <b d'>16.
                                    \p
                                    - \markup \with-color \三 \override #'(font-name . "Source Han Serif SC") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #1 \box { "三 on" }
                                    [
                                    - \tweak color #(css-color 'indianred)
                                    - \tweak padding #13.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \with-color "indianred" \center-column { \line { legno molto pont. } \line { crine dietro pont. } } \hspace #0.5 }
                                    \startTextSpanOne
                                    - \tweak color #darkred
                                    - \tweak padding #8.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 1 1 \hspace #0.5 } \hspace #0.5 }
                                    \startTextSpanTwo
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    \afterGrace
                                    <b d'>16.
                                    \stopTextSpanTwo
                                    ]
                                    - \tweak color #darkred
                                    - \tweak padding #8.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 0 1 \hspace #0.5 } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \with-color "darkred" \concat { \upright \fraction 1 1 \hspace #0.5 }
                                    \startTextSpanTwo
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override Beam.stencil = ##f
                                        \once \override Dots.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.duration-log = 2
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Stem.stencil = ##f
                                        \once \override Tie.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        \once \override Flag.stroke-style = #"grace"
                                        <b d'>16
                                        \!
                                        \stopTextSpanOne
                                        \stopTextSpanTwo
                                    }
                                    R1 * 1/16
                                }
                                \context Voice = "viola voice time signatures"
                                {
                                    \once \override Staff.BarLine.transparent = ##f
                                    \once \override Staff.TimeSignature.transparent = ##f
                                    \time 4/16
                                    \voiceTwo
                                    s1 * 1/4
                                    \once \override Staff.BarLine.transparent = ##f
                                    \once \override Staff.TimeSignature.transparent = ##f
                                    \time 6/32
                                    s1 * 3/16
                                    \once \override Staff.BarLine.transparent = ##f
                                    \once \override Staff.TimeSignature.transparent = ##f
                                    \time 1/16
                                    s1 * 1/16
                                }
                            >>
                            \oneVoice
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                              %! +SCORE
                            \once \override Rest.transparent = ##t
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            \time 1/8
                            s1 * 1/8
                            - \markup \with-color \三 \override #'(font-name . "Source Han Serif SC") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #1 \box { "三 off" }
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.glyph-name = "!" 
                              %! +SCORE
                            \once \override Staff.BarLine.hair-thickness = 1 
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                              %! +SCORE
                            \once \override Rest.transparent = ##t
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            s1 * 1/8
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.glyph-name = "!" 
                              %! +SCORE
                            \once \override Staff.BarLine.hair-thickness = 1 
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                              %! +SCORE
                            \once \override Rest.transparent = ##t
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            s1 * 1/8
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.glyph-name = "!" 
                              %! +SCORE
                            \once \override Staff.BarLine.hair-thickness = 1 
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                              %! +SCORE
                            \once \override Rest.transparent = ##t
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            s1 * 1/8
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.glyph-name = "!" 
                              %! +SCORE
                            \once \override Staff.BarLine.hair-thickness = 1 
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                              %! +SCORE
                            \once \override Rest.transparent = ##t
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            s1 * 1/8
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.glyph-name = "!" 
                              %! +SCORE
                            \once \override Staff.BarLine.hair-thickness = 1 
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
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { flute }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { fl. }
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
                                }
                            }
                        }
                        \tag #'voice4
                        {
                            \context UnmeteredStaff = "bassflute staff"
                            {
                                \context Voice = "bassflute voice"
                                {
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { bass flute }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { b. fl. }
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
                                }
                            }
                        }
                        \tag #'voice5
                        {
                            \context UnmeteredStaff = "violin staff"
                            {
                                \context Voice = "violin voice"
                                {
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { violin }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vln. }
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
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { bass clarinet }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic"){ b. cl. }
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
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        <<
                                            \context Voice = "On_Beat_Grace_Container"
                                            {
                                                  %! abjad.on_beat_grace_container(1)
                                                \set fontSize = #-3
                                                \tweak text #tuplet-number::calc-fraction-text
                                                \tweak edge-height #'(0.7 . 0)
                                                \times 1/1
                                                {
                                                      %! abjad.on_beat_grace_container(2)
                                                    \slash
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { violoncello i }
                                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vc. i }
                                                    \once \override NoteHead.transparent = ##t
                                                    \abjad-color-music #'darkred
                                                    \time 1/8
                                                    \voiceOne
                                                    b''8 * 5/12
                                                    - \tweak color #"darkmagenta"
                                                    - \downbow
                                                    _ \f
                                                    [
                                                      %! abjad.glissando(7)
                                                    - \abjad-zero-padding-glissando
                                                      %! abjad.glissando(7)
                                                    \glissando
                                                    - \tweak color #darkred
                                                    - \tweak padding #17
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 0 7 \hspace #0.5 } \hspace #0.5 }
                                                    - \tweak bound-details.right.text \markup \with-color "darkred" \concat { \upright \fraction 2 7 \hspace #0.5 }
                                                    \startTextSpan
                                                    - \tweak stencil #constante-hairpin
                                                    _ \<
                                                    - \tweak color #(css-color 'goldenrod)
                                                    - \tweak details.squiggle-Y-scale 0.9
                                                    - \tweak details.squiggle-initial-width 3
                                                    - \tweak details.squiggle-speed-factor 0.9
                                                    - \tweak thickness 3
                                                    \slow-fast-trill
                                                    \tweak edge-height #'(0.7 . 0)
                                                    \times 64/112
                                                    {
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
                                                        \afterGrace
                                                        b''64 * 35/6
                                                        - \tweak color #"darkmagenta"
                                                        - \upbow
                                                        \stopTextSpan
                                                        ]
                                                        - \tweak circled-tip ##t
                                                        _ \>
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
                                                            \!
                                                            \stopTrillSpan
                                                        }
                                                    }
                                                }
                                            }
                                            \context Voice = "cello 1 voice Anchor"
                                            {
                                                \staff-line-count 5
                                                \clef "treble"
                                                  %! abjad.on_beat_grace_container(4)
                                                \voiceTwo
                                                \tweak Accidental.stencil #ly:text-interface::print
                                                \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                                                b''!8
                                                ^ \markup \center-align { \concat { B\raise #0.5 { \teeny \flat } +41 } }
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
                                                \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                                                b''32
                                            }
                                        >>
                                        \afterGrace
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                                        b''!16.
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "p +"))
                                        ^ \markup \center-align { \concat { B\raise #0.5 { \teeny \flat } +41 } }
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        - \tweak color #"darkred" 
                                        - \tweak padding #11.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \with-color "darkred" { flaut. } \hspace #0.5 }
                                        \startTextSpan
                                        - \tweak color #(css-color 'goldenrod)
                                        - \tweak details.squiggle-Y-scale 0.6
                                        - \tweak details.squiggle-initial-width 0.4
                                        - \tweak details.squiggle-speed-factor -0.4
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
                                            \stopTextSpan
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
                                                    - \tweak padding #17
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 0 5 \hspace #0.5 } \hspace #0.5 }
                                                    \startTextSpan
                                                    - \tweak stencil #constante-hairpin
                                                    _ \<
                                                    - \tweak color #(css-color 'goldenrod)
                                                    - \tweak details.squiggle-Y-scale 0.9
                                                    - \tweak details.squiggle-initial-width 5
                                                    - \tweak details.squiggle-speed-factor 0.9
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
                                                    )
                                                    \stopTextSpan
                                                    - \tweak color #darkred
                                                    - \tweak padding #17
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 2 5 \hspace #0.5 } \hspace #0.5 }
                                                    \startTextSpan
                                                    \abjad-color-music #'darkred
                                                    b''16 * 1/2
                                                    - \tweak color #"darkmagenta"
                                                    - \upbow
                                                    \stopTextSpan
                                                    (
                                                    - \tweak color #darkred
                                                    - \tweak padding #17
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 3 5 \hspace #0.5 } \hspace #0.5 }
                                                    - \tweak bound-details.right.text \markup \with-color "darkred" \concat { \upright \fraction 1 5 \hspace #0.5 }
                                                    \startTextSpan
                                                    _ \>
                                                    \times 64/112
                                                    {
                                                        \abjad-color-music #'darkred
                                                        \afterGrace
                                                        b''64 * 7/2
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
                                                                _ #(make-dynamic-script (markup #:whiteout #:italic "mp +"))
                                                            \stopTrillSpan
                                                        }
                                                    }
                                                }
                                            }
                                            \context Voice = "cello 1 voice Anchor"
                                            {
                                                  %! abjad.on_beat_grace_container(4)
                                                \voiceTwo
                                                \tweak Accidental.stencil #ly:text-interface::print
                                                \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                                                b''!8
                                                ^ \markup \center-align { \concat { B\raise #0.5 { \teeny \flat } +41 } }
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
                                                \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                                                b''32
                                            }
                                        >>
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                                        b''!4
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "p +"))
                                        ^ \markup \center-align { \concat { B\raise #0.5 { \teeny \flat } +41 } }
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        - \tweak color #"darkred" 
                                        - \tweak padding #11.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \with-color "darkred" { flaut. } \hspace #0.5 }
                                        \startTextSpan
                                        ~
                                        - \tweak color #(css-color 'goldenrod)
                                        - \tweak details.squiggle-Y-scale 0.6
                                        - \tweak details.squiggle-initial-width 0.4
                                        - \tweak details.squiggle-speed-factor -0.4
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
                                        b''16.
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
                                            \stopTextSpan
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
                                                    b''32
                                                    - \tweak color #"darkmagenta"
                                                    - \upbow
                                                    _ \mp
                                                    [
                                                    (
                                                      %! abjad.glissando(7)
                                                    - \abjad-zero-padding-glissando
                                                      %! abjad.glissando(7)
                                                    \glissando
                                                    - \tweak color #darkred
                                                    - \tweak padding #17
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 7 7 \hspace #0.5 } \hspace #0.5 }
                                                    \startTextSpan
                                                    - \tweak color #(css-color 'goldenrod)
                                                    - \tweak details.squiggle-Y-scale 0.9
                                                    - \tweak details.squiggle-initial-width 5
                                                    - \tweak details.squiggle-speed-factor 0.9
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
                                                    b''16 * 1/2
                                                    _ \mf
                                                    \stopTextSpan
                                                    - \tweak color #darkred
                                                    - \tweak padding #17
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 6 7 \hspace #0.5 } \hspace #0.5 }
                                                    - \tweak bound-details.right.text \markup \with-color "darkred" \concat { \upright \fraction 5 7 \hspace #0.5 }
                                                    \startTextSpan
                                                    _ \<
                                                    \times 128/224
                                                    {
                                                        \abjad-color-music #'darkred
                                                        \afterGrace
                                                        b''64. * 7/3
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
                                                            _ \ff
                                                            \stopTrillSpan
                                                        }
                                                    }
                                                }
                                            }
                                            \context Voice = "cello 1 voice Anchor"
                                            {
                                                  %! abjad.on_beat_grace_container(4)
                                                \voiceTwo
                                                \tweak Accidental.stencil #ly:text-interface::print
                                                \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                                                b''!8
                                                ^ \markup \center-align { \concat { B\raise #0.5 { \teeny \flat } +41 } }
                                            }
                                        >>
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
                                    <<
                                        \context Voice = "On_Beat_Grace_Container"
                                        {
                                              %! abjad.on_beat_grace_container(1)
                                            \set fontSize = #-3
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak edge-height #'(0.7 . 0)
                                            \times 1/1
                                            {
                                                  %! abjad.on_beat_grace_container(2)
                                                \slash
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override NoteHead.transparent = ##t
                                                \abjad-color-music #'darkred
                                                \voiceOne
                                                b''8 * 11/28
                                                - \tweak color #"darkmagenta"
                                                - \upbow
                                                _ \fff
                                                [
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                - \tweak color #darkred
                                                - \tweak padding #16.5
                                                - \abjad-solid-line-with-arrow
                                                - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 5 7 \hspace #0.5 } \hspace #0.5 }
                                                \startTextSpan
                                                _ \>
                                                - \tweak color #(css-color 'goldenrod)
                                                - \tweak details.squiggle-Y-scale 0.9
                                                - \tweak details.squiggle-initial-width 0.1
                                                - \tweak details.squiggle-speed-factor -0.7
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
                                                b''32 * 11/7
                                                - \tweak color #"darkmagenta"
                                                - \downbow
                                                \stopTextSpan
                                                - \tweak color #darkred
                                                - \tweak padding #16.5
                                                - \abjad-solid-line-with-arrow
                                                - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 4 7 \hspace #0.5 } \hspace #0.5 }
                                                \startTextSpan
                                                \abjad-color-music #'darkred
                                                b''32 * 11/7
                                                - \tweak color #"darkmagenta"
                                                - \upbow
                                                \stopTextSpan
                                                - \tweak color #darkred
                                                - \tweak padding #16.5
                                                - \abjad-solid-line-with-arrow
                                                - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 6 7 \hspace #0.5 } \hspace #0.5 }
                                                \startTextSpan
                                                \abjad-color-music #'darkred
                                                b''16 * 11/14
                                                - \tweak color #"darkmagenta"
                                                - \downbow
                                                \stopTextSpan
                                                (
                                                - \tweak color #darkred
                                                - \tweak padding #16.5
                                                - \abjad-solid-line-with-arrow
                                                - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 0 7 \hspace #0.5 } \hspace #0.5 }
                                                \startTextSpan
                                                \abjad-color-music #'darkred
                                                b''32 * 11/7
                                                \stopTextSpan
                                                - \tweak color #darkred
                                                - \tweak padding #16.5
                                                - \abjad-solid-line-with-arrow
                                                - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 2 7 \hspace #0.5 } \hspace #0.5 }
                                                - \tweak bound-details.right.text \markup \with-color "darkred" \concat { \upright \fraction 3 7 \hspace #0.5 }
                                                \startTextSpan
                                                \abjad-color-music #'darkred
                                                \afterGrace
                                                b''16 * 11/14
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
                                                        _ #(make-dynamic-script (markup #:whiteout #:italic "pp +"))
                                                    \stopTrillSpan
                                                }
                                            }
                                        }
                                        \context Voice = "cello 1 voice Anchor"
                                        {
                                              %! abjad.on_beat_grace_container(4)
                                            \voiceTwo
                                            \tweak Accidental.stencil #ly:text-interface::print
                                            \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                                            b''!4
                                            ^ \markup \center-align { \concat { B\raise #0.5 { \teeny \flat } +41 } }
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
                                            \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                                            b''16.
                                        }
                                    >>
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                                    b''!8
                                    ^ \markup \center-align { \concat { B\raise #0.5 { \teeny \flat } +41 } }
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    ~
                                    - \tweak color #(css-color 'goldenrod)
                                    - \tweak details.squiggle-Y-scale 0.6
                                    - \tweak details.squiggle-initial-width 4
                                    - \tweak details.squiggle-speed-factor 0.3
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
                                        \stopTrillSpan
                                    }
                                }
                            }
                        }
                        \tag #'voice9
                        {
                            \context UnmeteredStaff = "cello 2 staff"
                            {
                                \context Voice = "cello 2 voice"
                                {
                                    \times 8/9
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
                                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { violoncello ii }
                                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vc. ii }
                                                    \once \override NoteHead.transparent = ##t
                                                    \abjad-color-music #'darkred
                                                    \time 1/8
                                                    \voiceOne
                                                    g''32
                                                    - \tweak color #"darkmagenta"
                                                    - \upbow
                                                    [
                                                      %! abjad.glissando(7)
                                                    - \abjad-zero-padding-glissando
                                                      %! abjad.glissando(7)
                                                    \glissando
                                                    - \tweak circled-tip ##t
                                                    _ \<
                                                    - \tweak color #darkred
                                                    - \tweak padding #16
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 4 5 \hspace #0.5 } \hspace #0.5 }
                                                    \startTextSpan
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
                                                    - \tweak color #"darkmagenta"
                                                    - \downbow
                                                    _ \ff
                                                    \stopTextSpan
                                                    (
                                                    - \tweak color #darkred
                                                    - \tweak padding #16
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 1 5 \hspace #0.5 } \hspace #0.5 }
                                                    \startTextSpan
                                                    - \tweak stencil #constante-hairpin
                                                    _ \<
                                                    \abjad-color-music #'darkred
                                                    g''32
                                                    )
                                                    \stopTextSpan
                                                    - \tweak color #darkred
                                                    - \tweak padding #16
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 2 5 \hspace #0.5 } \hspace #0.5 }
                                                    - \tweak bound-details.right.text \markup \with-color "darkred" \concat { \upright \fraction 3 5 \hspace #0.5 }
                                                    \startTextSpan
                                                    \times 64/72
                                                    {
                                                        \abjad-color-music #'darkred
                                                        \afterGrace
                                                        g''64 * 9/4
                                                        - \tweak color #"darkmagenta"
                                                        - \upbow
                                                        \stopTextSpan
                                                        ]
                                                        _ \>
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
                                                                _ #(make-dynamic-script (markup #:whiteout #:italic "p +"))
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
                                        \afterGrace
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                        g''!16.
                                        ^ \markup \center-align { \concat { A\raise #0.5 { \teeny \flat } -49 } }
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        - \tweak color #"darkred" 
                                        - \tweak padding #9
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \with-color "darkred" { flaut. } \hspace #0.5 }
                                        \startTextSpan
                                        - \tweak color #(css-color 'goldenrod)
                                        - \tweak details.squiggle-Y-scale 0.9
                                        - \tweak details.squiggle-initial-width 4
                                        - \tweak details.squiggle-speed-factor 0.6
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
                                            g''16
                                            \stopTextSpan
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
                                                    - \tweak padding #17.5
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 0 7 \hspace #0.5 } \hspace #0.5 }
                                                    - \tweak bound-details.right.text \markup \with-color "darkred" \concat { \upright \fraction 1 7 \hspace #0.5 }
                                                    \startTextSpan
                                                    - \tweak stencil #constante-hairpin
                                                    _ \<
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
                                                    )
                                                    \stopTextSpan
                                                    \times 256/288
                                                    {
                                                        \abjad-color-music #'darkred
                                                        g''32. * 15/16
                                                        - \tweak color #"darkmagenta"
                                                        - \downbow
                                                        _ \f
                                                        (
                                                        - \tweak color #darkred
                                                        - \tweak padding #17.5
                                                        - \abjad-solid-line-with-arrow
                                                        - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 0 5 \hspace #0.5 } \hspace #0.5 }
                                                        - \tweak bound-details.right.text \markup \with-color "darkred" \concat { \upright \fraction 1 5 \hspace #0.5 }
                                                        \startTextSpan
                                                        - \tweak stencil #constante-hairpin
                                                        _ \<
                                                        ~
                                                        \abjad-color-music #'darkred
                                                        \afterGrace
                                                        g''256 * 45/4
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
                                                            \!
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
                                        \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                        g''!4
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "p +"))
                                        ^ \markup \center-align { \concat { A\raise #0.5 { \teeny \flat } -49 } }
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        - \tweak color #"darkred" 
                                        - \tweak padding #9
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \with-color "darkred" { flaut. } \hspace #0.5 }
                                        \startTextSpan
                                        ~
                                        - \tweak color #(css-color 'goldenrod)
                                        - \tweak details.squiggle-Y-scale 0.9
                                        - \tweak details.squiggle-initial-width 4
                                        - \tweak details.squiggle-speed-factor 0.6
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
                                        \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                        g''16.
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
                                            g''16
                                            \stopTextSpan
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
                                                    - \upbow
                                                    [
                                                      %! abjad.glissando(7)
                                                    - \abjad-zero-padding-glissando
                                                      %! abjad.glissando(7)
                                                    \glissando
                                                    - \tweak color #darkred
                                                    - \tweak padding #16
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 7 7 \hspace #0.5 } \hspace #0.5 }
                                                    \startTextSpan
                                                    _ \<
                                                    - \tweak color #(css-color 'goldenrod)
                                                    - \tweak details.squiggle-Y-scale 0.9
                                                    - \tweak details.squiggle-initial-width 0.2
                                                    - \tweak details.squiggle-speed-factor -0.9
                                                    - \tweak thickness 3
                                                    \slow-fast-trill
                                                    \times 64/96
                                                    {
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
                                                        g''16 * 3/4
                                                        - \tweak color #"darkmagenta"
                                                        - \downbow
                                                        _ \ff
                                                        \stopTextSpan
                                                        (
                                                        - \tweak color #darkred
                                                        - \tweak padding #16
                                                        - \abjad-solid-line-with-arrow
                                                        - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 0 7 \hspace #0.5 } \hspace #0.5 }
                                                        - \tweak bound-details.right.text \markup \with-color "darkred" \concat { \upright \fraction 3 7 \hspace #0.5 }
                                                        \startTextSpan
                                                        - \tweak stencil #constante-hairpin
                                                        _ \<
                                                        ~
                                                        \abjad-color-music #'darkred
                                                        \afterGrace
                                                        g''64 * 3
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
                                                            \!
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
                                                g''!16.
                                                ^ \markup \center-align { \concat { A\raise #0.5 { \teeny \flat } -49 } }
                                            }
                                        >>
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
                                                g''32 * 11/8
                                                - \tweak color #"darkmagenta"
                                                - \downbow
                                                _ \fff
                                                [
                                                (
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                - \tweak color #darkred
                                                - \tweak padding #16
                                                - \abjad-solid-line-with-arrow
                                                - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 3 7 \hspace #0.5 } \hspace #0.5 }
                                                \startTextSpan
                                                _ \>
                                                - \tweak color #(css-color 'goldenrod)
                                                - \tweak details.squiggle-Y-scale 0.9
                                                - \tweak details.squiggle-initial-width 4
                                                - \tweak details.squiggle-speed-factor 0.5
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
                                                g''16 * 11/16
                                                \stopTextSpan
                                                - \tweak color #darkred
                                                - \tweak padding #16
                                                - \abjad-solid-line-with-arrow
                                                - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 4 7 \hspace #0.5 } \hspace #0.5 }
                                                - \tweak bound-details.right.text \markup \with-color "darkred" \concat { \upright \fraction 7 7 \hspace #0.5 }
                                                \startTextSpan
                                                \abjad-color-music #'darkred
                                                g''32 * 11/8
                                                )
                                                \stopTextSpan
                                                \abjad-color-music #'darkred
                                                g''8 * 11/32
                                                - \tweak color #"darkmagenta"
                                                - \downbow
                                                (
                                                - \tweak color #darkred
                                                - \tweak padding #16
                                                - \abjad-solid-line-with-arrow
                                                - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 0 5 \hspace #0.5 } \hspace #0.5 }
                                                \startTextSpan
                                                \abjad-color-music #'darkred
                                                g''32 * 11/8
                                                )
                                                \stopTextSpan
                                                - \tweak color #darkred
                                                - \tweak padding #16
                                                - \abjad-solid-line-with-arrow
                                                - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 1 5 \hspace #0.5 } \hspace #0.5 }
                                                \startTextSpan
                                                \abjad-color-music #'darkred
                                                g''32 * 11/8
                                                - \tweak color #"darkmagenta"
                                                - \upbow
                                                \stopTextSpan
                                                (
                                                - \tweak color #darkred
                                                - \tweak padding #16
                                                - \abjad-solid-line-with-arrow
                                                - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 3 5 \hspace #0.5 } \hspace #0.5 }
                                                - \tweak bound-details.right.text \markup \with-color "darkred" \concat { \upright \fraction 0 5 \hspace #0.5 }
                                                \startTextSpan
                                                \abjad-color-music #'darkred
                                                \afterGrace
                                                g''32 * 11/8
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
                                                        _ #(make-dynamic-script (markup #:whiteout #:italic "pp +"))
                                                    \stopTrillSpan
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
                                            g''!4
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
                                            g''16.
                                        }
                                    >>
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                    g''!8
                                    ^ \markup \center-align { \concat { A\raise #0.5 { \teeny \flat } -49 } }
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    ~
                                    - \tweak color #(css-color 'goldenrod)
                                    - \tweak details.squiggle-Y-scale 0.6
                                    - \tweak details.squiggle-initial-width 4
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
                                    \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                    g''32
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
                                        g''16
                                        \stopTrillSpan
                                    }
                                }
                            }
                        }
                        \tag #'voice10
                        {
                            \context UnmeteredStaff = "cello 3 staff"
                            {
                                \context Voice = "cello 3 voice"
                                {
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 24/25
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
                                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { violoncello iii }
                                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vc. iii }
                                                    \once \override NoteHead.transparent = ##t
                                                    \abjad-color-music #'darkred
                                                    \time 1/8
                                                    \voiceOne
                                                    e''32 * 5/3
                                                        _ #(make-dynamic-script (markup #:whiteout #:italic "ffp"))
                                                    - \tweak color #"darkmagenta"
                                                    - \upbow
                                                    [
                                                    (
                                                      %! abjad.glissando(7)
                                                    - \abjad-zero-padding-glissando
                                                      %! abjad.glissando(7)
                                                    \glissando
                                                    - \tweak color #darkred
                                                    - \tweak padding #15
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 4 4 \hspace #0.5 } \hspace #0.5 }
                                                    \startTextSpan
                                                    _ \<
                                                    - \tweak color #(css-color 'goldenrod)
                                                    - \tweak details.squiggle-Y-scale 0.9
                                                    - \tweak details.squiggle-initial-width 0.4
                                                    - \tweak details.squiggle-speed-factor -0.9
                                                    - \tweak thickness 3
                                                    \slow-fast-trill
                                                    \tweak edge-height #'(0.7 . 0)
                                                    \times 128/160
                                                    {
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
                                                        e''8 * 25/48
                                                        \stopTextSpan
                                                        - \tweak color #darkred
                                                        - \tweak padding #15
                                                        - \abjad-solid-line-with-arrow
                                                        - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 2 4 \hspace #0.5 } \hspace #0.5 }
                                                        - \tweak bound-details.right.text \markup \with-color "darkred" \concat { \upright \fraction 1 4 \hspace #0.5 }
                                                        \startTextSpan
                                                        ~
                                                        \abjad-color-music #'darkred
                                                        \afterGrace
                                                        e''64. * 25/9
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
                                                            e''16
                                                            _ \f
                                                            \stopTrillSpan
                                                        }
                                                    }
                                                }
                                            }
                                            \context Voice = "cello 3 voice Anchor"
                                            {
                                                \staff-line-count 5
                                                \clef "treble"
                                                \once \override NoteHead.X-extent = #'(0.5 . 0)
                                                  %! abjad.on_beat_grace_container(4)
                                                \voiceTwo
                                                \tweak Accidental.stencil #ly:text-interface::print
                                                \tweak Accidental.text \markup { \abjad-natural  }
                                                e''!8
                                                ^ \markup \center-align { \concat { +4 } }
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
                                                \tweak Accidental.text \markup { \abjad-natural  }
                                                e''32
                                            }
                                        >>
                                        \afterGrace
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        e''!16.
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "sp +"))
                                        ^ \markup \center-align { \concat { +4 } }
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        - \tweak color #"darkred" 
                                        - \tweak padding #9
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \with-color "darkred" { flaut. } \hspace #0.5 }
                                        \startTextSpan
                                        - \tweak color #(css-color 'goldenrod)
                                        - \tweak details.squiggle-Y-scale 0.9
                                        - \tweak details.squiggle-initial-width 4
                                        - \tweak details.squiggle-speed-factor 0
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
                                            \stopTextSpan
                                            \stopTrillSpan
                                        }
                                        <<
                                            \context Voice = "On_Beat_Grace_Container"
                                            {
                                                  %! abjad.on_beat_grace_container(1)
                                                \set fontSize = #-3
                                                \tweak text #tuplet-number::calc-fraction-text
                                                \tweak edge-height #'(0.7 . 0)
                                                \times 1/1
                                                {
                                                      %! abjad.on_beat_grace_container(2)
                                                    \slash
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override NoteHead.transparent = ##t
                                                    \abjad-color-music #'darkred
                                                    \voiceOne
                                                    e''8 * 5/12
                                                    - \tweak color #"darkmagenta"
                                                    - \downbow
                                                    _ \f
                                                    [
                                                    (
                                                      %! abjad.glissando(7)
                                                    - \abjad-zero-padding-glissando
                                                      %! abjad.glissando(7)
                                                    \glissando
                                                    - \tweak color #darkred
                                                    - \tweak padding #14.5
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 0 5 \hspace #0.5 } \hspace #0.5 }
                                                    - \tweak bound-details.right.text \markup \with-color "darkred" \concat { \upright \fraction 3 5 \hspace #0.5 }
                                                    \startTextSpan
                                                    - \tweak stencil #constante-hairpin
                                                    _ \<
                                                    - \tweak color #(css-color 'goldenrod)
                                                    - \tweak details.squiggle-Y-scale 0.9
                                                    - \tweak details.squiggle-initial-width 0.4
                                                    - \tweak details.squiggle-speed-factor -0.9
                                                    - \tweak thickness 3
                                                    \slow-fast-trill
                                                    \tweak edge-height #'(0.7 . 0)
                                                    \times 32/40
                                                    {
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
                                                        \afterGrace
                                                        e''32 * 25/12
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
                                                            e''16
                                                            \!
                                                            \stopTrillSpan
                                                        }
                                                    }
                                                }
                                            }
                                            \context Voice = "cello 3 voice Anchor"
                                            {
                                                \once \override NoteHead.X-extent = #'(0.5 . 0)
                                                  %! abjad.on_beat_grace_container(4)
                                                \voiceTwo
                                                \tweak Accidental.stencil #ly:text-interface::print
                                                \tweak Accidental.text \markup { \abjad-natural  }
                                                e''!8
                                                ^ \markup \center-align { \concat { +4 } }
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
                                                \tweak Accidental.text \markup { \abjad-natural  }
                                                e''32
                                            }
                                        >>
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        e''!4
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "sp +"))
                                        ^ \markup \center-align { \concat { +4 } }
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        - \tweak color #"darkred" 
                                        - \tweak padding #9
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \with-color "darkred" { flaut. } \hspace #0.5 }
                                        \startTextSpan
                                        ~
                                        - \tweak color #(css-color 'goldenrod)
                                        - \tweak details.squiggle-Y-scale 0.9
                                        - \tweak details.squiggle-initial-width 9
                                        - \tweak details.squiggle-speed-factor 0.9
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
                                        e''16
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
                                            \stopTextSpan
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
                                                    e''32 * 2/3
                                                    - \tweak color #"darkmagenta"
                                                    - \downbow
                                                    _ \f
                                                    [
                                                    (
                                                      %! abjad.glissando(7)
                                                    - \abjad-zero-padding-glissando
                                                      %! abjad.glissando(7)
                                                    \glissando
                                                    - \tweak circled-tip ##t
                                                    - \tweak stencil #abjad-flared-hairpin
                                                    _ \>
                                                    - \tweak color #darkred
                                                    - \tweak padding #16.5
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 0 1 \hspace #0.5 } \hspace #0.5 }
                                                    \startTextSpan
                                                    - \tweak color #(css-color 'goldenrod)
                                                    - \tweak details.squiggle-Y-scale 0.9
                                                    - \tweak details.squiggle-initial-width 0.4
                                                    - \tweak details.squiggle-speed-factor -0.9
                                                    - \tweak thickness 3
                                                    \slow-fast-trill
                                                    \tweak edge-height #'(0.7 . 0)
                                                    \times 512/800
                                                    {
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
                                                        e''32 * 25/24
                                                        - \tweak color #"darkmagenta"
                                                        - \upbow
                                                        _ \ff
                                                        \stopTextSpan
                                                        - \tweak circled-tip ##t
                                                        - \tweak stencil #abjad-flared-hairpin
                                                        _ \>
                                                        - \tweak color #darkred
                                                        - \tweak padding #16.5
                                                        - \abjad-solid-line-with-arrow
                                                        - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 1 1 \hspace #0.5 } \hspace #0.5 }
                                                        - \tweak bound-details.right.text \markup \with-color "darkred" \concat { \upright \fraction 0 1 \hspace #0.5 }
                                                        \startTextSpan
                                                        ~
                                                        \abjad-color-music #'darkred
                                                        \afterGrace
                                                        e''128.. * 50/21
                                                        - \tweak color #"darkmagenta"
                                                        - \downbow
                                                        _ \fff
                                                        )
                                                        \stopTextSpan
                                                        ]
                                                        - \tweak circled-tip ##t
                                                        - \tweak stencil #abjad-flared-hairpin
                                                        _ \>
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
                                                            e''16
                                                            \!
                                                            \stopTrillSpan
                                                        }
                                                    }
                                                }
                                            }
                                            \context Voice = "cello 3 voice Anchor"
                                            {
                                                \once \override NoteHead.X-extent = #'(0.5 . 0)
                                                  %! abjad.on_beat_grace_container(4)
                                                \voiceTwo
                                                \tweak Accidental.stencil #ly:text-interface::print
                                                \tweak Accidental.text \markup { \abjad-natural  }
                                                e''!16
                                                ^ \markup \center-align { \concat { +4 } }
                                            }
                                        >>
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
                                                e''16 * 11/16
                                                - \tweak color #"darkmagenta"
                                                - \downbow
                                                _ \fff
                                                [
                                                (
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                - \tweak color #darkred
                                                - \tweak padding #15
                                                - \abjad-solid-line-with-arrow
                                                - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 0 9 \hspace #0.5 } \hspace #0.5 }
                                                \startTextSpan
                                                _ \>
                                                - \tweak color #(css-color 'goldenrod)
                                                - \tweak details.squiggle-Y-scale 0.9
                                                - \tweak details.squiggle-initial-width 4
                                                - \tweak details.squiggle-speed-factor -0.3
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
                                                e''32 * 11/8
                                                \stopTextSpan
                                                - \tweak color #darkred
                                                - \tweak padding #15
                                                - \abjad-solid-line-with-arrow
                                                - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 1 9 \hspace #0.5 } \hspace #0.5 }
                                                \startTextSpan
                                                \abjad-color-music #'darkred
                                                e''16 * 11/16
                                                \stopTextSpan
                                                - \tweak color #darkred
                                                - \tweak padding #15
                                                - \abjad-solid-line-with-arrow
                                                - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 2 9 \hspace #0.5 } \hspace #0.5 }
                                                \startTextSpan
                                                \abjad-color-music #'darkred
                                                e''32 * 11/8
                                                \stopTextSpan
                                                - \tweak color #darkred
                                                - \tweak padding #15
                                                - \abjad-solid-line-with-arrow
                                                - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 3 9 \hspace #0.5 } \hspace #0.5 }
                                                \startTextSpan
                                                \abjad-color-music #'darkred
                                                e''16 * 11/16
                                                \stopTextSpan
                                                - \tweak color #darkred
                                                - \tweak padding #15
                                                - \abjad-solid-line-with-arrow
                                                - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 4 9 \hspace #0.5 } \hspace #0.5 }
                                                \startTextSpan
                                                \abjad-color-music #'darkred
                                                e''32 * 11/8
                                                \stopTextSpan
                                                - \tweak color #darkred
                                                - \tweak padding #15
                                                - \abjad-solid-line-with-arrow
                                                - \tweak bound-details.left.text \markup \concat { \with-color "darkred" \concat { \upright \fraction 5 9 \hspace #0.5 } \hspace #0.5 }
                                                - \tweak bound-details.right.text \markup \with-color "darkred" \concat { \upright \fraction 6 9 \hspace #0.5 }
                                                \startTextSpan
                                                \abjad-color-music #'darkred
                                                \afterGrace
                                                e''16 * 11/16
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
                                                    e''16
                                                        _ #(make-dynamic-script (markup #:whiteout #:italic "pp +"))
                                                    \stopTrillSpan
                                                }
                                            }
                                        }
                                        \context Voice = "cello 3 voice Anchor"
                                        {
                                            \once \override NoteHead.X-extent = #'(0.5 . 0)
                                              %! abjad.on_beat_grace_container(4)
                                            \voiceTwo
                                            \tweak Accidental.stencil #ly:text-interface::print
                                            \tweak Accidental.text \markup { \abjad-natural  }
                                            e''!4
                                            ^ \markup \center-align { \concat { +4 } }
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
                                            \tweak Accidental.text \markup { \abjad-natural  }
                                            e''16.
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
                                    ~
                                    - \tweak color #(css-color 'goldenrod)
                                    - \tweak details.squiggle-Y-scale 0.6
                                    - \tweak details.squiggle-initial-width 4
                                    - \tweak details.squiggle-speed-factor 0.6
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
                                        \stopTrillSpan
                                    }
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
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { tenor trombone }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { t. tbn. }
                                    \time 1/8
                                    \afterGrace
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
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "mf"))
                                    }
                                    r32
                                    \times 4/5
                                    {
                                        r32
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
                                    a8
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
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "mf +"))
                                    }
                                    \times 2/3
                                    {
                                        r8
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
                                    a32
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
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "mf"))
                                    }
                                    r16.
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
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "mf +"))
                                        \stopTextSpan
                                    }
                                    r32
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
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "mf +"))
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
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "f"))
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
                                                _ #(make-dynamic-script (markup #:whiteout #:italic "mf"))
                                            \stopTextSpan
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
                                    \times 4/5
                                    {
                                        \afterGrace
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
                                            d16
                                                _ #(make-dynamic-script (markup #:whiteout #:italic "mf"))
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
                                                _ #(make-dynamic-script (markup #:whiteout #:italic "mf +"))
                                        }
                                        r16.
                                    }
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
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "mf"))
                                    }
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
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "mf +"))
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
                                                _ #(make-dynamic-script (markup #:whiteout #:italic "mf +"))
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
                                                _ #(make-dynamic-script (markup #:whiteout #:italic "f"))
                                        }
                                        r16
                                    }
                                    r32
                                    \afterGrace
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
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "mf"))
                                        \stopTextSpan
                                    }
                                }
                            }
                        }
                        \tag #'voice13
                        {
                            \context UnmeteredStaff = "percussion 2 staff"
                            {
                                \context Voice = "percussion 2 voice"
                                {
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { percussion ii }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { perc. ii }
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
                                }
                            }
                        }
                    >>
                }
            >>
        }
    >>
  %! abjad.LilyPondFile._get_format_pieces()
