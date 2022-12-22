\version "2.22.2"
\language "deutsch"

\paper {
   paper-height = 297\mm
   paper-width = 210\mm
   markup-markup-spacing.basic-distance = #14
}

\header {
  title = "Feuerfest!"
  subtitle = "Polka française"
  composer = "Josef Strauss"
  instrument = "Clarinetto 1 in D"
  tagline = ""
}

polka = \relative c''' {
   \transposition d'
   \time 2/4
   \common

   \partial 8 g8\f
   g,16 a h c d8 g
   c,16 d e f g8 8
   c[ g e c]
   g' r r4
   \repeat volta 2 {
     e8\p[ c e c]
     \slashedGrace c f[ e e] r
     \slashedGrace g, e'[ d d] r
     \slashedGrace g, d' c c4
     e8[ c e c]
     \slashedGrace c f[ e e] r
   }
   \alternative {
      { \slashedGrace a, e' d\< e16 d e fis
        a8 g\! g4
      }
      { \slashedGrace a,8 e' d cis16 d e fis
        g8 r r g16\f g
      }
   }

   \repeat volta 2 {
      g8[ f d h]
      c16 e c'8 8 8
      h[ h, h' h,]
      g'4. 16 16
   }
   \alternative {
      { 8[ f d h]
        c16 e c'8 8 8
        h[ e, h' e,]
        h' r r g16\f f
      }
      { g8[ g a a]
        h r r g16 g
        g8[ g a a]
        h r r g
      }
   }

   \repeat unfold 2 { g16 a h c d8 r }
   h,[ g' c, a']
   d,[ h' dis, h']
   g\ff[ e g e]

   c' g g4
   8 f d'16 h a g
   d'8 c c4
   g8[ e g e]
   a g, g16 c e f
   g8 g, g16 h d e

   \mark \markup { \musicglyph "scripts.coda" }
   c8[ e c]
    \bar "||"

}

trio = \relative c'' {
   \transposition d'
   \time 2/4
   \key f \major
   \partial 8 c8\p
   \repeat volta 2 {
     f-.[ a-. d,-. f-.]
     a, r r4
     R2
     r4 r8 c
     f[ a d, f]
     a, r r4
     f'16\f( e) e-. e-. f( e) e-. e-.
   }
   \alternative {
      { a,8[ a a] c\p }
      { a8[ a a] c\ff( }
   }
   c') f,16 a b a g f
   f8 8 r f
   r f r f
   e[ e e] r

   b' e,16 g a g f e
   e8 c r c
   r c r c
   b[ a f] c'(
   c') f,16-- a-. b a g f
   f8 f r f

   r f r f
   f[ f f] r
   b, g'16 a b a g8
   c, f16 g a g f8
   c16 d e f g a b h
   c8[ c f,]_\markup {\halign #.8 \concat {
     \vcenter "Polka da capo bis "
     \vcenter \musicglyph "scripts.coda"
     \vcenter ", dann Schluss."
   }}
   \bar "||"

}

schluss = \relative c'' {
   \time 2/4
   c8[ e c] r
   \repeat unfold 2 { r4 g'8 r }
   R2
   c,8 r r4
   \bar "|."
}

\score {
  \header {
     piece = \markup { \hspace #8 \huge "Polka" }
  }
  \new Staff { \transpose c c
    \new Voice { \polka }
  }
}

\score {
  \header {
     piece = \markup { \hspace #8 \huge "Trio" }
  }
  \new Staff { \transpose c c
    \new Voice { \trio }
  }
}

\score {
  \header {
     piece = \markup { \hspace #8 \huge "Schluss" }
  }
  \new Staff { \transpose c c
    \new Voice { \schluss }
  }
}