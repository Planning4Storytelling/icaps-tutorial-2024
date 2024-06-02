;;;
;;; ICAPS2024 Tutorial on Narrative Planning
;;; A classical variant of the 'ark' problem encoding
;;; Indiana Jones and the Raiders of the Lost Ark 
;;; @author Rogelio E. Cardona-Rivera
;;;
(define (problem get-ark)
  (:domain intentional-ark)
  (:objects indiana villains army - character
            usa tanis - place
            gun - weapon)
  (:init (buried ark tanis)
         (alive indiana)
         (at indiana usa)
         (knows indiana ark tanis)
         (intends indiana (alive indiana))
         (intends indiana (has army ark))         
         (alive army)
         (at army usa)
         (intends army (alive army))
         (intends army (has army ark))
         (alive villains)
         (at villains usa)
         (intends villains (alive villains))
         (intends villains (open ark))         
         (has villains gun))
  (:goal (and (at army usa)
              (has army ark)
              (not (alive villains))))
)
