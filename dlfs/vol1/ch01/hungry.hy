#!/usr/bin/env hy

; From section 1.3.7

(setv hungry True)
;(setv hungry False)

(if hungry
  (print "I'm hungry")
  (do
    (print "I'm not hungry")
    (print "I'm sleepy")))
