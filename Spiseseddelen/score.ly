\version "2.18.2"

\include "../Layout/main.ly"

\include "../Plugins/merge-rests.ily"
\include "voices.ly"

\include "lyrics-no.ly"
%\include "lyrics-de.ly"

\header {
  copyright = "Eivind Michael Skretting"
  title = "Spiseseddelen"
  composer = "C. Zöllner"
}

\layout {
  \context { \Score
             skipBars = ##t
  }
}

% The score definition
\score {
  <<
    \new ChoirStaff
    <<
      \new Staff
      <<
        \clef bass
        \set Staff.instrumentName = "Solo"
        \context Staff <<
          \context Voice = "Solo" { \Solo }
          \new Lyrics \lyricsto "Solo" \SoloLyrics
        >>
      >>
      \new Staff <<
        \key bes \major
        \mergeRestsOn
        \set Staff.instrumentName = "Tenor"
        \context Staff <<
          \context Voice = "TenorOne" { \voiceOne \TenorOne }
          \new Lyrics \lyricsto "TenorOne" \TenorOneLyrics
          \context Voice = "TenorTwo" { \voiceTwo \TenorTwo }
          \new Lyrics \lyricsto "TenorTwo" \TenorTwoLyrics
        >>
      >>
      \new Staff <<
        \key bes \major
        \clef bass
        \mergeRestsOn
        \set Staff.instrumentName = "Bass"
        \context Staff <<
          \context Voice = "BassOne" { \voiceOne \BassOne }
          %\new Lyrics \lyricsto "BassOne" \BassOneLyrics
          \context Voice = "BassTwo" { \voiceTwo \BassTwo }
        >>
      >>
    >>
  >>
  \layout {}
  \midi {}
}
