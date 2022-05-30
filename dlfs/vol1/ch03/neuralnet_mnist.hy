#!/usr/bin/env hy

; From section 3.6.2

(import os.path [dirname realpath])
(import pickle sys)

(import numpy :as np)

(.append sys.path (+ (dirname (realpath __file__)) "/../"))
(import dataset.mnist [load-mnist])
(import common.functions [sigmoid softmax])

(defn get-data []
  (let [[[x-train t-train] [x-test t-test]] (load-mnist :normalize True
                                                        :flatten True
                                                        :one-hot-label False)]
    (, x-test t-test)))

(defn init-network []
  (with [f (open (+ (dirname (realpath __file__)) "/sample_weight.pkl") "rb")]
    (pickle.load f)))

(defn predict [network x]
  (let [W1 (get network "W1") W2 (get network "W2") W3 (get network "W3")
        b1 (get network "b1") b2 (get network "b2") b3 (get network "b3")]
    (setv a1 (+ (np.dot x W1) b1))
    (setv z1 (sigmoid a1))
    (setv a2 (+ (np.dot z1 W2) b2))
    (setv z2 (sigmoid a2))
    (setv a3 (+ (np.dot z2 W3) b3))
    (setv y (softmax a3))
    y))

(when (= __name__ "__main__")
  (let [[x t] (get-data)
        network (init-network)]
    (setv accuracy-cnt 0)
    (for [i (range (len x))]
      (setv y (predict network (get x i)))
      (setv p (np.argmax y))
      (when (= p (get t i))
        (+= accuracy-cnt 1)))
    (print (+ "Accuracy: " (str (/ (float accuracy-cnt) (len x)))))))
