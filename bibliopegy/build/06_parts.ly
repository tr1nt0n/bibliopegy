    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
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
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "2\'1\""  }
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
                            \override Staff.Clef.stencil = ##f
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { tape }
                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic"){ tp. }
                            \clef "percussion"
                            \time 1/8
                            b1
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
                        %%% \once \override Staff.BarLine.transparent = ##f
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { viola }
                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vla. }
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                            \time 1/8
                            R1 * 1/8
                              %! +SCORE
                        %%% \stopStaff \startStaff
                              %! +SCORE
                        %%% \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/8
                              %! +SCORE
                        %%% \stopStaff \startStaff
                              %! +SCORE
                        %%% \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/8
                              %! +SCORE
                        %%% \stopStaff \startStaff
                              %! +SCORE
                        %%% \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/8
                              %! +SCORE
                        %%% \stopStaff \startStaff
                              %! +SCORE
                        %%% \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/8
                              %! +SCORE
                        %%% \stopStaff \startStaff
                              %! +SCORE
                        %%% \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/8
                              %! +SCORE
                        %%% \stopStaff \startStaff
                              %! +SCORE
                        %%% \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/8
                              %! +SCORE
                        %%% \stopStaff \startStaff
                              %! +SCORE
                        %%% \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/8
                              %! +SCORE
                        %%% \stopStaff \startStaff
                              %! +SCORE
                        %%% \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/8
                              %! +SCORE
                        %%% \stopStaff \startStaff
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
                                %%% \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { flute }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { fl. }
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    \time 1/8
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                    \staff-line-count 1
                                    \override Staff.BarLine.bar-extent = #'(-0.01 . 0.01)
                                    \clef "varpercussion"
                                    c'8
                                    \ff
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
                                    c'8
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
                                        \!
                                    }
                                    r16.
                                    c'32
                                    \mp
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
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
                                    c'8
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
                                        \!
                                    }
                                    r32
                                    \once \override TextScript.whiteout = ##f
                                    c'32
                                    - \accent
                                    - \staccato
                                    \mf
                                    - \markup \with-color #darkred { "p" } 
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    \once \override TextScript.whiteout = ##f
                                    c'16
                                    - \staccato
                                    - \markup \with-color #darkred { "p" } 
                                    \once \override TextScript.whiteout = ##f
                                    c'32
                                    - \marcato
                                    - \staccato
                                    \!
                                    - \markup \with-color #darkred { "θp" } 
                                    r32
                                    \afterGrace
                                    c'16
                                    \f
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
                                        c'16
                                        \!
                                        \stopTextSpan
                                    }
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
                                %%% \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { bass flute }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { b. fl. }
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    \time 1/8
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                    r32
                                    \staff-line-count 1
                                    \override Staff.BarLine.bar-extent = #'(-0.01 . 0.01)
                                    \clef "varpercussion"
                                    c'16.
                                    \ff
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
                                    ~
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    c'8
                                    ~
                                    c'8
                                    ~
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
                                        \!
                                    }
                                    r16
                                    r16
                                    \once \override TextScript.whiteout = ##f
                                    c'32
                                    \mp
                                    ^ \marcato
                                    ^ \staccato
                                    - \markup \with-color #darkred { "θp" } 
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    \once \override TextScript.whiteout = ##f
                                    c'32
                                    ^ \staccato
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
                                        ^ \accent
                                        ^ \staccato
                                        ^ \tenuto
                                        - \markup \with-color #darkred { "p" } 
                                    }
                                    \once \override TextScript.whiteout = ##f
                                    c'32
                                    \!
                                    ^ \accent
                                    ^ \staccato
                                    - \markup \with-color #darkred { "p" } 
                                    r32
                                    \afterGrace
                                    c'16.
                                    \mf
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
                                        c'16
                                        \!
                                    }
                                    r32
                                    \afterGrace
                                    c'32
                                    \f
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
                                        c'16
                                        \!
                                    }
                                    r32
                                    \afterGrace
                                    c'32
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
                                        c'16
                                        \!
                                        \stopTextSpan
                                    }
                                }
                            }
                        }
                        \tag #'voice5
                        {
                            \context UnmeteredStaff = "violin staff"
                            {
                                \context Voice = "violin voice"
                                {
                                    \fancy-gliss
                                       #'(
                                          (0 0 0.5 5 1 0)
                                          (1 0 1.5 -5 2 0)
                                          (2 0 2.5 5 3 0)
                                          (3 0 3.5 -5 4 0)
                                          (4 0 4.5 5 5 0)
                                          (5 0 5.5 -5 6 0)
                                          (6 0 6.5 5 7 0)
                                          (7 0 7.5 -5 8 0)
                                          (8 0 8.5 5 9 0)
                                          (9 0 9.5 -5 10 0)
                                          (10 0 10.5 5 11 0)
                                          (11 0 11.5 -5 12 0)
                                          (12 0 12.5 5 13 0)
                                          (13 0 13.5 -5 14 0)
                                          (14 0 14.5 5 15 0)
                                          (15 0 15.5 -5 16 0)
                                          (16 0 16.5 5 17 0)
                                          (17 0 17.5 -5 18 0)
                                          (18 0 18.5 5 19 0)
                                          (19 0 19.5 -5 20 0)
                                          (20 0 20.5 5 21 0)
                                          (21 0 21.5 -5 22 0)
                                          (22 0 22.5 5 23 0)
                                          (23 0 23.5 -5 24 0)
                                          (24 0 24.5 5 25 0)
                                          (25 0 25.5 -5 26 0)
                                          (26 0 26.5 5 27 0)
                                          (27 0 27.5 -5 28 0)
                                          (28 0 28.5 5 29 0)
                                          (29 0 29.5 -5 30 0)
                                          (30 0 30.5 5 31 0)
                                          (31 0 31.5 -5 32 0)
                                          (32 0 32.5 5 33 0)
                                          (33 0 33.5 -5 34 0)
                                          (34 0 34.5 5 35 0)
                                          (35 0 35.5 -5 36 0)
                                          (36 0 36.5 5 37 0)
                                          (37 0 37.5 -5 38 0)
                                          (38 0 38.5 5 39 0)
                                          (39 0 39.5 -5 40 0)
                                          (40 0 40.5 5 41 0)
                                          (41 0 41.5 -5 42 0)
                                          (42 0 42.5 5 43 0)
                                          (43 0 43.5 -5 44 0)
                                          (44 0 44.5 5 45 0)
                                          (45 0 45.5 -5 46 0)
                                          (46 0 46.5 5 47 0)
                                          (47 0 47.5 -5 48 0)
                                          (48 0 48.5 5 49 0)
                                          (49 0 49.5 -5 50 0)
                                          (50 0 50.5 5 51 0)
                                          (51 0 51.5 -5 52 0)
                                          (52 0 52.5 5 53 0)
                                          (53 0 53.5 -5 54 0)
                                          (54 0 54.5 5 55 0)
                                          (55 0 55.5 -5 56 0)
                                          (56 0 56.5 5 57 0)
                                          (57 0 57.5 -5 58 0)
                                          (58 0 58.5 5 59 0)
                                          (59 0 59.5 -5 60 0)
                                          (60 0 60.5 5 61 0)
                                          (61 0 61.5 -5 62 0)
                                          (62 0 62.5 5 63 0)
                                          (63 0 63.5 -5 64 0)
                                          (64 0 64.5 5 65 0)
                                          (65 0 65.5 -5 66 0)
                                          (66 0 66.5 5 67 0)
                                          (67 0 67.5 -5 68 0)
                                          (68 0 68.5 5 69 0)
                                          (69 0 69.5 -5 70 0)
                                          (70 0 70.5 5 71 0)
                                          (71 0 71.5 -5 72 0)
                                          (72 0 72.5 5 73 0)
                                          (73 0 73.5 -5 74 0)
                                          (74 0 74.5 5 75 0)
                                          (75 0 75.5 -5 76 0)
                                          (76 0 76.5 5 77 0)
                                          (77 0 77.5 -5 78 0)
                                          (78 0 78.5 5 79 0)
                                          (79 0 79.5 -5 80 0)
                                          (80 0 80.5 5 81 0)
                                          (81 0 81.5 -5 82 0)
                                          (82 0 82.5 5 83 0)
                                          (83 0 83.5 -5 84 0)
                                          (84 0 84.5 5 85 0)
                                          (85 0 85.5 -5 86 0)
                                          (86 0 86.5 5 87 0)
                                          (87 0 87.5 -5 88 0)
                                     )
                                     #-6
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { violin }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vln. }
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \time 1/8
                                    c'''8
                                    \ff
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak color #darkred
                                    - \tweak padding #8.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" { { \fraction 3 4 } \hspace #0.5 { scratch } } \hspace #0.5 }
                                    \startTextSpan
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    ~
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    c'''8
                                    ~
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    c'''8
                                    ~
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    c'''8
                                    ~
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \afterGrace
                                    c'''16
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                        \once \override NoteHead.transparent = ##t
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        c'''16
                                        \!
                                    }
                                    r16
                                    \stopTextSpan
                                    r16
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
                                          (20 0 20.5 3 21 0)
                                          (21 0 21.5 -3 22 0)
                                          (22 0 22.5 3 23 0)
                                          (23 0 23.5 -3 24 0)
                                          (24 0 24.5 3 25 0)
                                          (25 0 25.5 -3 26 0)
                                          (26 0 26.5 3 27 0)
                                          (27 0 27.5 -3 28 0)
                                          (28 0 28.5 0.5 29 0)
                                          (29 0 29.5 -0.5 30 0)
                                          (30 0 30.5 0.5 31 0)
                                          (31 0 31.5 -0.5 32 0)
                                          (32 0 32.5 0.5 33 0)
                                          (33 0 33.5 -0.5 34 0)
                                          (34 0 34.5 0.5 35 0)
                                          (35 0 35.5 -0.5 36 0)
                                          (36 0 36.5 0.5 37 0)
                                          (37 0 37.5 -0.5 38 0)
                                          (38 0 38.5 0.5 39 0)
                                          (39 0 39.5 -0.5 40 0)
                                          (40 0 40.5 0.5 41 0)
                                          (41 0 41.5 -0.5 42 0)
                                          (42 0 42.5 0.5 43 0)
                                          (43 0 43.5 -0.5 44 0)
                                          (44 0 44.5 0.5 45 0)
                                          (45 0 45.5 -0.5 46 0)
                                          (46 0 46.5 0.5 47 0)
                                          (47 0 47.5 -0.5 48 0)
                                     )
                                     #-6
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    c'''16
                                    \mp
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak color #darkred
                                    - \tweak padding #8.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" { scratch } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \with-color "darkred" { { \fraction 3 4 } \hspace #0.5 { scratch } }
                                    - \tweak bound-details.right.padding 10
                                    \startTextSpan
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    ~
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \afterGrace
                                    c'''8
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                        \once \override NoteHead.transparent = ##t
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        c'''16
                                        \!
                                        \stopTextSpan
                                    }
                                    r32
                                    \fancy-gliss
                                       #'(
                                          (0 0 0.5 1 1 0)
                                          (1 0 1.5 -1 2 0)
                                          (2 0 2.5 1 3 0)
                                          (3 0 3.5 -1 4 0)
                                          (4 0 4.5 1 5 0)
                                          (5 0 5.5 -1 6 0)
                                          (6 0 6.5 1 7 0)
                                          (7 0 7.5 -1 8 0)
                                          (8 0 8.5 1 9 0)
                                          (9 0 9.5 -1 10 0)
                                          (10 0 10.5 4.5 11 0)
                                          (11 0 11.5 -4.5 12 0)
                                          (12 0 12.5 4.5 13 0)
                                          (13 0 13.5 -4.5 14 0)
                                          (14 0 14.5 4.5 15 0)
                                          (15 0 15.5 -4.5 16 0)
                                          (16 0 16.5 1 17 0)
                                          (17 0 17.5 -1 18 0)
                                          (18 0 18.5 1 19 0)
                                          (19 0 19.5 -1 20 0)
                                          (20 0 20.5 1 21 0)
                                          (21 0 21.5 -1 22 0)
                                          (22 0 22.5 1 23 0)
                                          (23 0 23.5 -1 24 0)
                                          (24 0 24.5 1 25 0)
                                          (25 0 25.5 -1 26 0)
                                     )
                                     #-6
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \afterGrace
                                    c'''16.
                                    \mf
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak color #darkred
                                    - \tweak padding #8.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" { scratch } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \with-color "darkred" { { \fraction 2 3 } \hspace #0.5 { scratch } }
                                    - \tweak bound-details.right.padding 3
                                    \startTextSpan
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        c'''16
                                        \!
                                        \stopTextSpan
                                    }
                                    r32
                                    \fancy-gliss
                                       #'(
                                          (0 0 0.5 5 1 0)
                                          (1 0 1.5 -5 2 0)
                                          (2 0 2.5 5 3 0)
                                          (3 0 3.5 -5 4 0)
                                          (4 0 4.5 5 5 0)
                                          (5 0 5.5 -5 6 0)
                                     )
                                     #-6
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                    \once \override Staff.TextScript.whiteout = ##f
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \afterGrace
                                    c'''32
                                    \f
                                    ^ \markup \with-color "darkred" { { \fraction 3 4 } \hspace #0.5 { scratch } }
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        c'''16
                                        \!
                                    }
                                    r32
                                    \fancy-gliss
                                       #'(
                                          (0 0 0.5 5.5 1 0)
                                          (1 0 1.5 -5.5 2 0)
                                          (2 0 2.5 5.5 3 0)
                                          (3 0 3.5 -5.5 4 0)
                                          (4 0 4.5 5.5 5 0)
                                          (5 0 5.5 -5.5 6 0)
                                     )
                                     #-6
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                    \once \override Staff.TextScript.whiteout = ##f
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \afterGrace
                                    c'''32
                                    \ff
                                    ^ \markup \with-color "darkred" { { \fraction 1 2 } \hspace #0.5 { scratch } }
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        c'''16
                                        \!
                                    }
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
                                    f8
                                    \mf
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
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
                                    f8
                                    ~
                                    \afterGrace
                                    f16.
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
                                    eqs32
                                    \ppp
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
                                        \mf
                                    }
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
                                %%% \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { percussion i }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { perc. i }
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    \time 1/8
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
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
                                %%% \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { violoncello i }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vc. i }
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    \time 1/8
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
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
                                %%% \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { violoncello ii }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vc. ii }
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    \time 1/8
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice10
                        {
                            \context UnmeteredStaff = "cello 3 staff"
                            {
                                \context Voice = "cello 3 voice"
                                {
                                    \fancy-gliss
                                       #'(
                                          (0 0 0.5 0.5 1 0)
                                          (1 0 1.5 -0.5 2 0)
                                          (2 0 2.5 0.5 3 0)
                                          (3 0 3.5 -0.5 4 0)
                                          (4 0 4.5 1.5 5 0)
                                          (5 0 5.5 -1.5 6 0)
                                          (6 0 6.5 0.5 7 0)
                                          (7 0 7.5 -0.5 8 0)
                                          (8 0 8.5 0.5 9 0)
                                          (9 0 9.5 -0.5 10 0)
                                          (10 0 10.5 1.5 11 0)
                                          (11 0 11.5 -1.5 12 0)
                                          (12 0 12.5 0.5 13 0)
                                          (13 0 13.5 -0.5 14 0)
                                          (14 0 14.5 0.5 15 0)
                                          (15 0 15.5 -0.5 16 0)
                                          (16 0 16.5 1.5 17 0)
                                          (17 0 17.5 -1.5 18 0)
                                          (18 0 18.5 0.5 19 0)
                                          (19 0 19.5 -0.5 20 0)
                                          (20 0 20.5 0.5 21 0)
                                          (21 0 21.5 -0.5 22 0)
                                          (22 0 22.5 1.5 23 0)
                                          (23 0 23.5 -1.5 24 0)
                                          (24 0 24.5 0.5 25 0)
                                          (25 0 25.5 -0.5 26 0)
                                          (26 0 26.5 0.5 27 0)
                                          (27 0 27.5 -0.5 28 0)
                                          (28 0 28.5 1.5 29 0)
                                          (29 0 29.5 -1.5 30 0)
                                          (30 0 30.5 0.5 31 0)
                                          (31 0 31.5 -0.5 32 0)
                                          (32 0 32.5 0.5 33 0)
                                          (33 0 33.5 -0.5 34 0)
                                          (34 0 34.5 1.5 35 0)
                                          (35 0 35.5 -1.5 36 0)
                                          (36 0 36.5 0.5 37 0)
                                          (37 0 37.5 -0.5 38 0)
                                          (38 0 38.5 0.5 39 0)
                                          (39 0 39.5 -0.5 40 0)
                                     )
                                     #-6
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { violoncello iii }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vc. iii }
                                    \clef "bass"
                                    \time 1/8
                                    d,8
                                    \p
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
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
                                    d,8
                                    ~
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
                                    }
                                    \fancy-gliss
                                       #'(
                                          (0 0 0.5 5 1 0)
                                          (1 0 1.5 -5 2 0)
                                          (2 0 2.5 2 3 0)
                                          (3 0 3.5 -2 4 0)
                                          (4 0 4.5 1 5 0)
                                          (5 0 5.5 -1 6 0)
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
                                          (24 0 24.5 0.5 25 0)
                                          (25 0 25.5 -0.5 26 0)
                                          (26 0 26.5 0.5 27 0)
                                          (27 0 27.5 -0.5 28 0)
                                          (28 0 28.5 0.5 29 0)
                                          (29 0 29.5 -0.5 30 0)
                                          (30 0 30.5 0.5 31 0)
                                          (31 0 31.5 -0.5 32 0)
                                          (32 0 32.5 0.5 33 0)
                                          (33 0 33.5 -0.5 34 0)
                                          (34 0 34.5 0.5 35 0)
                                          (35 0 35.5 -0.5 36 0)
                                          (36 0 36.5 0.5 37 0)
                                          (37 0 37.5 -0.5 38 0)
                                          (38 0 38.5 0.5 39 0)
                                          (39 0 39.5 -0.5 40 0)
                                          (40 0 40.5 0.5 41 0)
                                          (41 0 41.5 -0.5 42 0)
                                          (42 0 42.5 0.5 43 0)
                                          (43 0 43.5 -0.5 44 0)
                                          (44 0 44.5 0.5 45 0)
                                          (45 0 45.5 -0.5 46 0)
                                          (46 0 46.5 0.5 47 0)
                                          (47 0 47.5 -0.5 48 0)
                                          (48 0 48.5 0.5 49 0)
                                          (49 0 49.5 -0.5 50 0)
                                          (50 0 50.5 0.5 51 0)
                                          (51 0 51.5 -0.5 52 0)
                                          (52 0 52.5 0.5 53 0)
                                          (53 0 53.5 -0.5 54 0)
                                          (54 0 54.5 0.5 55 0)
                                          (55 0 55.5 -0.5 56 0)
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
                                          (66 0 66.5 0.5 67 0)
                                          (67 0 67.5 -0.5 68 0)
                                          (68 0 68.5 0.5 69 0)
                                          (69 0 69.5 -0.5 70 0)
                                          (70 0 70.5 0.5 71 0)
                                          (71 0 71.5 -0.5 72 0)
                                          (72 0 72.5 0.5 73 0)
                                          (73 0 73.5 -0.5 74 0)
                                          (74 0 74.5 0.5 75 0)
                                          (75 0 75.5 -0.5 76 0)
                                          (76 0 76.5 0.5 77 0)
                                          (77 0 77.5 -0.5 78 0)
                                          (78 0 78.5 0.5 79 0)
                                          (79 0 79.5 -0.5 80 0)
                                          (80 0 80.5 0.5 81 0)
                                          (81 0 81.5 -0.5 82 0)
                                          (82 0 82.5 0.5 83 0)
                                          (83 0 83.5 -0.5 84 0)
                                          (84 0 84.5 0.5 85 0)
                                          (85 0 85.5 -0.5 86 0)
                                          (86 0 86.5 0.5 87 0)
                                          (87 0 87.5 -0.5 88 0)
                                          (88 0 88.5 0.5 89 0)
                                          (89 0 89.5 -0.5 90 0)
                                          (90 0 90.5 0.5 91 0)
                                          (91 0 91.5 -0.5 92 0)
                                          (92 0 92.5 0.5 93 0)
                                          (93 0 93.5 -0.5 94 0)
                                          (94 0 94.5 0.5 95 0)
                                          (95 0 95.5 -0.5 96 0)
                                          (96 0 96.5 0.5 97 0)
                                          (97 0 97.5 -0.5 98 0)
                                          (98 0 98.5 0.5 99 0)
                                          (99 0 99.5 -0.5 100 0)
                                          (100 0 100.5 0.5 101 0)
                                          (101 0 101.5 -0.5 102 0)
                                          (102 0 102.5 0.5 103 0)
                                          (103 0 103.5 -0.5 104 0)
                                          (104 0 104.5 0.5 105 0)
                                          (105 0 105.5 -0.5 106 0)
                                          (106 0 106.5 0.5 107 0)
                                          (107 0 107.5 -0.5 108 0)
                                          (108 0 108.5 0.5 109 0)
                                          (109 0 109.5 -0.5 110 0)
                                          (110 0 110.5 0.5 111 0)
                                          (111 0 111.5 -0.5 112 0)
                                          (112 0 112.5 0.5 113 0)
                                          (113 0 113.5 -0.5 114 0)
                                          (114 0 114.5 0.5 115 0)
                                          (115 0 115.5 -0.5 116 0)
                                          (116 0 116.5 0.5 117 0)
                                          (117 0 117.5 -0.5 118 0)
                                          (118 0 118.5 0.5 119 0)
                                          (119 0 119.5 -0.5 120 0)
                                          (120 0 120.5 0.5 121 0)
                                          (121 0 121.5 -0.5 122 0)
                                          (122 0 122.5 0.5 123 0)
                                          (123 0 123.5 -0.5 124 0)
                                          (124 0 124.5 0.5 125 0)
                                          (125 0 125.5 -0.5 126 0)
                                          (126 0 126.5 0.5 127 0)
                                          (127 0 127.5 -0.5 128 0)
                                          (128 0 128.5 0.5 129 0)
                                          (129 0 129.5 -0.5 130 0)
                                          (130 0 130.5 0.5 131 0)
                                          (131 0 131.5 -0.5 132 0)
                                          (132 0 132.5 0.5 133 0)
                                          (133 0 133.5 -0.5 134 0)
                                          (134 0 134.5 0.5 135 0)
                                          (135 0 135.5 -0.5 136 0)
                                          (136 0 136.5 0.5 137 0)
                                          (137 0 137.5 -0.5 138 0)
                                          (138 0 138.5 0.5 139 0)
                                          (139 0 139.5 -0.5 140 0)
                                          (140 0 140.5 0.5 141 0)
                                          (141 0 141.5 -0.5 142 0)
                                          (142 0 142.5 0.5 143 0)
                                          (143 0 143.5 -0.5 144 0)
                                          (144 0 144.5 0.5 145 0)
                                          (145 0 145.5 -0.5 146 0)
                                          (146 0 146.5 0.5 147 0)
                                          (147 0 147.5 -0.5 148 0)
                                          (148 0 148.5 0.5 149 0)
                                          (149 0 149.5 -0.5 150 0)
                                          (150 0 150.5 0.5 151 0)
                                          (151 0 151.5 -0.5 152 0)
                                          (152 0 152.5 0.5 153 0)
                                          (153 0 153.5 -0.5 154 0)
                                          (154 0 154.5 0.5 155 0)
                                          (155 0 155.5 -0.5 156 0)
                                          (156 0 156.5 0.5 157 0)
                                          (157 0 157.5 -0.5 158 0)
                                          (158 0 158.5 0.5 159 0)
                                          (159 0 159.5 -0.5 160 0)
                                          (160 0 160.5 0.5 161 0)
                                          (161 0 161.5 -0.5 162 0)
                                          (162 0 162.5 0.5 163 0)
                                          (163 0 163.5 -0.5 164 0)
                                          (164 0 164.5 0.5 165 0)
                                          (165 0 165.5 -0.5 166 0)
                                          (166 0 166.5 0.5 167 0)
                                          (167 0 167.5 -0.5 168 0)
                                          (168 0 168.5 0.5 169 0)
                                          (169 0 169.5 -0.5 170 0)
                                          (170 0 170.5 0.5 171 0)
                                          (171 0 171.5 -0.5 172 0)
                                          (172 0 172.5 0.5 173 0)
                                          (173 0 173.5 -0.5 174 0)
                                          (174 0 174.5 0.5 175 0)
                                          (175 0 175.5 -0.5 176 0)
                                          (176 0 176.5 0.5 177 0)
                                          (177 0 177.5 -0.5 178 0)
                                          (178 0 178.5 0.5 179 0)
                                          (179 0 179.5 -0.5 180 0)
                                          (180 0 180.5 0.5 181 0)
                                          (181 0 181.5 -0.5 182 0)
                                          (182 0 182.5 0.5 183 0)
                                          (183 0 183.5 -0.5 184 0)
                                          (184 0 184.5 0.5 185 0)
                                          (185 0 185.5 -0.5 186 0)
                                          (186 0 186.5 0.5 187 0)
                                          (187 0 187.5 -0.5 188 0)
                                          (188 0 188.5 0.5 189 0)
                                          (189 0 189.5 -0.5 190 0)
                                          (190 0 190.5 0.5 191 0)
                                          (191 0 191.5 -0.5 192 0)
                                          (192 0 192.5 0.5 193 0)
                                          (193 0 193.5 -0.5 194 0)
                                          (194 0 194.5 0.5 195 0)
                                          (195 0 195.5 -0.5 196 0)
                                          (196 0 196.5 0.5 197 0)
                                          (197 0 197.5 -0.5 198 0)
                                          (198 0 198.5 0.5 199 0)
                                          (199 0 199.5 -0.5 200 0)
                                          (200 0 200.5 0.5 201 0)
                                          (201 0 201.5 -0.5 202 0)
                                          (202 0 202.5 0.5 203 0)
                                          (203 0 203.5 -0.5 204 0)
                                          (204 0 204.5 0.5 205 0)
                                          (205 0 205.5 -0.5 206 0)
                                          (206 0 206.5 0.5 207 0)
                                          (207 0 207.5 -0.5 208 0)
                                          (208 0 208.5 0.5 209 0)
                                          (209 0 209.5 -0.5 210 0)
                                          (210 0 210.5 0.5 211 0)
                                          (211 0 211.5 -0.5 212 0)
                                          (212 0 212.5 0.5 213 0)
                                          (213 0 213.5 -0.5 214 0)
                                          (214 0 214.5 0.5 215 0)
                                          (215 0 215.5 -0.5 216 0)
                                          (216 0 216.5 0.5 217 0)
                                          (217 0 217.5 -0.5 218 0)
                                          (218 0 218.5 1 219 0)
                                          (219 0 219.5 -1 220 0)
                                          (220 0 220.5 2 221 0)
                                          (221 0 221.5 -2 222 0)
                                          (222 0 222.5 3 223 0)
                                          (223 0 223.5 -3 224 0)
                                          (224 0 224.5 3 225 0)
                                          (225 0 225.5 -3 226 0)
                                     )
                                     #-6
                                    d,32
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
                                    d,8
                                    ~
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
                                        \ff
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
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { tenor trombone }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { t. tbn. }
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    \time 1/8
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
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
                                %%% \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { bass trombone }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { b. tbn. }
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    \time 1/8
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
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
                                    \ff
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
                                    d,8
                                    ~
                                    d,16.
                                    d,32
                                    \mp
                                    \<
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
                                    d,32
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
                                        \f
                                        \stopTextSpan
                                        \textSpannerUp
                                    }
                                }
                            }
                        }
                    >>
                }
            >>
        }
    >>
  %! abjad.LilyPondFile._get_format_pieces()
