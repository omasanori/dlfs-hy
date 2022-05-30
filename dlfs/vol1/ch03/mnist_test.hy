#!/usr/bin/env hy

; From section 3.6.1

(import os.path [dirname realpath])
(import sys)

(.append sys.path (+ (dirname (realpath __file__)) "/../"))
(import dataset.mnist [load-mnist])

(let [[[x-train t-train] [x-test t-test]] (load-mnist :flatten True
                                                      :normalize False)]
  (print x-train.shape)
  (print t-train.shape)
  (print x-test.shape)
  (print t-test.shape))
