\version "2.18.2"

\header {
  title = "Pest"
  composer = "Devin Gonzales"
  poet = "Gregory Gonzales"
  copyright = "v.0.20171116.2"
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
  r2 d,4 a'|%m9
  g2 e |%m10
  e2 g4 bes |%m11
  r4 c d bes |%m12
  g2 f2 |%m13
  d4. e8 f4 r4|%m14
  r4 a2 bes4 |%m15
  d4 c8 bes a g a4 |%m16
  r1 |%m17
  r2 a2  |%m18
  d4 c8 bes a g a4 |%m19
  r1 |%m20
  r1 |%m21
  f2 e4 f |%m22
  a2 bes |%m23
  c2. r4  |%m24
  r2 a4 g |%m25
  f a c2  |%m26
  a4 bes8 g f4 r4 |%m27
  a4 c2 bes4

}

verse = \lyricmode {
  % Lyrics follow here.
  I'm a  lo -- ner,  not rec -- luse
  I have no  ex -- o -- ske -- le -- ton
  if you flick me a -- cross the room
  I won't crawl a -- way un -- scathed
  I nev -- er fright -- ened you
  by just show -- ing up
  scur -- ry -- ing from
  be -- hind an

}

classicalGuitar = \relative c' {
  \global
  r1 |%m1
  %begin two voices
<<{r8 a d a f' a, d a |%m2
  r8  a d a f' a, d a |%m3
  r8 a d a e' a, d a |%m4
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
%testing repeat of measures 15-17
<<{r4 c' a e |%m14
   fis1 |%m15
    }\\{
   a,1 |%m14
   d,1 |%15
}>>
   e''4 d4 c2 |%m16
   <<{a2 f |%m17
   fis1|%m18
    }\\{
   f,1 |%m17
   d1 |%m18
}>>
  e''4 d c2 |%m19
  <<{a1 |%m20
    r8 d f d r8 d f d|%m21
    r8 a c a r8 a c a |%m22
    r8 d f d r8 d f d |%m23
    r8 a c a r8 a c a |%m24
    r8 d f d r8 d f d |%m25
    r8 a c a r8 a c a |%m26
    r8 d f d r8 d f d |%m27
    r8 a c a r8 a c a |%m28
    }\\{
    f,1 |%m20
    d2 a'2 |%m21
    f2 a2 |%22
    e2 a2 |%m23
    f2 a2 |%m24
    c2 e,2 |%m25
    d2 a'2 |%m26
    f2 a2 |%m27
    d,2 a'2 |%m28
}>>

}

right = \relative c'' {
\global
%changed first 8 measures to dotted half and quater notes
%all bar breaks in this voice
  e2. c4 |%m1
  g2. b4 |%m2
  e,2. g4 |%m3
  b2. c4 |%m4
    \break
  b2. d4 |%m5
  <c, f>2<c a'>  |%m6
  <d b'>2. fis4 |%m7
  <g d'>2. b4 |%m8
    \break
  f2 c |%m9
  bes2 d |%m10
  bes4 d e2 |%m11
  d2. e4 |%m12
    \break
  a2 f |%m13
  a2 c |%m14
  fis,1 |%m15
  c2 c~ |%m16
    \break
  c1 |%m17
  %test repeating last three measures
  fis1 |%m18
  c2 c~ |%m19
  c1 |%m20
    \break
  <d' f,>1 |%m21 needs work going forward
  <f, c'>1 |%m22
  <d' f,>1 |%m23
  <f, c'>1 |%m24
    \break
  <f c'>1 |%m25
  <f d'>1 |%m26
  <f c'>1 |%m27
  <f d'>1 |%m28
    \break

}

left = \relative c' {
\global
  r2 a |%1
  e2 g |%m2
  c,2 e |%m3
  g,2 a |%m4
  g2 b |%m5
  d2 f |%m6
  g,2 g'|%m7
  b,2 d |%m8
  e2 a, |%m9
  g4 a bes2 |%m10
  e bes |%m11
  bes2 d |%m12
  f2 c |%m13
  a2 c |%m14
  d2. g,4 |%m15
  a2 bes4 a |%m16
  f1 |%m17
  d'2. g,4 |%m18
  a2 bes4 a |%m19
  f1 |%m20
  d2 f4 g |%m21
  a2 g4 f |%m22
  e2 f4 g |%m23
    %test baseline
  a2 c4 a |%m24
  c2 a4 f |%m25
  d2 f4 g |%m26
  a2 g4 f |%m27
    %start repeat from measure 21
  d2 f4 g |%m28
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
