(define (problem robin_hood_golden_arrow_problem1)

   (:domain robin_hood)

   (:objects
      Sherwood_Forest Town Castle_Window Archery_target_side Archery_target_centre - location
      Beggar - disguise
      Sheriff - lord
      Robin_Hood Gilbert  - archer
      R_Arrow G_Arrow   - arrow
      golden_arrow - prize
      archery_contest - event
   )

   (:init
      (isOutlaw Robin_Hood)
	  (at Robin_Hood Sherwood_Forest)
	  (hold Sheriff archery_contest)
	  (learn Gilbert archery_contest)
	  (canAim Robin_Hood R_Arrow Archery_target_centre)
	  (canAim Gilbert G_Arrow Archery_target_side)


   )

 (:goal (and
        (in Archery_target_side G_Arrow )
        (in Archery_target_centre R_Arrow )
        (wins_prize Robin_Hood golden_arrow)

        )
  )
)