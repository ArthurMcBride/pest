\version "2.18.2"

\header {
  title = "Pest"
  composer = "Devin Gonzales"
  poet = "Gregory Gonzales"
  copyright = "2017"
  tagline = ##f
}

global = {
  \key f \major
  \time 4/4
  \tempo 4 = 110
}

tenorVoice = \relative c' {
\global
\dynamicUp
  r1 |%m1
  r1 |%m2
  r1 |%m3
  r1 |%m4
  r1 |%m5
  r1 |%m6
  r1 |%m7
  r1 |%m8

}

verse = \lyricmode {
  % Lyrics follow here.

}

classicalGuitar = \relative c' {
  \global
% all bar breaks and repeats within voice one
  r1 |%m1
  %begin two voices
<<{r8 a d a f' a, d a |%m2
  r8  a d a f' a, d a |%m3
  r8 a d a e' a, d a |%m4
    \break
  r8 a d a e' a, d a |%m5
  r8 a d a f' a, d a |%m6
  r8 g b g fis' g, b g |%m7
  r8 g b g g' g, b g |%m8
    }\\{
  a,1 |%m2
  a1 |%m3
  e1 |%m4
  e1 |%m5
  a1 |%m6
  g1 |%m7
  g1
}>> |%m8}
  d'2 e4 bes4 |%m9
  < g bes' > 2 < bes g' > |%m10
  < e, g' > 2 bes''4 a |%m11
  < bes, d' > 2 < d bes' > |%m12
  < f, a' > 2 < a f' > |%m13
%two voices start again
<<{r4 c' a e |%m14
   fis1 |%m15
    }\\{
   a,1 |%m14
   d,1 |%15
}>>
   e''4 d4 c2 |%m16
 <<{  a1 |%m17
   r8 d f d r8 d f d|%m18
   r8 a c a r8 a c a |%m19
}\\{
  f,1 |%m17
  d'2 a2 |%m18
  f2 a2 |%19
    }>>
}

right = \relative c'' {
\global
%changed first 8 measures to dotted half 
  e2. c4 |%m1
  g2. b4 |%m2
  e,2. g4 |%m3
  b2. c4 |%m4
  b2. d4 |%m5
  f,2. a4 |%m6
  g2. fis4 |%m7
  g2. b4 |%m8
  f2 c |%m9
  bes2 d |%m10
  bes4 d e2 |%m11
  d2. e4 |%m12
  a2 f |%m13
  a2 c |%m14
  fis,1 |%m15
  c2 c~ |%m16
  c1 |%m17
  d1 |%m18


}

left = \relative c' {
\global
  c,2 a' |%1
  e2 g |%m2
  c,2 e |%m3
  g,2 a |%m4
  g2 b |%m5
  d2 f |%m6
  r1 |%m7
  r1 |%m8
  e2 a, |%m9
  g4 a bes2 |%m10
  e bes |%m11
  bes2 d |%m12
  f2 c |%m13
  a2 c |%m14
  d2. g,4 |%m15
  a2 bes4 a |%m16
  f1 |%m17
  d2 f4 g |%m18
  a2 g4 f |%m19
  e2 f4 g |%m20

  }

tenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  midiInstrument = "choir aahs"
} { \clef "treble_8" \tenorVoice }
\addlyrics { \verse }

classicalGuitarPart = \new Staff \with {
  midiInstrument = "acoustic guitar (nylon)"
  instrumentName = "Guitar"
} { \clef "treble_8" \classicalGuitar }
pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \right
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \left }
>>

\score {
  <<
    \tenorVoicePart
    \classicalGuitarPart
    \pianoPart
  >>
  \layout { }
  \midi {
    \tempo 4=110
  }
}
