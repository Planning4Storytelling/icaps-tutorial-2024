;;;
;;; ICAPS2024 Tutorial on Narrative Planning
;;; A classical variant of the 'ark' problem encoding
;;; Indiana Jones and the Raiders of the Lost Ark 
;;; @author Rogelio E. Cardona-Rivera
;;;
(define (problem get-ark)
  (:domain classical-ark)
  (:objects indiana villains army - character
            usa tanis - place
            gun - weapon)
  (:init (buried ark tanis)
         (alive indiana)
         (at indiana usa)
         (knows indiana ark tanis)
         (alive army)
         (at army usa)
         (alive villains)
         (at villains usa)
         (has villains gun))
  (:goal (and (at army usa)
              (has army ark)
              (not (alive villains))))
)