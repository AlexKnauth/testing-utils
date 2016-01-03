#lang scribble/manual

@(require (for-label testing-utils
                     racket/base
                     racket/contract/base
                     ))

@title{Testing Utilities}

@defmodule[testing-utils]

@defproc[(check-within [actual any/c] [expected any/c] [ok-delta (and/c real? (not/c negative?))])
         void?]{
A @racketmodname[rackunit] check form for checking values that might
have numbers somewhere inside them that are close enough, but aren't
exactly equal.
}

@defproc[(equal?/within [actual any/c] [expected any/c] [ok-delta (and/c real? (not/c negative?))])
         boolean?]{
A predicate version of @racket[check-within] that returns true on
success and false on failure.
}

@defform[(with-loc loc form)]{
A utility for making your own testing macros that report the right
source location for check failures. It simply returns @racket[form],
but with the source location of @racket[loc]. In macros, it is an
alternative to @racket[#`(.... #,(syntax/loc #'loc form) ....)].
}

