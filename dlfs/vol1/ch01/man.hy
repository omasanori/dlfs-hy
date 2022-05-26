#!/usr/bin/env hy

; From section 1.4.2

(defclass Man []
  (defn __init__ [self name]
    (setv self.name name)
    (print "Initialized!"))

  (defn hello [self]
    (print (+ "Hello " self.name "!")))

  (defn goodbye [self]
    (print (+ "Good-bye " self.name "!"))))

(setv m (Man "David"))
(.hello m)
(.goodbye m)
