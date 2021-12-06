#lang racket

(define
  (adv1 depths)
  (second
   (foldl
    (lambda (a b)
      (if (> a (first b))
        (list a (+ (second b) 1))
        (list a (second b))
      )
    )
    (list (first depths) 0)
    depths
    )
  )
)

(adv1 '(199 200 208 210 200 207 240 269 260 263))
