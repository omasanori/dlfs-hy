#!/usr/bin/env hy

; From section 1.6.2

(import numpy :as np)
(import matplotlib.pyplot :as plt)

(let [x (np.arange 0 6 0.1)
      y1 (np.sin x)
      y2 (np.cos x)]
  (plt.plot x y1 :label "sin")
  (plt.plot x y2 :linestyle "--" :label "cos")
  (plt.xlabel "x")
  (plt.ylabel "y")
  (plt.title "sin & cos")
  (plt.legend)
  (plt.show))
