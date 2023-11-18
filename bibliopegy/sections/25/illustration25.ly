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
                                    <<
                                        \context Voice = "piano voice temp temp"
                                        {
                                            \staff-line-count 3
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
                                            \voiceOne
                                            \afterGrace
                                            c'1
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
                                                c'16
                                            }
                                        }
                                        \context Voice = "theta voice"
                                        {
                                            \override NoteHead.stencil = #ly:text-interface::print
                                            \override NoteHead.text = \markup \with-color "darkmagenta" { θ }
                                            \voiceTwo
                                            \afterGrace
                                            g1
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                              %! abjad.glissando(7)
                                            - \tweak color #darkmagenta
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
                                                g16
                                            }
                                        }
                                    >>
                                    \oneVoice
                                }
                                \context Voice = "piano voice time signatures"
                                {
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
                                    ^ \markup {
                                      \raise #4 \with-dimensions-from \null
                                      \override #'(font-size . 4)
                                      \concat {
                                          \abjad-metronome-mark-markup #3 #0 #1 #"60"
                                      }
                                    }
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
                                    \once \override Staff.BarLine.glyph-name = ".|:" 
                                    \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { viola }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vla. }
                                    R1 * 1/2
                                    R1 * 1/2
                                }
                                \context Voice = "viola voice time signatures"
                                {
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
                                            ^ \markup {
                                              \raise #10.5 \with-dimensions-from \null
                                              \override #'(font-size . 4)
                                              \concat {
                                                  \abjad-metronome-mark-markup #3 #0 #1 #"60"
                                              }
                                            }
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
                                            <<
                                                \context Voice = "On_Beat_Grace_Container"
                                                {
                                                      %! abjad.on_beat_grace_container(1)
                                                    \set fontSize = #-3
                                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { bass flute }
                                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { b. fl. }
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
                                                \context Voice = "bassflute voice temp Anchor"
                                                {
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
                                        \context Voice = "bassflute voice time signatures"
                                        {
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
                                            ^ \markup {
                                              \raise #10.5 \with-dimensions-from \null
                                              \override #'(font-size . 4)
                                              \concat {
                                                  \abjad-metronome-mark-markup #3 #0 #1 #"60"
                                              }
                                            }
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
                                            R1 * 1/2
                                            R1 * 1/2
                                        }
                                        \context Voice = "violin voice time signatures"
                                        {
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
                                            ^ \markup {
                                              \raise #4 \with-dimensions-from \null
                                              \override #'(font-size . 4)
                                              \concat {
                                                  \abjad-metronome-mark-markup #3 #0 #1 #"60"
                                              }
                                            }
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
                                            ^ \markup {
                                              \raise #4 \with-dimensions-from \null
                                              \override #'(font-size . 4)
                                              \concat {
                                                  \abjad-metronome-mark-markup #3 #0 #1 #"60"
                                              }
                                            }
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
                                            ^ \markup {
                                              \raise #25 \with-dimensions-from \null
                                              \override #'(font-size . 4)
                                              \concat {
                                                  \abjad-metronome-mark-markup #3 #0 #1 #"60"
                                              }
                                            }
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
                                            R1 * 1/2
                                            R1 * 1/2
                                        }
                                        \context Voice = "cello 1 voice time signatures"
                                        {
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
                                            ^ \markup {
                                              \raise #4 \with-dimensions-from \null
                                              \override #'(font-size . 4)
                                              \concat {
                                                  \abjad-metronome-mark-markup #3 #0 #1 #"60"
                                              }
                                            }
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
                                            R1 * 1/2
                                            R1 * 1/2
                                        }
                                        \context Voice = "cello 2 voice time signatures"
                                        {
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
                                            ^ \markup {
                                              \raise #4 \with-dimensions-from \null
                                              \override #'(font-size . 4)
                                              \concat {
                                                  \abjad-metronome-mark-markup #3 #0 #1 #"60"
                                              }
                                            }
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
                                            R1 * 1/2
                                            R1 * 1/2
                                        }
                                        \context Voice = "cello 3 voice time signatures"
                                        {
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
                                            ^ \markup {
                                              \raise #4 \with-dimensions-from \null
                                              \override #'(font-size . 4)
                                              \concat {
                                                  \abjad-metronome-mark-markup #3 #0 #1 #"60"
                                              }
                                            }
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
                                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { tenor trombone }
                                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { t. tbn. }
                                            R1 * 1/2
                                            R1 * 1/2
                                        }
                                        \context Voice = "tenortrombone voice time signatures"
                                        {
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
                                            ^ \markup {
                                              \raise #4 \with-dimensions-from \null
                                              \override #'(font-size . 4)
                                              \concat {
                                                  \abjad-metronome-mark-markup #3 #0 #1 #"60"
                                              }
                                            }
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
                                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { bass trombone }
                                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { b. tbn. }
                                            R1 * 1/2
                                            R1 * 1/2
                                        }
                                        \context Voice = "basstrombone voice time signatures"
                                        {
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
                                            ^ \markup {
                                              \raise #4 \with-dimensions-from \null
                                              \override #'(font-size . 4)
                                              \concat {
                                                  \abjad-metronome-mark-markup #3 #0 #1 #"60"
                                              }
                                            }
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
                                            ^ \markup {
                                              \raise #10.5 \with-dimensions-from \null
                                              \override #'(font-size . 4)
                                              \concat {
                                                  \abjad-metronome-mark-markup #3 #0 #1 #"60"
                                              }
                                            }
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
