#!/usr/bin/env hy

; From section 2.5.2

(import and-gate [AND])
(import nand-gate [NAND])
(import or-gate [OR])

(defn XOR [x1 x2]
  (let [s1 (NAND x1 x2)
        s2 (OR x1 x2)
        y (AND s1 s2)]
    y))

(when (= __name__ "__main__")
  (for [xs [#(0 0) #(1 0) #(0 1) #(1 1)]]
    (let [y (XOR (get xs 0) (get xs 1))]
      (print (str xs) " -> " (str y)))))
