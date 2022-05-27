#!/usr/bin/env hy

; From section 3.2.3

(import numpy :as np)
(import matplotlib.pyplot :as plt)

(defn step-function [x]
  (np.array (> x 0) :dtype int))

(when (= __name__ "__main__")
  (let [x (np.arange -5.0 5.0 0.1)
        y (step-function x)]
    (plt.plot x y)
    (plt.ylim -0.1 1.1)
    (plt.savefig "step_function.png")))
