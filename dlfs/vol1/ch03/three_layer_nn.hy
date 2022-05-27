#!/usr/bin/env hy

(import numpy :as np)
(import activation-function [sigmoid identity])

(defn init-network []
  (let [network {}]
    (setv (get network "W1") (np.array [[0.1 0.3 0.5] [0.2 0.4 0.6]]))
    (setv (get network "b1") (np.array [0.1 0.2 0.3]))
    (setv (get network "W2") (np.array [[0.1 0.4] [0.2 0.5] [0.3 0.6]]))
    (setv (get network "b2") (np.array [0.1 0.2]))
    (setv (get network "W3") (np.array [[0.1 0.3] [0.2 0.4]]))
    (setv (get network "b3") (np.array [0.1 0.2]))
    network))

(defn forward [network x]
  (let [W1 (get network "W1")
        W2 (get network "W2")
        W3 (get network "W3")
        b1 (get network "b1")
        b2 (get network "b2")
        b3 (get network "b3")]
    (setv a1 (+ (@ x W1) b1))
    (setv z1 (sigmoid a1))
    (setv a2 (+ (@ z1 W2) b2))
    (setv z2 (sigmoid a2))
    (setv a3 (+ (@ z2 W3) b3))
    (setv y (identity a3))
    y))

(when (= __name__ "__main__")
  (setv network (init-network))
  (setv x (np.array [1.0 0.5]))
  (setv y (forward network x))
  (print y))
