    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "3\'27\""  }
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "3\'28\""  }
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "3\'29\""  }
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "3\'30\""  }
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "3\'31\""  }
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "3\'32\""  }
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "3\'33\""  }
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "3\'34\""  }
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "3\'35\""  }
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "3\'36\""  }
            \time 1/8
            s1 * 1/8
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 \center-column { "3\'37\""  }
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
                            <<
                                \context Voice = "piano voice temp"
                                {
                                    \staff-line-count 3
                                    \override NoteHead.stencil = #ly:text-interface::print
                                    \override NoteHead.text = \markup \with-color "darkred" { α }
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { tape }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic"){ tp. }
                                    \clef "percussion"
                                    \time 1/8
                                    \voiceTwo
                                    a1
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
                                    a4.
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
                                    }
                                }
                                \context Voice = "gamma voice"
                                {
                                    \override NoteHead.stencil = #ly:text-interface::print
                                    \override NoteHead.text = \markup \with-color "darksalmon" { γ }
                                    \voiceOne
                                    r4.
                                    \afterGrace
                                    d'8
                                      %! abjad.glissando(7)
                                    - \tweak color #(css-color 'darksalmon)
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
                                    r2..
                                }
                            >>
                            \oneVoice
                        }
                    }
                }
                \tag #'voice2
                {
                    \context Staff = "viola staff"
                    {
                        \context Voice = "viola voice"
                        {
                            <<
                                \context Voice = "viola voice temp"
                                {
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 4 0))
                                    \times 4/5
                                    {
                                        \staff-line-count 1
                                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { viola }
                                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vla. }
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
                                    R1 * 5/32
                                    <d' f'>8
                                    \ppp
                                    - \markup \with-color \四 \override #'(font-name . "Source Han Serif SC") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #1 \box { "四 on" }
                                    [
                                    (
                                    - \tweak color #(css-color 'indianred)
                                    - \tweak padding #12
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \with-color "indianred" { "dietro pont." } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -1
                                    \startTextSpanOne
                                    - \tweak color #(css-color 'mediumblue)
                                    - \tweak padding #6
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \with-color "mediumblue" { +45° } \hspace #0.5 }
                                    \startTextSpanThree
                                    - \tweak color #darkred
                                    - \tweak padding #9
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" { { \fraction 1 3 } \hspace #0.5 { scratch } } \hspace #0.5 }
                                    \startTextSpanTwo
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    <b d'>8.
                                    \pp
                                    \stopTextSpanThree
                                    \stopTextSpanTwo
                                    ]
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak color #(css-color 'mediumblue)
                                    - \tweak padding #6
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { {  } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \with-color "mediumblue" { 0° }
                                    \startTextSpanThree
                                    - \tweak color #darkred
                                    - \tweak padding #9
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \with-color "darkred" { scratch } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -1.5
                                    \startTextSpanTwo
                                    \<
                                    \once \override Dots.staff-position = #2
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \afterGrace
                                    <b d'>16.
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override Flag.stroke-style = #"grace"
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \once \override NoteHead.X-extent = #'(0 . 0)
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        <b d'>16
                                        \f
                                        - \markup \with-color \四 \override #'(font-name . "Source Han Serif SC") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #1 \box { "四 off" }
                                        )
                                        \stopTextSpanOne
                                        \stopTextSpanThree
                                        \stopTextSpanTwo
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) (ly:make-duration 5 0))
                                    \times 5/6
                                    {
                                        \staff-line-count 3
                                        \override Staff.StaffSymbol.line-positions = #'(5 3 -5)
                                        \override Staff.Clef.stencil = #ly:text-interface::print
                                        \override Staff.Clef.text = \markup { \fontsize #3.5 \override #'(font-name . "ekmelos") \char ##xe078 }
                                        \override Accidental.stencil = ##f
                                        \override Dots.staff-position = #2
                                        \override Glissando.bound-details.left.padding = #0.5
                                        \override Glissando.bound-details.right.padding = #0.5
                                        \override NoteHead.X-extent = #'(0 . 0)
                                        \override NoteHead.transparent = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \clef "percussion"
                                        f'64
                                        - \accent
                                        \ff
                                        - \markup \with-color \一 \override #'(font-name . "Source Han Serif SC") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #1 \box { "一 on" }
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'mediumblue)
                                        - \tweak padding #12.5
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \with-color "mediumblue" { +45° } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \with-color "mediumblue" { -45° }
                                        \startTextSpanTwo
                                        - \tweak color #(css-color 'rosybrown)
                                        - \tweak padding #15.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \with-color "rosybrown" { I } \hspace #0.5 }
                                        \startTextSpanOne
                                        f32.
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "s mp"))
                                        \stopTextSpanOne
                                        [
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'rosybrown)
                                        - \tweak padding #15.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \with-color "rosybrown" { "III + IV" } \hspace #0.5 }
                                        \startTextSpanOne
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                        f'8
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        ~
                                        \once \override NoteColumn.glissando-skip = ##t
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 8 7) (ly:make-duration 5 0))
                                    \times 7/8
                                    {
                                        f'64
                                        \stopTextSpanOne
                                        ]
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        c'64
                                        \ff
                                        [
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'rosybrown)
                                        - \tweak padding #15.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \with-color "rosybrown" { I } \hspace #0.5 }
                                        \startTextSpanOne
                                        - \tweak stencil #constante-hairpin
                                        \<
                                        d'64
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        a64
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        d'64
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        a64
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        d'64
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        a64
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        d'64
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        a64
                                        \stopTextSpanOne
                                        ]
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'32.
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak circled-tip ##t
                                        \>
                                        - \tweak color #(css-color 'rosybrown)
                                        - \tweak padding #15.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \with-color "rosybrown" { "III + IV" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -4
                                        \startTextSpanOne
                                        b64
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "s ff"))
                                        [
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        e'64
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        f64
                                        - \markup \with-color \一 \override #'(font-name . "Source Han Serif SC") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #1 \box { "一 off" }
                                        \stopTextSpanOne
                                        \stopTextSpanTwo
                                        ]
                                        \staff-line-count 5
                                        \revert Staff.StaffSymbol.line-positions
                                        \revert Staff.Clef.stencil
                                        \revert Accidental.stencil
                                        \revert Dots.staff-position
                                        \revert Glissando.bound-details.left.padding
                                        \revert Glissando.bound-details.right.padding
                                        \revert NoteHead.X-extent
                                        \override NoteHead.transparent = ##f
                                        \override NoteHead.no-ledgers = ##f
                                    }
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
                                    \time 5/32
                                    s1 * 5/32
                                    - \markup \with-color \三 \override #'(font-name . "Source Han Serif SC") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #1 \box { "三 off" }
                                    \once \override Staff.BarLine.transparent = ##f
                                    \once \override Staff.TimeSignature.transparent = ##f
                                    \time 4/32
                                    s1 * 1/8
                                    \once \override Staff.BarLine.transparent = ##f
                                    \once \override Staff.TimeSignature.transparent = ##f
                                    \time 9/32
                                    s1 * 9/32
                                    \once \override Staff.BarLine.transparent = ##f
                                    \once \override Staff.TimeSignature.transparent = ##f
                                    \time 5/32
                                    s1 * 5/32
                                    \once \override Staff.BarLine.transparent = ##f
                                    \once \override Staff.TimeSignature.transparent = ##f
                                    \time 7/32
                                    s1 * 7/32
                                }
                            >>
                            \oneVoice
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
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
                                %%% \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { violin }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vln. }
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { bass clarinet }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic"){ b. cl. }
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { violoncello iii }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vc. iii }
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { percussion ii }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { perc. ii }
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
            >>
        }
    >>
  %! abjad.LilyPondFile._get_format_pieces()
