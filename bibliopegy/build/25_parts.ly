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
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { tape }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic"){ tp. }
                                    R1 * 1/2
                                    R1 * 1/2
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
                                      \raise #5 \with-dimensions-from \null
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
                                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { flute }
                                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { fl. }
                                            R1 * 1/2
                                            R1 * 1/2
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
                                              \raise #5 \with-dimensions-from \null
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
                                            R1 * 1/2
                                            R1 * 1/2
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
                                              \raise #5 \with-dimensions-from \null
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
                                              \raise #5 \with-dimensions-from \null
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
                                            R1 * 1/2
                                            R1 * 1/2
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
                                              \raise #5 \with-dimensions-from \null
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
                                            R1 * 1/2
                                            R1 * 1/2
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
                                              \raise #5 \with-dimensions-from \null
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
                                              \raise #5 \with-dimensions-from \null
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
                                              \raise #5 \with-dimensions-from \null
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
                                              \raise #5 \with-dimensions-from \null
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
                                              \raise #5 \with-dimensions-from \null
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
                                              \raise #5 \with-dimensions-from \null
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
                                            R1 * 1/2
                                            R1 * 1/2
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
                                              \raise #5 \with-dimensions-from \null
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
