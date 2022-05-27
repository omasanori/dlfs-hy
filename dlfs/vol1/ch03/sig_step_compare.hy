#!/usr/bin/env hy

; From section 3.2.5

(import numpy :as np)
(import matplotlib.pyplot :as plt)

(import step-function [step-function])
(import sigmoid [sigmoid])

(when (= __name__ "__main__")
  (let [x (np.arange -5.0 5.0 0.1)
        y1 (sigmoid x)
        y2 (step-function x)]
    (plt.plot x y1)
    (plt.plot x y2 :linestyle "--")
    (plt.ylim -0.1 1.1)
    (plt.savefig "sig_step_compare.png")))
