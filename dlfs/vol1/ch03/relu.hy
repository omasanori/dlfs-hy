#!/usr/bin/env hy

; From section 3.2.7

(import numpy :as np)
(import matplotlib.pyplot :as plt)

(defn relu [x]
  (np.maximum 0 x))

(when (= __name__ "__main__")
  (let [x (np.arange -5.0 5.0 0.1)
        y (relu x)]
    (plt.plot x y)
    (plt.xlim -6 6)
    (plt.ylim -1 6)
    (plt.savefig "relu.png")))
