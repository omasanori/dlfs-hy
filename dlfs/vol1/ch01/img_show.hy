#!/usr/bin/env hy

; From 1.6.3

(import matplotlib.pyplot :as plt)
(import matplotlib.image [imread])

(let [img (imread "dlfs/vol1/dataset/lena.png")]
  (plt.imshow img)
  (plt.savefig "img_show.png"))
