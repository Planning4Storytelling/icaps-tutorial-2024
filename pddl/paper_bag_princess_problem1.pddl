(define (problem paper_bag_princess1)
   (:domain paper_bag_princess)

   (:objects
      clothes  - physical_object
      Elizabeth Ronald - character
	  castle  - location
	  Dragon - animal
   )


   (:init
	  (is_princess Elizabeth)
      (is_prince Ronald)
	  (can_breathe_fire Dragon)
	  (can_fly Dragon)
   )

   (:goal
      ;(and(rescued Ronald)(is_insulted Elizabeth )(did_not_marry Ronald Elizabeth ))
      (did_not_marry Ronald Elizabeth )
     )


)