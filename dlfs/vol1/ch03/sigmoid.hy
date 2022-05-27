#!/usr/bin/env hy

; From section 3.2.3

(import numpy :as np)
(import matplotlib.pyplot :as plt)

(defn sigmoid [x]
  (/ 1 (+ 1 (np.exp (- x)))))

(let [x (np.arange -5.0 5.0 0.1)
      y (sigmoid x)]
  (plt.plot x y)
  (plt.ylim -0.1 1.1)
  (plt.savefig "sigmoid.png"))
