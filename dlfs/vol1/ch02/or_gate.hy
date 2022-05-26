#!/usr/bin/env hy

; From section 2.3.3

(import numpy :as np)

(defn OR [x1 x2]
  (let [x (np.array [x1 x2])
        w (np.array [0.5 0.5])
        b -0.2]
    (if (<= (+ (np.sum (* x w)) b) 0)
      0
      1)))

(when (= __name__ "__main__")
  (for [xs [#(0 0) #(1 0) #(0 1) #(1 1)]]
    (let [y (OR (get xs 0) (get xs 1))]
      (print (str xs) " -> " (str y)))))
