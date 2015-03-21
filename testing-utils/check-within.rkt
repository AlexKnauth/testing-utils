#lang sweet-exp racket/base

provide check-within

require rackunit
        "equal-within.rkt"

define-check check-within(a b ∆)
  check-true(equal?/within(a b ∆))

