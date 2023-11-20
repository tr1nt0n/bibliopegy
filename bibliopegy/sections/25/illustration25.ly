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
            - \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #6 { " 2\'20\" - 3\'32\" " }
            - \markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #8 \box { ×9 }
            ^ \markup {
              \raise #0 \with-dimensions-from \null
              \override #'(font-size . 4)
              \concat {
                  \abjad-metronome-mark-markup #3 #0 #1 #"60"
              }
            }
            \time 1/8
            s1 * 1/8
            \time 1/8
            s1 * 1/8
            \time 1/8
            s1 * 1/8
            \time 1/8
            s1 * 1/8
            \time 1/8
            s1 * 1/8
            \time 1/8
            s1 * 1/8
            \time 1/8
            s1 * 1/8
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
                                    \staff-line-count 2
                                    \bar ".|:"
                                    \once \override Staff.BarLine.glyph-name = ".|:" 
                                    \once \override Staff.BarLine.transparent = ##f
                                    \override NoteHead.stencil = #ly:text-interface::print
                                    \override NoteHead.text = \markup \with-color "forestgreen" \override #'(font-name . "Source Han Serif SC Bold") { 是 }
                                    \override Staff.BarLine.bar-extent = #'(-2 . 2)
                                    \override Staff.Rest.transparent = ##f
                                    \revert Staff.Dots.stencil
                                    \revert Staff.Flag.stencil
                                    \revert Staff.NoteHead.duration-log
                                    \revert Staff.Stem.stencil
                                    \revert Staff.Tie.stencil
                                    \revert Staff.TimeSignature.stencil
                                    \revert Staff.TupletBracket.stencil
                                    \revert Staff.TupletNumber.stencil
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { tape }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic"){ tp. }
                                    \clef "percussion"
                                    \afterGrace
                                    b1
                                      %! abjad.glissando(7)
                                    - \tweak color #(css-color 'forestgreen)
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
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
                                        b16
                                    }
                                }
                                \context Voice = "piano voice time signatures"
                                {
                                    \bar ".|:"
                                    \once \override Staff.BarLine.glyph-name = ".|:" 
                                    \once \override Staff.BarLine.transparent = ##f
                                    \once \override Staff.BarLine.transparent = ##f
                                    \once \override Staff.TimeSignature.transparent = ##f
                                    \override Staff.BarLine.bar-extent = #'(-2 . 2)
                                    \override Staff.Rest.transparent = ##f
                                    \revert Staff.Dots.stencil
                                    \revert Staff.Flag.stencil
                                    \revert Staff.NoteHead.duration-log
                                    \revert Staff.Stem.stencil
                                    \revert Staff.Tie.stencil
                                    \revert Staff.TimeSignature.stencil
                                    \revert Staff.TupletBracket.stencil
                                    \revert Staff.TupletNumber.stencil
                                    \time 4/8
                                    \voiceTwo
                                    s1 * 1/2
                                    \once \override Staff.BarLine.glyph-name = "|" 
                                    \once \override Staff.BarLine.glyph-name = "|" 
                                    \once \override Staff.BarLine.transparent = ##f
                                    \once \override Staff.TimeSignature.stencil = ##f
                                    \once \override Staff.TimeSignature.stencil = ##f
                                    \once \override Staff.TimeSignature.transparent = ##f
                                    \override Staff.TimeSignature.stencil = ##f
                                    \override Staff.TimeSignature.stencil = ##f
                                    \time 4/8
                                    s1 * 1/2
                                    \once \override Staff.BarLine.glyph-name = ":|." 
                                    \once \override Staff.BarLine.glyph-name = ":|." 
                                    \once \override Staff.BarLine.transparent = ##f
                                    \once \override Staff.BarLine.transparent = ##f
                                    \override Staff.Dots.stencil = ##f
                                    \override Staff.Dots.stencil = ##f
                                    \override Staff.Flag.stencil = ##f
                                    \override Staff.Flag.stencil = ##f
                                    \override Staff.NoteHead.duration-log = 2
                                    \override Staff.NoteHead.duration-log = 2
                                    \override Staff.Rest.transparent = ##t
                                    \override Staff.Rest.transparent = ##t
                                    \override Staff.Stem.stencil = ##f
                                    \override Staff.Stem.stencil = ##f
                                    \override Staff.Tie.stencil = ##f
                                    \override Staff.Tie.stencil = ##f
                                    \override Staff.TupletBracket.stencil = ##f
                                    \override Staff.TupletBracket.stencil = ##f
                                    \override Staff.TupletNumber.stencil = ##f
                                    \override Staff.TupletNumber.stencil = ##f
                                    \revert Staff.BarLine.bar-extent
                                    \revert Staff.BarLine.bar-extent
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
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) (ly:make-duration 4 0))
                                    \times 8/9
                                    {
                                        \staff-line-count 4
                                        \bar ".|:"
                                        \once \override Staff.BarLine.glyph-name = ".|:" 
                                        \once \override Staff.BarLine.transparent = ##f
                                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { viola }
                                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vla. }
                                        \clef "varpercussion"
                                        <g b>32
                                        \mf
                                        - \markup \with-color \三 \override #'(font-name . "Source Han Serif SC") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #1 \box { "三 on" }
                                        [
                                        - \tweak color #(css-color 'indianred)
                                        - \tweak padding #5.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \with-color "indianred" { "pont." } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -1
                                        \startTextSpanOne
                                        - \tweak color #darkred
                                        - \tweak padding #3.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \with-color "darkred" { "molto flaut." } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -1
                                        \startTextSpanTwo
                                        - \tweak stencil #constante-hairpin
                                        \<
                                        <d' f'>32
                                        <g b>32
                                        <d' f'>32
                                        <g b>32
                                        <d' f'>32
                                        <g b>32
                                        <d' f'>32
                                        <g b>32
                                        <d' f'>32
                                        <g b>32
                                        <d' f'>32
                                        <g b>32
                                        <d' f'>32
                                        <g b>32
                                        <d' f'>32
                                        <g b>32
                                        <d' f'>32
                                    }
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) (ly:make-duration 4 0))
                                    \times 8/9
                                    {
                                        <g b>32
                                        <d' f'>32
                                        <g b>32
                                        <d' f'>32
                                        <g b>32
                                        <d' f'>32
                                        <g b>32
                                        <d' f'>32
                                        <g b>32
                                        <d' f'>32
                                        <g b>32
                                        <d' f'>32
                                        <g b>32
                                        <d' f'>32
                                        <g b>32
                                        <d' f'>32
                                        <g b>32
                                        <d' f'>32
                                        \!
                                        - \markup \with-color \三 \override #'(font-name . "Source Han Serif SC") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #1 \box { "三 off" }
                                        \stopTextSpanOne
                                        \stopTextSpanTwo
                                        ]
                                    }
                                }
                                \context Voice = "viola voice time signatures"
                                {
                                    \bar ".|:"
                                    \once \override Staff.BarLine.glyph-name = ".|:" 
                                    \once \override Staff.BarLine.transparent = ##f
                                    \once \override Staff.BarLine.transparent = ##f
                                    \once \override Staff.TimeSignature.transparent = ##f
                                    \time 4/8
                                    \voiceTwo
                                    s1 * 1/2
                                    \once \override Staff.BarLine.glyph-name = "|" 
                                    \once \override Staff.BarLine.glyph-name = "|" 
                                    \once \override Staff.BarLine.transparent = ##f
                                    \once \override Staff.TimeSignature.stencil = ##f
                                    \once \override Staff.TimeSignature.stencil = ##f
                                    \once \override Staff.TimeSignature.transparent = ##f
                                    \time 4/8
                                    s1 * 1/2
                                    \once \override Staff.BarLine.glyph-name = ":|." 
                                    \once \override Staff.BarLine.glyph-name = ":|." 
                                    \once \override Staff.BarLine.transparent = ##f
                                    \once \override Staff.BarLine.transparent = ##f
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
                                    <<
                                        \context Voice = "flute voice temp"
                                        {
                                            <<
                                                \context Voice = "On_Beat_Grace_Container"
                                                {
                                                      %! abjad.on_beat_grace_container(1)
                                                    \set fontSize = #-3
                                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { flute }
                                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { fl. }
                                                    \slash
                                                    \voiceOne
                                                    g'16 * 2/5
                                                    [
                                                    (
                                                    \ottava 1
                                                    \tweak style #'harmonic
                                                    d'''16 * 2/5
                                                    \tweak style #'harmonic
                                                    g'''16 * 2/5
                                                    \tweak style #'harmonic
                                                    b'''16 * 2/5
                                                    \ottava 0
                                                    g'16 * 2/5
                                                    )
                                                    ]
                                                }
                                                \context Voice = "flute voice temp Anchor"
                                                {
                                                    \bar ".|:"
                                                    \once \override Staff.BarLine.glyph-name = ".|:" 
                                                    \once \override Staff.BarLine.transparent = ##f
                                                    \override Staff.BarLine.bar-extent = #'(-2 . 2)
                                                    \override Staff.Rest.transparent = ##f
                                                    \revert Staff.Dots.stencil
                                                    \revert Staff.Flag.stencil
                                                    \revert Staff.NoteHead.duration-log
                                                    \revert Staff.Stem.stencil
                                                    \revert Staff.Tie.stencil
                                                    \revert Staff.TimeSignature.stencil
                                                    \revert Staff.TupletBracket.stencil
                                                    \revert Staff.TupletNumber.stencil
                                                    \voiceTwo
                                                    g'4
                                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sfffz mf"))
                                                    - \markup \override #'(font-name . "Bodoni72 Book Italic") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #1 \box { "Flute ( do not play first repetition )" }
                                                }
                                            >>
                                            f''16
                                            [
                                            \<
                                            fs''16
                                            - \tenuto
                                            \f
                                            r16
                                            cs''16
                                            :128
                                            - \accent
                                            ]
                                            ~
                                            cs''4
                                            :32
                                            \>
                                            ~
                                            cs''16
                                            :128
                                            \mp
                                            [
                                            \<
                                            g''16
                                            :128
                                            \ff
                                            (
                                            \>
                                            ef''32
                                            :256
                                            a'16.
                                            :128
                                            \!
                                            )
                                            ]
                                        }
                                        \context Voice = "flute voice time signatures"
                                        {
                                            \bar ".|:"
                                            \once \override Staff.BarLine.glyph-name = ".|:" 
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.TimeSignature.transparent = ##f
                                            \override Staff.BarLine.bar-extent = #'(-2 . 2)
                                            \override Staff.Rest.transparent = ##f
                                            \revert Staff.Dots.stencil
                                            \revert Staff.Flag.stencil
                                            \revert Staff.NoteHead.duration-log
                                            \revert Staff.Stem.stencil
                                            \revert Staff.Tie.stencil
                                            \revert Staff.TimeSignature.stencil
                                            \revert Staff.TupletBracket.stencil
                                            \revert Staff.TupletNumber.stencil
                                            \time 4/8
                                            \voiceTwo
                                            s1 * 1/2
                                            \once \override Staff.BarLine.glyph-name = "|" 
                                            \once \override Staff.BarLine.glyph-name = "|" 
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.TimeSignature.stencil = ##f
                                            \once \override Staff.TimeSignature.stencil = ##f
                                            \once \override Staff.TimeSignature.transparent = ##f
                                            \override Staff.TimeSignature.stencil = ##f
                                            \override Staff.TimeSignature.stencil = ##f
                                            \time 4/8
                                            s1 * 1/2
                                            \once \override Staff.BarLine.glyph-name = ":|." 
                                            \once \override Staff.BarLine.glyph-name = ":|." 
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.BarLine.transparent = ##f
                                            \override Staff.Dots.stencil = ##f
                                            \override Staff.Dots.stencil = ##f
                                            \override Staff.Flag.stencil = ##f
                                            \override Staff.Flag.stencil = ##f
                                            \override Staff.NoteHead.duration-log = 2
                                            \override Staff.NoteHead.duration-log = 2
                                            \override Staff.Rest.transparent = ##t
                                            \override Staff.Rest.transparent = ##t
                                            \override Staff.Stem.stencil = ##f
                                            \override Staff.Stem.stencil = ##f
                                            \override Staff.Tie.stencil = ##f
                                            \override Staff.Tie.stencil = ##f
                                            \override Staff.TupletBracket.stencil = ##f
                                            \override Staff.TupletBracket.stencil = ##f
                                            \override Staff.TupletNumber.stencil = ##f
                                            \override Staff.TupletNumber.stencil = ##f
                                            \revert Staff.BarLine.bar-extent
                                            \revert Staff.BarLine.bar-extent
                                        }
                                    >>
                                    \oneVoice
                                }
                            }
                        }
                        \tag #'voice4
                        {
                            \context UnmeteredStaff = "bassflute staff"
                            {
                                \context Voice = "bassflute voice"
                                {
                                    <<
                                        \context Voice = "bassflute voice temp"
                                        {
                                            \bar ".|:"
                                            \once \override Staff.BarLine.glyph-name = ".|:" 
                                            \once \override Staff.BarLine.transparent = ##f
                                            \override Staff.BarLine.bar-extent = #'(-2 . 2)
                                            \override Staff.Rest.transparent = ##f
                                            \revert Staff.Dots.stencil
                                            \revert Staff.Flag.stencil
                                            \revert Staff.NoteHead.duration-log
                                            \revert Staff.Stem.stencil
                                            \revert Staff.Tie.stencil
                                            \revert Staff.TimeSignature.stencil
                                            \revert Staff.TupletBracket.stencil
                                            \revert Staff.TupletNumber.stencil
                                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { bass flute }
                                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { b. fl. }
                                            g'8
                                            :64
                                            \ff
                                            ^ \espressivo
                                            [
                                            <<
                                                \context Voice = "On_Beat_Grace_Container"
                                                {
                                                      %! abjad.on_beat_grace_container(1)
                                                    \set fontSize = #-3
                                                    \slash
                                                    \voiceOne
                                                    af'16 * 2/5
                                                    [
                                                    (
                                                    \ottava 1
                                                    \tweak style #'harmonic
                                                    ef'''16 * 2/5
                                                    \tweak style #'harmonic
                                                    af'''16 * 2/5
                                                    \tweak style #'harmonic
                                                    c''''16 * 2/5
                                                    \ottava 0
                                                    af'16 * 2/5
                                                    )
                                                    ]
                                                }
                                                \context Voice = "bassflute voice temp Anchor"
                                                {
                                                    \voiceTwo
                                                    af'8
                                                    \ff
                                                    ^ \espressivo
                                                }
                                            >>
                                            a'16
                                            - \marcato
                                            - \staccato
                                            fs'16
                                            - \marcato
                                            - \staccato
                                            \mp
                                            \<
                                            cs''16
                                            - \marcato
                                            - \staccato
                                            f''16
                                            \ff
                                            ]
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            \once \override Dots.staff-position = #2
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            f''8
                                            [
                                            \>
                                            \once \override Dots.staff-position = #2
                                            f''8.
                                            :64
                                            \p
                                            \<
                                            \once \override Dots.staff-position = #2
                                            f''16
                                            \ff
                                            \>
                                            \once \override Dots.staff-position = #2
                                            f''16
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            f''16
                                            \pp
                                            ]
                                        }
                                        \context Voice = "bassflute voice time signatures"
                                        {
                                            \bar ".|:"
                                            \once \override Staff.BarLine.glyph-name = ".|:" 
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.TimeSignature.transparent = ##f
                                            \override Staff.BarLine.bar-extent = #'(-2 . 2)
                                            \override Staff.Rest.transparent = ##f
                                            \revert Staff.Dots.stencil
                                            \revert Staff.Flag.stencil
                                            \revert Staff.NoteHead.duration-log
                                            \revert Staff.Stem.stencil
                                            \revert Staff.Tie.stencil
                                            \revert Staff.TimeSignature.stencil
                                            \revert Staff.TupletBracket.stencil
                                            \revert Staff.TupletNumber.stencil
                                            \time 4/8
                                            \voiceTwo
                                            s1 * 1/2
                                            \once \override Staff.BarLine.glyph-name = "|" 
                                            \once \override Staff.BarLine.glyph-name = "|" 
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.TimeSignature.stencil = ##f
                                            \once \override Staff.TimeSignature.stencil = ##f
                                            \once \override Staff.TimeSignature.transparent = ##f
                                            \override Staff.TimeSignature.stencil = ##f
                                            \override Staff.TimeSignature.stencil = ##f
                                            \time 4/8
                                            s1 * 1/2
                                            \once \override Staff.BarLine.glyph-name = ":|." 
                                            \once \override Staff.BarLine.glyph-name = ":|." 
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.BarLine.transparent = ##f
                                            \override Staff.Dots.stencil = ##f
                                            \override Staff.Dots.stencil = ##f
                                            \override Staff.Flag.stencil = ##f
                                            \override Staff.Flag.stencil = ##f
                                            \override Staff.NoteHead.duration-log = 2
                                            \override Staff.NoteHead.duration-log = 2
                                            \override Staff.Rest.transparent = ##t
                                            \override Staff.Rest.transparent = ##t
                                            \override Staff.Stem.stencil = ##f
                                            \override Staff.Stem.stencil = ##f
                                            \override Staff.Tie.stencil = ##f
                                            \override Staff.Tie.stencil = ##f
                                            \override Staff.TupletBracket.stencil = ##f
                                            \override Staff.TupletBracket.stencil = ##f
                                            \override Staff.TupletNumber.stencil = ##f
                                            \override Staff.TupletNumber.stencil = ##f
                                            \revert Staff.BarLine.bar-extent
                                            \revert Staff.BarLine.bar-extent
                                        }
                                    >>
                                    \oneVoice
                                }
                            }
                        }
                        \tag #'voice5
                        {
                            \context UnmeteredStaff = "violin staff"
                            {
                                \context Voice = "violin voice"
                                {
                                    <<
                                        \context Voice = "violin voice temp"
                                        {
                                            \bar ".|:"
                                            \once \override Staff.BarLine.glyph-name = ".|:" 
                                            \once \override Staff.BarLine.transparent = ##f
                                            \override Staff.BarLine.bar-extent = #'(-2 . 2)
                                            \override Staff.Rest.transparent = ##f
                                            \revert Staff.Dots.stencil
                                            \revert Staff.Flag.stencil
                                            \revert Staff.NoteHead.duration-log
                                            \revert Staff.Stem.stencil
                                            \revert Staff.Tie.stencil
                                            \revert Staff.TimeSignature.stencil
                                            \revert Staff.TupletBracket.stencil
                                            \revert Staff.TupletNumber.stencil
                                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { violin }
                                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vln. }
                                            <
                                                \tweak Accidental.stencil #ly:text-interface::print
                                                \tweak Accidental.text \markup { \abjad-natural  }
                                                g'!
                                                \tweak Accidental.stencil #ly:text-interface::print
                                                \tweak Accidental.text \markup { \abjad-natural  }
                                                g''!
                                            >2
                                                _ #(make-dynamic-script (markup #:whiteout #:italic "sffz pp"))
                                            :32
                                            ^ \markup \center-align { \center-column { \line { \concat { -2 }  }\line { \concat { -2 }  } } }
                                            - \tweak color #darkred
                                            - \tweak padding #11
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \with-color "darkred" { "flaut. moltiss." } \hspace #0.5 }
                                            - \tweak bound-details.right.text \markup \with-color "darkred" { { \fraction 1 4 } \hspace #0.5 { scratch } }
                                            \startTextSpanThree
                                            \<
                                            <
                                                \tweak Accidental.stencil #ly:text-interface::print
                                                \tweak Accidental.text \markup { \abjad-sharp  }
                                                fs'!
                                                \tweak Accidental.stencil #ly:text-interface::print
                                                \tweak Accidental.text \markup { \abjad-sharp  }
                                                fs''!
                                            >2
                                            \ff
                                            ^ \markup \center-align { \center-column { \line { \concat { +4 }  }\line { \concat { +4 }  } } }
                                            \stopTextSpanThree
                                        }
                                        \context Voice = "violin voice time signatures"
                                        {
                                            \bar ".|:"
                                            \once \override Staff.BarLine.glyph-name = ".|:" 
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.TimeSignature.transparent = ##f
                                            \override Staff.BarLine.bar-extent = #'(-2 . 2)
                                            \override Staff.Rest.transparent = ##f
                                            \revert Staff.Dots.stencil
                                            \revert Staff.Flag.stencil
                                            \revert Staff.NoteHead.duration-log
                                            \revert Staff.Stem.stencil
                                            \revert Staff.Tie.stencil
                                            \revert Staff.TimeSignature.stencil
                                            \revert Staff.TupletBracket.stencil
                                            \revert Staff.TupletNumber.stencil
                                            \time 4/8
                                            \voiceTwo
                                            s1 * 1/2
                                            \once \override Staff.BarLine.glyph-name = "|" 
                                            \once \override Staff.BarLine.glyph-name = "|" 
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.TimeSignature.stencil = ##f
                                            \once \override Staff.TimeSignature.stencil = ##f
                                            \once \override Staff.TimeSignature.transparent = ##f
                                            \override Staff.TimeSignature.stencil = ##f
                                            \override Staff.TimeSignature.stencil = ##f
                                            \time 4/8
                                            s1 * 1/2
                                            \once \override Staff.BarLine.glyph-name = ":|." 
                                            \once \override Staff.BarLine.glyph-name = ":|." 
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.BarLine.transparent = ##f
                                            \override Staff.Dots.stencil = ##f
                                            \override Staff.Dots.stencil = ##f
                                            \override Staff.Flag.stencil = ##f
                                            \override Staff.Flag.stencil = ##f
                                            \override Staff.NoteHead.duration-log = 2
                                            \override Staff.NoteHead.duration-log = 2
                                            \override Staff.Rest.transparent = ##t
                                            \override Staff.Rest.transparent = ##t
                                            \override Staff.Stem.stencil = ##f
                                            \override Staff.Stem.stencil = ##f
                                            \override Staff.Tie.stencil = ##f
                                            \override Staff.Tie.stencil = ##f
                                            \override Staff.TupletBracket.stencil = ##f
                                            \override Staff.TupletBracket.stencil = ##f
                                            \override Staff.TupletNumber.stencil = ##f
                                            \override Staff.TupletNumber.stencil = ##f
                                            \revert Staff.BarLine.bar-extent
                                            \revert Staff.BarLine.bar-extent
                                        }
                                    >>
                                    \oneVoice
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
                                    <<
                                        \context Voice = "bassclarinet voice temp"
                                        {
                                            \bar ".|:"
                                            \once \override Staff.BarLine.glyph-name = ".|:" 
                                            \once \override Staff.BarLine.transparent = ##f
                                            \override Staff.BarLine.bar-extent = #'(-2 . 2)
                                            \override Staff.Rest.transparent = ##f
                                            \revert Staff.Dots.stencil
                                            \revert Staff.Flag.stencil
                                            \revert Staff.NoteHead.duration-log
                                            \revert Staff.Stem.stencil
                                            \revert Staff.Tie.stencil
                                            \revert Staff.TimeSignature.stencil
                                            \revert Staff.TupletBracket.stencil
                                            \revert Staff.TupletNumber.stencil
                                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { bass clarinet }
                                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic"){ b. cl. }
                                            \afterGrace
                                            e2
                                                _ #(make-dynamic-script (markup #:whiteout #:italic "sfffz mf"))
                                            - \accent
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            \>
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
                                                e16
                                                \p
                                            }
                                            \afterGrace
                                            gqf2
                                                _ #(make-dynamic-script (markup #:whiteout #:italic "sfffz mf"))
                                            - \accent
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            \>
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
                                                gqf16
                                                \p
                                            }
                                        }
                                        \context Voice = "bassclarinet voice time signatures"
                                        {
                                            \bar ".|:"
                                            \once \override Staff.BarLine.glyph-name = ".|:" 
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.TimeSignature.transparent = ##f
                                            \override Staff.BarLine.bar-extent = #'(-2 . 2)
                                            \override Staff.Rest.transparent = ##f
                                            \revert Staff.Dots.stencil
                                            \revert Staff.Flag.stencil
                                            \revert Staff.NoteHead.duration-log
                                            \revert Staff.Stem.stencil
                                            \revert Staff.Tie.stencil
                                            \revert Staff.TimeSignature.stencil
                                            \revert Staff.TupletBracket.stencil
                                            \revert Staff.TupletNumber.stencil
                                            \time 4/8
                                            \voiceTwo
                                            s1 * 1/2
                                            \once \override Staff.BarLine.glyph-name = "|" 
                                            \once \override Staff.BarLine.glyph-name = "|" 
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.TimeSignature.stencil = ##f
                                            \once \override Staff.TimeSignature.stencil = ##f
                                            \once \override Staff.TimeSignature.transparent = ##f
                                            \override Staff.TimeSignature.stencil = ##f
                                            \override Staff.TimeSignature.stencil = ##f
                                            \time 4/8
                                            s1 * 1/2
                                            \once \override Staff.BarLine.glyph-name = ":|." 
                                            \once \override Staff.BarLine.glyph-name = ":|." 
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.BarLine.transparent = ##f
                                            \override Staff.Dots.stencil = ##f
                                            \override Staff.Dots.stencil = ##f
                                            \override Staff.Flag.stencil = ##f
                                            \override Staff.Flag.stencil = ##f
                                            \override Staff.NoteHead.duration-log = 2
                                            \override Staff.NoteHead.duration-log = 2
                                            \override Staff.Rest.transparent = ##t
                                            \override Staff.Rest.transparent = ##t
                                            \override Staff.Stem.stencil = ##f
                                            \override Staff.Stem.stencil = ##f
                                            \override Staff.Tie.stencil = ##f
                                            \override Staff.Tie.stencil = ##f
                                            \override Staff.TupletBracket.stencil = ##f
                                            \override Staff.TupletBracket.stencil = ##f
                                            \override Staff.TupletNumber.stencil = ##f
                                            \override Staff.TupletNumber.stencil = ##f
                                            \revert Staff.BarLine.bar-extent
                                            \revert Staff.BarLine.bar-extent
                                        }
                                    >>
                                    \oneVoice
                                }
                            }
                        }
                        \tag #'voice7
                        {
                            \context UnmeteredStaff = "percussion 1 staff"
                            {
                                \context Voice = "percussion 1 voice"
                                {
                                    <<
                                        \context Voice = "percussion 1 voice temp"
                                        {
                                            <<
                                                \context Voice = "percussion 1 voice temp temp"
                                                {
                                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 3 0))
                                                    \times 4/5
                                                    {
                                                        \staff-line-count 4
                                                        \bar ".|:"
                                                        \once \override Staff.BarLine.glyph-name = ".|:" 
                                                        \once \override Staff.BarLine.transparent = ##f
                                                        \override Staff.BarLine.bar-extent = #'(-2 . 2)
                                                        \override Staff.Rest.transparent = ##f
                                                        \revert Staff.Dots.stencil
                                                        \revert Staff.Flag.stencil
                                                        \revert Staff.NoteHead.duration-log
                                                        \revert Staff.Stem.stencil
                                                        \revert Staff.Tie.stencil
                                                        \revert Staff.TimeSignature.stencil
                                                        \revert Staff.TupletBracket.stencil
                                                        \revert Staff.TupletNumber.stencil
                                                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { percussion i }
                                                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { perc. i }
                                                        \clef "percussion"
                                                        \voiceTwo
                                                        r4.
                                                        ^ \markup \override #'(font-name . "Bodoni72 Book Italic") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #1 \box { \column { \line { "1. Bow Snare Drum on right side of Fishing Line" } \line { "2. Bow Snare Drum on left side of Fishing Line" } \line { "3. Strike Snare Drum on Cymbal" } \line { "4. Strike Timpani on Head" } } }
                                                        \scaleDurations #'(1 . 1) {
                                                        \slashedGrace {
                                                            g16
                                                            (
                                                        }
                                                        }
                                                        b8
                                                        - \marcato
                                                        )
                                                        r8
                                                    }
                                                    \tweak text #tuplet-number::calc-fraction-text
                                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 4 0))
                                                    \times 8/7
                                                    {
                                                        r8.
                                                        \scaleDurations #'(1 . 1) {
                                                        \slashedGrace {
                                                            g16
                                                            (
                                                        }
                                                        }
                                                        b16
                                                        - \marcato
                                                        )
                                                        r8.
                                                    }
                                                }
                                                \context Voice = "snare voice"
                                                {
                                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 17 16) (ly:make-duration 5 0))
                                                    \times 16/17
                                                    {
                                                        \voiceOne
                                                        d'32
                                                            _ #(make-dynamic-script (markup #:whiteout #:italic "sfffz pp"))
                                                        [
                                                        _ \<
                                                        f'32
                                                        d'32
                                                        f'32
                                                        d'32
                                                        f'32
                                                        d'32
                                                        f'32
                                                        d'32
                                                        f'32
                                                        r32
                                                        _ \f
                                                        d'32
                                                        _ \>
                                                        f'32
                                                        d'32
                                                        f'32
                                                        d'32
                                                        f'32
                                                        _ \p
                                                    }
                                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 17 16) (ly:make-duration 5 0))
                                                    \times 16/17
                                                    {
                                                        d'32
                                                            _ #(make-dynamic-script (markup #:whiteout #:italic "sfffz pp"))
                                                        _ \<
                                                        f'32
                                                        d'32
                                                        f'32
                                                        d'32
                                                        f'32
                                                        d'32
                                                        r32
                                                        _ \f
                                                        f'32
                                                        _ \>
                                                        d'32
                                                        f'32
                                                        d'32
                                                        f'32
                                                        d'32
                                                        f'32
                                                        d'32
                                                        f'32
                                                        _ \p
                                                        ]
                                                    }
                                                }
                                            >>
                                            \oneVoice
                                        }
                                        \context Voice = "percussion 1 voice time signatures"
                                        {
                                            \bar ".|:"
                                            \once \override Staff.BarLine.glyph-name = ".|:" 
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.TimeSignature.transparent = ##f
                                            \override Staff.BarLine.bar-extent = #'(-2 . 2)
                                            \override Staff.Rest.transparent = ##f
                                            \revert Staff.Dots.stencil
                                            \revert Staff.Flag.stencil
                                            \revert Staff.NoteHead.duration-log
                                            \revert Staff.Stem.stencil
                                            \revert Staff.Tie.stencil
                                            \revert Staff.TimeSignature.stencil
                                            \revert Staff.TupletBracket.stencil
                                            \revert Staff.TupletNumber.stencil
                                            \time 4/8
                                            \voiceTwo
                                            s1 * 1/2
                                            \once \override Staff.BarLine.glyph-name = "|" 
                                            \once \override Staff.BarLine.glyph-name = "|" 
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.TimeSignature.stencil = ##f
                                            \once \override Staff.TimeSignature.stencil = ##f
                                            \once \override Staff.TimeSignature.transparent = ##f
                                            \override Staff.TimeSignature.stencil = ##f
                                            \override Staff.TimeSignature.stencil = ##f
                                            \time 4/8
                                            s1 * 1/2
                                            \once \override Staff.BarLine.glyph-name = ":|." 
                                            \once \override Staff.BarLine.glyph-name = ":|." 
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.BarLine.transparent = ##f
                                            \override Staff.Dots.stencil = ##f
                                            \override Staff.Dots.stencil = ##f
                                            \override Staff.Flag.stencil = ##f
                                            \override Staff.Flag.stencil = ##f
                                            \override Staff.NoteHead.duration-log = 2
                                            \override Staff.NoteHead.duration-log = 2
                                            \override Staff.Rest.transparent = ##t
                                            \override Staff.Rest.transparent = ##t
                                            \override Staff.Stem.stencil = ##f
                                            \override Staff.Stem.stencil = ##f
                                            \override Staff.Tie.stencil = ##f
                                            \override Staff.Tie.stencil = ##f
                                            \override Staff.TupletBracket.stencil = ##f
                                            \override Staff.TupletBracket.stencil = ##f
                                            \override Staff.TupletNumber.stencil = ##f
                                            \override Staff.TupletNumber.stencil = ##f
                                            \revert Staff.BarLine.bar-extent
                                            \revert Staff.BarLine.bar-extent
                                        }
                                    >>
                                    \oneVoice
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
                                    <<
                                        \context Voice = "cello 1 voice temp"
                                        {
                                            \bar ".|:"
                                            \once \override Staff.BarLine.glyph-name = ".|:" 
                                            \once \override Staff.BarLine.transparent = ##f
                                            \override Staff.BarLine.bar-extent = #'(-2 . 2)
                                            \override Staff.Rest.transparent = ##f
                                            \revert Staff.Dots.stencil
                                            \revert Staff.Flag.stencil
                                            \revert Staff.NoteHead.duration-log
                                            \revert Staff.Stem.stencil
                                            \revert Staff.Tie.stencil
                                            \revert Staff.TimeSignature.stencil
                                            \revert Staff.TupletBracket.stencil
                                            \revert Staff.TupletNumber.stencil
                                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { violoncello i }
                                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vc. i }
                                            \clef "tenorvarC"
                                            <
                                                \tweak Accidental.stencil #ly:text-interface::print
                                                \tweak Accidental.text \markup { \one-undecimal-quarter-tone-down  }
                                                b!
                                                \tweak Accidental.stencil #ly:text-interface::print
                                                \tweak Accidental.text \markup { \one-undecimal-quarter-tone-down  }
                                                b'!
                                            >2
                                                _ #(make-dynamic-script (markup #:whiteout #:italic "sffz pp"))
                                            :32
                                            ^ \markup \center-align { \center-column { \line { \concat { -47 }  }\line { \concat { -47 }  } } }
                                            - \tweak color #darkred
                                            - \tweak padding #12
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \with-color "darkred" { "flaut. moltiss." } \hspace #0.5 }
                                            - \tweak bound-details.right.text \markup \with-color "darkred" { { \fraction 1 4 } \hspace #0.5 { scratch } }
                                            \startTextSpanThree
                                            \<
                                            <
                                                \tweak Accidental.stencil #ly:text-interface::print
                                                \tweak Accidental.text \markup \concat { \one-seventeen-limit-schisma-down \hspace #0.125 \double-sharp-one-syntonic-comma-down  }
                                                gss!
                                                \tweak Accidental.stencil #ly:text-interface::print
                                                \tweak Accidental.text \markup \concat { \one-seventeen-limit-schisma-down \hspace #0.125 \double-sharp-one-syntonic-comma-down  }
                                                gss'!
                                            >2
                                            \ff
                                            ^ \markup \center-align { \center-column { \line { \concat { -9 }  }\line { \concat { -9 }  } } }
                                            \stopTextSpanThree
                                        }
                                        \context Voice = "cello 1 voice time signatures"
                                        {
                                            \bar ".|:"
                                            \once \override Staff.BarLine.glyph-name = ".|:" 
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.TimeSignature.transparent = ##f
                                            \override Staff.BarLine.bar-extent = #'(-2 . 2)
                                            \override Staff.Rest.transparent = ##f
                                            \revert Staff.Dots.stencil
                                            \revert Staff.Flag.stencil
                                            \revert Staff.NoteHead.duration-log
                                            \revert Staff.Stem.stencil
                                            \revert Staff.Tie.stencil
                                            \revert Staff.TimeSignature.stencil
                                            \revert Staff.TupletBracket.stencil
                                            \revert Staff.TupletNumber.stencil
                                            \time 4/8
                                            \voiceTwo
                                            s1 * 1/2
                                            \once \override Staff.BarLine.glyph-name = "|" 
                                            \once \override Staff.BarLine.glyph-name = "|" 
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.TimeSignature.stencil = ##f
                                            \once \override Staff.TimeSignature.stencil = ##f
                                            \once \override Staff.TimeSignature.transparent = ##f
                                            \override Staff.TimeSignature.stencil = ##f
                                            \override Staff.TimeSignature.stencil = ##f
                                            \time 4/8
                                            s1 * 1/2
                                            \once \override Staff.BarLine.glyph-name = ":|." 
                                            \once \override Staff.BarLine.glyph-name = ":|." 
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.BarLine.transparent = ##f
                                            \override Staff.Dots.stencil = ##f
                                            \override Staff.Dots.stencil = ##f
                                            \override Staff.Flag.stencil = ##f
                                            \override Staff.Flag.stencil = ##f
                                            \override Staff.NoteHead.duration-log = 2
                                            \override Staff.NoteHead.duration-log = 2
                                            \override Staff.Rest.transparent = ##t
                                            \override Staff.Rest.transparent = ##t
                                            \override Staff.Stem.stencil = ##f
                                            \override Staff.Stem.stencil = ##f
                                            \override Staff.Tie.stencil = ##f
                                            \override Staff.Tie.stencil = ##f
                                            \override Staff.TupletBracket.stencil = ##f
                                            \override Staff.TupletBracket.stencil = ##f
                                            \override Staff.TupletNumber.stencil = ##f
                                            \override Staff.TupletNumber.stencil = ##f
                                            \revert Staff.BarLine.bar-extent
                                            \revert Staff.BarLine.bar-extent
                                        }
                                    >>
                                    \oneVoice
                                }
                            }
                        }
                        \tag #'voice9
                        {
                            \context UnmeteredStaff = "cello 2 staff"
                            {
                                \context Voice = "cello 2 voice"
                                {
                                    <<
                                        \context Voice = "cello 2 voice temp"
                                        {
                                            \bar ".|:"
                                            \once \override Staff.BarLine.glyph-name = ".|:" 
                                            \once \override Staff.BarLine.transparent = ##f
                                            \override Staff.BarLine.bar-extent = #'(-2 . 2)
                                            \override Staff.Rest.transparent = ##f
                                            \revert Staff.Dots.stencil
                                            \revert Staff.Flag.stencil
                                            \revert Staff.NoteHead.duration-log
                                            \revert Staff.Stem.stencil
                                            \revert Staff.Tie.stencil
                                            \revert Staff.TimeSignature.stencil
                                            \revert Staff.TupletBracket.stencil
                                            \revert Staff.TupletNumber.stencil
                                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { violoncello ii }
                                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vc. ii }
                                            \clef "tenorvarC"
                                            <
                                                \tweak Accidental.stencil #ly:text-interface::print
                                                \tweak Accidental.text \markup { \abjad-natural  }
                                                a!
                                                \tweak Accidental.stencil #ly:text-interface::print
                                                \tweak Accidental.text \markup { \abjad-natural  }
                                                a'!
                                            >2
                                                _ #(make-dynamic-script (markup #:whiteout #:italic "sffz pp"))
                                            :32
                                            ^ \markup \center-align { \center-column { \line { \concat { +2 }  }\line { \concat { +2 }  } } }
                                            - \tweak color #darkred
                                            - \tweak padding #12
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \with-color "darkred" { "flaut. moltiss." } \hspace #0.5 }
                                            - \tweak bound-details.right.text \markup \with-color "darkred" { { \fraction 1 4 } \hspace #0.5 { scratch } }
                                            \startTextSpanThree
                                            \<
                                            <
                                                \tweak Accidental.stencil #ly:text-interface::print
                                                \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                                a!
                                                \tweak Accidental.stencil #ly:text-interface::print
                                                \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                                a'!
                                            >2
                                            \ff
                                            ^ \markup \center-align { \center-column { \line { \concat { B\raise #0.5 { \teeny \flat } -49 }  }\line { \concat { B\raise #0.5 { \teeny \flat } -49 }  } } }
                                            \stopTextSpanThree
                                        }
                                        \context Voice = "cello 2 voice time signatures"
                                        {
                                            \bar ".|:"
                                            \once \override Staff.BarLine.glyph-name = ".|:" 
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.TimeSignature.transparent = ##f
                                            \override Staff.BarLine.bar-extent = #'(-2 . 2)
                                            \override Staff.Rest.transparent = ##f
                                            \revert Staff.Dots.stencil
                                            \revert Staff.Flag.stencil
                                            \revert Staff.NoteHead.duration-log
                                            \revert Staff.Stem.stencil
                                            \revert Staff.Tie.stencil
                                            \revert Staff.TimeSignature.stencil
                                            \revert Staff.TupletBracket.stencil
                                            \revert Staff.TupletNumber.stencil
                                            \time 4/8
                                            \voiceTwo
                                            s1 * 1/2
                                            \once \override Staff.BarLine.glyph-name = "|" 
                                            \once \override Staff.BarLine.glyph-name = "|" 
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.TimeSignature.stencil = ##f
                                            \once \override Staff.TimeSignature.stencil = ##f
                                            \once \override Staff.TimeSignature.transparent = ##f
                                            \override Staff.TimeSignature.stencil = ##f
                                            \override Staff.TimeSignature.stencil = ##f
                                            \time 4/8
                                            s1 * 1/2
                                            \once \override Staff.BarLine.glyph-name = ":|." 
                                            \once \override Staff.BarLine.glyph-name = ":|." 
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.BarLine.transparent = ##f
                                            \override Staff.Dots.stencil = ##f
                                            \override Staff.Dots.stencil = ##f
                                            \override Staff.Flag.stencil = ##f
                                            \override Staff.Flag.stencil = ##f
                                            \override Staff.NoteHead.duration-log = 2
                                            \override Staff.NoteHead.duration-log = 2
                                            \override Staff.Rest.transparent = ##t
                                            \override Staff.Rest.transparent = ##t
                                            \override Staff.Stem.stencil = ##f
                                            \override Staff.Stem.stencil = ##f
                                            \override Staff.Tie.stencil = ##f
                                            \override Staff.Tie.stencil = ##f
                                            \override Staff.TupletBracket.stencil = ##f
                                            \override Staff.TupletBracket.stencil = ##f
                                            \override Staff.TupletNumber.stencil = ##f
                                            \override Staff.TupletNumber.stencil = ##f
                                            \revert Staff.BarLine.bar-extent
                                            \revert Staff.BarLine.bar-extent
                                        }
                                    >>
                                    \oneVoice
                                }
                            }
                        }
                        \tag #'voice10
                        {
                            \context UnmeteredStaff = "cello 3 staff"
                            {
                                \context Voice = "cello 3 voice"
                                {
                                    <<
                                        \context Voice = "cello 3 voice temp"
                                        {
                                            \bar ".|:"
                                            \once \override Staff.BarLine.glyph-name = ".|:" 
                                            \once \override Staff.BarLine.transparent = ##f
                                            \override Staff.BarLine.bar-extent = #'(-2 . 2)
                                            \override Staff.Rest.transparent = ##f
                                            \revert Staff.Dots.stencil
                                            \revert Staff.Flag.stencil
                                            \revert Staff.NoteHead.duration-log
                                            \revert Staff.Stem.stencil
                                            \revert Staff.Tie.stencil
                                            \revert Staff.TimeSignature.stencil
                                            \revert Staff.TupletBracket.stencil
                                            \revert Staff.TupletNumber.stencil
                                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { violoncello iii }
                                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vc. iii }
                                            \clef "bass"
                                            <
                                                \tweak Accidental.stencil #ly:text-interface::print
                                                \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                                cs!
                                                \tweak Accidental.stencil #ly:text-interface::print
                                                \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                                cs'!
                                            >2
                                                _ #(make-dynamic-script (markup #:whiteout #:italic "sffz pp"))
                                            :32
                                            ^ \markup \center-align { \center-column { \line { \concat { -12 }  }\line { \concat { -12 }  } } }
                                            - \tweak color #darkred
                                            - \tweak padding #12
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \with-color "darkred" { "flaut. moltiss." } \hspace #0.5 }
                                            - \tweak bound-details.right.text \markup \with-color "darkred" { { \fraction 1 4 } \hspace #0.5 { scratch } }
                                            \startTextSpanThree
                                            \<
                                            <
                                                \tweak Accidental.stencil #ly:text-interface::print
                                                \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                                                cs!
                                                \tweak Accidental.stencil #ly:text-interface::print
                                                \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                                                cs'!
                                            >2
                                            \ff
                                            ^ \markup \center-align { \center-column { \line { \concat { C+41 }  }\line { \concat { C+41 }  } } }
                                            \stopTextSpanThree
                                        }
                                        \context Voice = "cello 3 voice time signatures"
                                        {
                                            \bar ".|:"
                                            \once \override Staff.BarLine.glyph-name = ".|:" 
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.TimeSignature.transparent = ##f
                                            \override Staff.BarLine.bar-extent = #'(-2 . 2)
                                            \override Staff.Rest.transparent = ##f
                                            \revert Staff.Dots.stencil
                                            \revert Staff.Flag.stencil
                                            \revert Staff.NoteHead.duration-log
                                            \revert Staff.Stem.stencil
                                            \revert Staff.Tie.stencil
                                            \revert Staff.TimeSignature.stencil
                                            \revert Staff.TupletBracket.stencil
                                            \revert Staff.TupletNumber.stencil
                                            \time 4/8
                                            \voiceTwo
                                            s1 * 1/2
                                            \once \override Staff.BarLine.glyph-name = "|" 
                                            \once \override Staff.BarLine.glyph-name = "|" 
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.TimeSignature.stencil = ##f
                                            \once \override Staff.TimeSignature.stencil = ##f
                                            \once \override Staff.TimeSignature.transparent = ##f
                                            \override Staff.TimeSignature.stencil = ##f
                                            \override Staff.TimeSignature.stencil = ##f
                                            \time 4/8
                                            s1 * 1/2
                                            \once \override Staff.BarLine.glyph-name = ":|." 
                                            \once \override Staff.BarLine.glyph-name = ":|." 
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.BarLine.transparent = ##f
                                            \override Staff.Dots.stencil = ##f
                                            \override Staff.Dots.stencil = ##f
                                            \override Staff.Flag.stencil = ##f
                                            \override Staff.Flag.stencil = ##f
                                            \override Staff.NoteHead.duration-log = 2
                                            \override Staff.NoteHead.duration-log = 2
                                            \override Staff.Rest.transparent = ##t
                                            \override Staff.Rest.transparent = ##t
                                            \override Staff.Stem.stencil = ##f
                                            \override Staff.Stem.stencil = ##f
                                            \override Staff.Tie.stencil = ##f
                                            \override Staff.Tie.stencil = ##f
                                            \override Staff.TupletBracket.stencil = ##f
                                            \override Staff.TupletBracket.stencil = ##f
                                            \override Staff.TupletNumber.stencil = ##f
                                            \override Staff.TupletNumber.stencil = ##f
                                            \revert Staff.BarLine.bar-extent
                                            \revert Staff.BarLine.bar-extent
                                        }
                                    >>
                                    \oneVoice
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
                                    <<
                                        \context Voice = "tenortrombone voice temp"
                                        {
                                              %! +SCORE
                                            \once \override Staff.BarLine.transparent = ##f
                                              %! +SCORE
                                            \once \override Staff.BarLine.transparent = ##f
                                              %! +SCORE
                                            \once \override Staff.BarLine.transparent = ##f
                                              %! +SCORE
                                            \once \override Staff.BarLine.transparent = ##f
                                              %! +SCORE
                                            \once \override Staff.BarLine.transparent = ##f
                                              %! +SCORE
                                            \once \override Staff.BarLine.transparent = ##f
                                              %! +SCORE
                                            \once \override Staff.BarLine.transparent = ##f
                                              %! +SCORE
                                            \once \override Staff.BarLine.transparent = ##f
                                            \bar ".|:"
                                              %! +SCORE
                                            \once \override MultiMeasureRest.transparent = ##t
                                              %! +SCORE
                                            \once \override MultiMeasureRest.transparent = ##t
                                              %! +SCORE
                                            \once \override MultiMeasureRest.transparent = ##t
                                              %! +SCORE
                                            \once \override MultiMeasureRest.transparent = ##t
                                              %! +SCORE
                                            \once \override MultiMeasureRest.transparent = ##t
                                              %! +SCORE
                                            \once \override MultiMeasureRest.transparent = ##t
                                              %! +SCORE
                                            \once \override MultiMeasureRest.transparent = ##t
                                              %! +SCORE
                                            \once \override MultiMeasureRest.transparent = ##t
                                              %! +SCORE
                                            \once \override Rest.transparent = ##t
                                              %! +SCORE
                                            \once \override Rest.transparent = ##t
                                              %! +SCORE
                                            \once \override Rest.transparent = ##t
                                              %! +SCORE
                                            \once \override Rest.transparent = ##t
                                              %! +SCORE
                                            \once \override Rest.transparent = ##t
                                              %! +SCORE
                                            \once \override Rest.transparent = ##t
                                              %! +SCORE
                                            \once \override Rest.transparent = ##t
                                              %! +SCORE
                                            \once \override Rest.transparent = ##t
                                            \once \override Staff.BarLine.glyph-name = ".|:" 
                                            \once \override Staff.BarLine.transparent = ##f
                                              %! +SCORE
                                            \once \override Staff.TimeSignature.stencil = ##f
                                              %! +SCORE
                                            \once \override Staff.TimeSignature.stencil = ##f
                                              %! +SCORE
                                            \once \override Staff.TimeSignature.stencil = ##f
                                              %! +SCORE
                                            \once \override Staff.TimeSignature.stencil = ##f
                                              %! +SCORE
                                            \once \override Staff.TimeSignature.stencil = ##f
                                              %! +SCORE
                                            \once \override Staff.TimeSignature.stencil = ##f
                                              %! +SCORE
                                            \once \override Staff.TimeSignature.stencil = ##f
                                              %! +SCORE
                                            \once \override Staff.TimeSignature.stencil = ##f
                                            \override Staff.BarLine.bar-extent = #'(-2 . 2)
                                            \override Staff.Rest.transparent = ##f
                                            \revert Staff.Dots.stencil
                                            \revert Staff.Flag.stencil
                                            \revert Staff.NoteHead.duration-log
                                            \revert Staff.Stem.stencil
                                            \revert Staff.Tie.stencil
                                            \revert Staff.TimeSignature.stencil
                                            \revert Staff.TupletBracket.stencil
                                            \revert Staff.TupletNumber.stencil
                                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { tenor trombone }
                                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { t. tbn. }
                                              %! +SCORE
                                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                              %! +SCORE
                                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                              %! +SCORE
                                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                              %! +SCORE
                                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                              %! +SCORE
                                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                              %! +SCORE
                                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                              %! +SCORE
                                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                              %! +SCORE
                                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                            R1 * 1/2
                                              %! +SCORE
                                            \stopStaff \startStaff
                                              %! +SCORE
                                            \stopStaff \startStaff
                                              %! +SCORE
                                            \stopStaff \startStaff
                                              %! +SCORE
                                            \stopStaff \startStaff
                                              %! +SCORE
                                            \stopStaff \startStaff
                                              %! +SCORE
                                            \stopStaff \startStaff
                                              %! +SCORE
                                            \stopStaff \startStaff
                                              %! +SCORE
                                            \stopStaff \startStaff
                                              %! +SCORE
                                            \once \override Staff.BarLine.glyph-name = "!" 
                                              %! +SCORE
                                            \once \override Staff.BarLine.glyph-name = "!" 
                                              %! +SCORE
                                            \once \override Staff.BarLine.glyph-name = "!" 
                                              %! +SCORE
                                            \once \override Staff.BarLine.glyph-name = "!" 
                                              %! +SCORE
                                            \once \override Staff.BarLine.glyph-name = "!" 
                                              %! +SCORE
                                            \once \override Staff.BarLine.glyph-name = "!" 
                                              %! +SCORE
                                            \once \override Staff.BarLine.glyph-name = "!" 
                                              %! +SCORE
                                            \once \override Staff.BarLine.glyph-name = "!" 
                                              %! +SCORE
                                            \once \override Staff.BarLine.hair-thickness = 1 
                                              %! +SCORE
                                            \once \override Staff.BarLine.hair-thickness = 1 
                                              %! +SCORE
                                            \once \override Staff.BarLine.hair-thickness = 1 
                                              %! +SCORE
                                            \once \override Staff.BarLine.hair-thickness = 1 
                                              %! +SCORE
                                            \once \override Staff.BarLine.hair-thickness = 1 
                                              %! +SCORE
                                            \once \override Staff.BarLine.hair-thickness = 1 
                                              %! +SCORE
                                            \once \override Staff.BarLine.hair-thickness = 1 
                                              %! +SCORE
                                            \once \override Staff.BarLine.hair-thickness = 1 
                                            R1 * 1/2
                                        }
                                        \context Voice = "tenortrombone voice time signatures"
                                        {
                                            \bar ".|:"
                                            \once \override Staff.BarLine.glyph-name = ".|:" 
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.TimeSignature.transparent = ##f
                                            \override Staff.BarLine.bar-extent = #'(-2 . 2)
                                            \override Staff.Rest.transparent = ##f
                                            \revert Staff.Dots.stencil
                                            \revert Staff.Flag.stencil
                                            \revert Staff.NoteHead.duration-log
                                            \revert Staff.Stem.stencil
                                            \revert Staff.Tie.stencil
                                            \revert Staff.TimeSignature.stencil
                                            \revert Staff.TupletBracket.stencil
                                            \revert Staff.TupletNumber.stencil
                                            \time 4/8
                                            \voiceTwo
                                            s1 * 1/2
                                            \once \override Staff.BarLine.glyph-name = "|" 
                                            \once \override Staff.BarLine.glyph-name = "|" 
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.TimeSignature.stencil = ##f
                                            \once \override Staff.TimeSignature.stencil = ##f
                                            \once \override Staff.TimeSignature.transparent = ##f
                                            \override Staff.TimeSignature.stencil = ##f
                                            \override Staff.TimeSignature.stencil = ##f
                                            \time 4/8
                                            s1 * 1/2
                                            \once \override Staff.BarLine.glyph-name = ":|." 
                                            \once \override Staff.BarLine.glyph-name = ":|." 
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.BarLine.transparent = ##f
                                            \override Staff.Dots.stencil = ##f
                                            \override Staff.Dots.stencil = ##f
                                            \override Staff.Flag.stencil = ##f
                                            \override Staff.Flag.stencil = ##f
                                            \override Staff.NoteHead.duration-log = 2
                                            \override Staff.NoteHead.duration-log = 2
                                            \override Staff.Rest.transparent = ##t
                                            \override Staff.Rest.transparent = ##t
                                            \override Staff.Stem.stencil = ##f
                                            \override Staff.Stem.stencil = ##f
                                            \override Staff.Tie.stencil = ##f
                                            \override Staff.Tie.stencil = ##f
                                            \override Staff.TupletBracket.stencil = ##f
                                            \override Staff.TupletBracket.stencil = ##f
                                            \override Staff.TupletNumber.stencil = ##f
                                            \override Staff.TupletNumber.stencil = ##f
                                            \revert Staff.BarLine.bar-extent
                                            \revert Staff.BarLine.bar-extent
                                        }
                                    >>
                                    \oneVoice
                                }
                            }
                        }
                        \tag #'voice12
                        {
                            \context UnmeteredStaff = "basstrombone staff"
                            {
                                \context Voice = "basstrombone voice"
                                {
                                    <<
                                        \context Voice = "basstrombone voice temp"
                                        {
                                              %! +SCORE
                                            \once \override Staff.BarLine.transparent = ##f
                                              %! +SCORE
                                            \once \override Staff.BarLine.transparent = ##f
                                              %! +SCORE
                                            \once \override Staff.BarLine.transparent = ##f
                                              %! +SCORE
                                            \once \override Staff.BarLine.transparent = ##f
                                              %! +SCORE
                                            \once \override Staff.BarLine.transparent = ##f
                                              %! +SCORE
                                            \once \override Staff.BarLine.transparent = ##f
                                              %! +SCORE
                                            \once \override Staff.BarLine.transparent = ##f
                                              %! +SCORE
                                            \once \override Staff.BarLine.transparent = ##f
                                            \bar ".|:"
                                              %! +SCORE
                                            \once \override MultiMeasureRest.transparent = ##t
                                              %! +SCORE
                                            \once \override MultiMeasureRest.transparent = ##t
                                              %! +SCORE
                                            \once \override MultiMeasureRest.transparent = ##t
                                              %! +SCORE
                                            \once \override MultiMeasureRest.transparent = ##t
                                              %! +SCORE
                                            \once \override MultiMeasureRest.transparent = ##t
                                              %! +SCORE
                                            \once \override MultiMeasureRest.transparent = ##t
                                              %! +SCORE
                                            \once \override MultiMeasureRest.transparent = ##t
                                              %! +SCORE
                                            \once \override MultiMeasureRest.transparent = ##t
                                              %! +SCORE
                                            \once \override Rest.transparent = ##t
                                              %! +SCORE
                                            \once \override Rest.transparent = ##t
                                              %! +SCORE
                                            \once \override Rest.transparent = ##t
                                              %! +SCORE
                                            \once \override Rest.transparent = ##t
                                              %! +SCORE
                                            \once \override Rest.transparent = ##t
                                              %! +SCORE
                                            \once \override Rest.transparent = ##t
                                              %! +SCORE
                                            \once \override Rest.transparent = ##t
                                              %! +SCORE
                                            \once \override Rest.transparent = ##t
                                            \once \override Staff.BarLine.glyph-name = ".|:" 
                                            \once \override Staff.BarLine.transparent = ##f
                                              %! +SCORE
                                            \once \override Staff.TimeSignature.stencil = ##f
                                              %! +SCORE
                                            \once \override Staff.TimeSignature.stencil = ##f
                                              %! +SCORE
                                            \once \override Staff.TimeSignature.stencil = ##f
                                              %! +SCORE
                                            \once \override Staff.TimeSignature.stencil = ##f
                                              %! +SCORE
                                            \once \override Staff.TimeSignature.stencil = ##f
                                              %! +SCORE
                                            \once \override Staff.TimeSignature.stencil = ##f
                                              %! +SCORE
                                            \once \override Staff.TimeSignature.stencil = ##f
                                              %! +SCORE
                                            \once \override Staff.TimeSignature.stencil = ##f
                                            \override Staff.BarLine.bar-extent = #'(-2 . 2)
                                            \override Staff.Rest.transparent = ##f
                                            \revert Staff.Dots.stencil
                                            \revert Staff.Flag.stencil
                                            \revert Staff.NoteHead.duration-log
                                            \revert Staff.Stem.stencil
                                            \revert Staff.Tie.stencil
                                            \revert Staff.TimeSignature.stencil
                                            \revert Staff.TupletBracket.stencil
                                            \revert Staff.TupletNumber.stencil
                                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { bass trombone }
                                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { b. tbn. }
                                              %! +SCORE
                                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                              %! +SCORE
                                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                              %! +SCORE
                                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                              %! +SCORE
                                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                              %! +SCORE
                                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                              %! +SCORE
                                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                              %! +SCORE
                                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                              %! +SCORE
                                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                            R1 * 1/2
                                              %! +SCORE
                                            \stopStaff \startStaff
                                              %! +SCORE
                                            \stopStaff \startStaff
                                              %! +SCORE
                                            \stopStaff \startStaff
                                              %! +SCORE
                                            \stopStaff \startStaff
                                              %! +SCORE
                                            \stopStaff \startStaff
                                              %! +SCORE
                                            \stopStaff \startStaff
                                              %! +SCORE
                                            \stopStaff \startStaff
                                              %! +SCORE
                                            \stopStaff \startStaff
                                              %! +SCORE
                                            \once \override Staff.BarLine.glyph-name = "!" 
                                              %! +SCORE
                                            \once \override Staff.BarLine.glyph-name = "!" 
                                              %! +SCORE
                                            \once \override Staff.BarLine.glyph-name = "!" 
                                              %! +SCORE
                                            \once \override Staff.BarLine.glyph-name = "!" 
                                              %! +SCORE
                                            \once \override Staff.BarLine.glyph-name = "!" 
                                              %! +SCORE
                                            \once \override Staff.BarLine.glyph-name = "!" 
                                              %! +SCORE
                                            \once \override Staff.BarLine.glyph-name = "!" 
                                              %! +SCORE
                                            \once \override Staff.BarLine.glyph-name = "!" 
                                              %! +SCORE
                                            \once \override Staff.BarLine.hair-thickness = 1 
                                              %! +SCORE
                                            \once \override Staff.BarLine.hair-thickness = 1 
                                              %! +SCORE
                                            \once \override Staff.BarLine.hair-thickness = 1 
                                              %! +SCORE
                                            \once \override Staff.BarLine.hair-thickness = 1 
                                              %! +SCORE
                                            \once \override Staff.BarLine.hair-thickness = 1 
                                              %! +SCORE
                                            \once \override Staff.BarLine.hair-thickness = 1 
                                              %! +SCORE
                                            \once \override Staff.BarLine.hair-thickness = 1 
                                              %! +SCORE
                                            \once \override Staff.BarLine.hair-thickness = 1 
                                            R1 * 1/2
                                        }
                                        \context Voice = "basstrombone voice time signatures"
                                        {
                                            \bar ".|:"
                                            \once \override Staff.BarLine.glyph-name = ".|:" 
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.TimeSignature.transparent = ##f
                                            \override Staff.BarLine.bar-extent = #'(-2 . 2)
                                            \override Staff.Rest.transparent = ##f
                                            \revert Staff.Dots.stencil
                                            \revert Staff.Flag.stencil
                                            \revert Staff.NoteHead.duration-log
                                            \revert Staff.Stem.stencil
                                            \revert Staff.Tie.stencil
                                            \revert Staff.TimeSignature.stencil
                                            \revert Staff.TupletBracket.stencil
                                            \revert Staff.TupletNumber.stencil
                                            \time 4/8
                                            \voiceTwo
                                            s1 * 1/2
                                            \once \override Staff.BarLine.glyph-name = "|" 
                                            \once \override Staff.BarLine.glyph-name = "|" 
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.TimeSignature.stencil = ##f
                                            \once \override Staff.TimeSignature.stencil = ##f
                                            \once \override Staff.TimeSignature.transparent = ##f
                                            \override Staff.TimeSignature.stencil = ##f
                                            \override Staff.TimeSignature.stencil = ##f
                                            \time 4/8
                                            s1 * 1/2
                                            \once \override Staff.BarLine.glyph-name = ":|." 
                                            \once \override Staff.BarLine.glyph-name = ":|." 
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.BarLine.transparent = ##f
                                            \override Staff.Dots.stencil = ##f
                                            \override Staff.Dots.stencil = ##f
                                            \override Staff.Flag.stencil = ##f
                                            \override Staff.Flag.stencil = ##f
                                            \override Staff.NoteHead.duration-log = 2
                                            \override Staff.NoteHead.duration-log = 2
                                            \override Staff.Rest.transparent = ##t
                                            \override Staff.Rest.transparent = ##t
                                            \override Staff.Stem.stencil = ##f
                                            \override Staff.Stem.stencil = ##f
                                            \override Staff.Tie.stencil = ##f
                                            \override Staff.Tie.stencil = ##f
                                            \override Staff.TupletBracket.stencil = ##f
                                            \override Staff.TupletBracket.stencil = ##f
                                            \override Staff.TupletNumber.stencil = ##f
                                            \override Staff.TupletNumber.stencil = ##f
                                            \revert Staff.BarLine.bar-extent
                                            \revert Staff.BarLine.bar-extent
                                        }
                                    >>
                                    \oneVoice
                                }
                            }
                        }
                        \tag #'voice13
                        {
                            \context UnmeteredStaff = "percussion 2 staff"
                            {
                                \context Voice = "percussion 2 voice"
                                {
                                    <<
                                        \context Voice = "percussion 2 voice temp"
                                        {
                                            \bar ".|:"
                                            \once \override Staff.BarLine.glyph-name = ".|:" 
                                            \once \override Staff.BarLine.transparent = ##f
                                            \override Staff.BarLine.bar-extent = #'(-2 . 2)
                                            \override Staff.Rest.transparent = ##f
                                            \revert Staff.Dots.stencil
                                            \revert Staff.Flag.stencil
                                            \revert Staff.NoteHead.duration-log
                                            \revert Staff.Stem.stencil
                                            \revert Staff.Tie.stencil
                                            \revert Staff.TimeSignature.stencil
                                            \revert Staff.TupletBracket.stencil
                                            \revert Staff.TupletNumber.stencil
                                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { percussion ii }
                                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { perc. ii }
                                            \boxed-markup "Marimba" 1
                                            \clef "bass"
                                            \afterGrace
                                            <d, d d' d''>2
                                                _ #(make-dynamic-script (markup #:whiteout #:italic "sfffz mf"))
                                            :32
                                            - \accent
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            \>
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
                                                <d, d d' d''>16
                                                :128
                                                \p
                                            }
                                            \afterGrace
                                            <e, e e' e''>2
                                                _ #(make-dynamic-script (markup #:whiteout #:italic "sfffz mf"))
                                            :32
                                            - \accent
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            \>
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
                                                <e, e e' e''>16
                                                :128
                                                \p
                                            }
                                        }
                                        \context Voice = "percussion 2 voice time signatures"
                                        {
                                            \bar ".|:"
                                            \once \override Staff.BarLine.glyph-name = ".|:" 
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.TimeSignature.transparent = ##f
                                            \override Staff.BarLine.bar-extent = #'(-2 . 2)
                                            \override Staff.Rest.transparent = ##f
                                            \revert Staff.Dots.stencil
                                            \revert Staff.Flag.stencil
                                            \revert Staff.NoteHead.duration-log
                                            \revert Staff.Stem.stencil
                                            \revert Staff.Tie.stencil
                                            \revert Staff.TimeSignature.stencil
                                            \revert Staff.TupletBracket.stencil
                                            \revert Staff.TupletNumber.stencil
                                            \time 4/8
                                            \voiceTwo
                                            s1 * 1/2
                                            \once \override Staff.BarLine.glyph-name = "|" 
                                            \once \override Staff.BarLine.glyph-name = "|" 
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.TimeSignature.stencil = ##f
                                            \once \override Staff.TimeSignature.stencil = ##f
                                            \once \override Staff.TimeSignature.transparent = ##f
                                            \override Staff.TimeSignature.stencil = ##f
                                            \override Staff.TimeSignature.stencil = ##f
                                            \time 4/8
                                            s1 * 1/2
                                            \once \override Staff.BarLine.glyph-name = ":|." 
                                            \once \override Staff.BarLine.glyph-name = ":|." 
                                            \once \override Staff.BarLine.transparent = ##f
                                            \once \override Staff.BarLine.transparent = ##f
                                            \override Staff.Dots.stencil = ##f
                                            \override Staff.Dots.stencil = ##f
                                            \override Staff.Flag.stencil = ##f
                                            \override Staff.Flag.stencil = ##f
                                            \override Staff.NoteHead.duration-log = 2
                                            \override Staff.NoteHead.duration-log = 2
                                            \override Staff.Rest.transparent = ##t
                                            \override Staff.Rest.transparent = ##t
                                            \override Staff.Stem.stencil = ##f
                                            \override Staff.Stem.stencil = ##f
                                            \override Staff.Tie.stencil = ##f
                                            \override Staff.Tie.stencil = ##f
                                            \override Staff.TupletBracket.stencil = ##f
                                            \override Staff.TupletBracket.stencil = ##f
                                            \override Staff.TupletNumber.stencil = ##f
                                            \override Staff.TupletNumber.stencil = ##f
                                            \revert Staff.BarLine.bar-extent
                                            \revert Staff.BarLine.bar-extent
                                        }
                                    >>
                                    \oneVoice
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
