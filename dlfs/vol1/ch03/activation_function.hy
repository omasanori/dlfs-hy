#!/usr/bin/env hy

(import numpy :as np)

; From section 3.2.3

(defn step-function [x]
  (np.array (> x 0) :dtype int))

; From section 3.2.4

(defn sigmoid [x]
  (/ 1 (+ 1 (np.exp (- x)))))

; From section 3.2.7

(defn relu [x]
  (np.maximum 0 x))

; From section 3.4.2

(defn identity [x]
  x)

; From section 3.5.2

(defn softmax [a]
  (let [c (np.max a)
        exp_a (np.exp (- a c))
        sum_exp_a (np.sum (exp_a))]
    (/ exp_a sum_exp_a)))

(when (= __name__ "__main__")
  (import matplotlib.pyplot :as plt)
  (let [x (np.arange -3.0 3.0 0.1)
        y1 (sigmoid x)
        y2 (step-function x)
        y3 (relu x)
        y4 (identity x)]
    (plt.plot x y1 :linestyle "solid"   :label "sigmoid")
    (plt.plot x y2 :linestyle "dashed"  :label "step")
    (plt.plot x y3 :linestyle "dashdot" :label "ReLU")
    (plt.plot x y4 :linestyle "dotted"  :label "identity")
    (plt.xlim -3 3)
    (plt.ylim -3 3)
    (plt.legend)
    (plt.savefig "activation_function.png")))
