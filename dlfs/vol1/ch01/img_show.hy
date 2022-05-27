#!/usr/bin/env hy

; From 1.6.3

(import os.path [dirname realpath])

(import matplotlib.pyplot :as plt)
(import matplotlib.image [imread])

(setv dataset (+ (dirname (realpath __file__)) "/../dataset"))

(let [img (imread (+ dataset "/lena.png"))]
  (plt.imshow img)
  (plt.savefig "img_show.png"))
