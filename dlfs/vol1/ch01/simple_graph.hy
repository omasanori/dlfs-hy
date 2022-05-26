#!/usr/bin/env hy

; From section 1.6.1

(import numpy :as np)
(import matplotlib.pyplot :as plt)

(let [x (np.arange 0 6 0.1)
      y (np.sin x)]
  (plt.plot x y)
  (plt.savefig "simple_graph.png"))
