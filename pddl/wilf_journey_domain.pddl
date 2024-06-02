;This is a story about a wolf cub named Wilf who gets lost
;in the Tundra during a blizzard, but then finds his way back to his family, with the
;help of his animal friends.
;
;Original story book written by Rachel Bright and illustrated by Jim Field
;Scholastic Press 2020
;
;Wilf can be guided from one location to another if
;Wilf is at location1, and location1 and location2 are connected,
;and there is a friend at location1 who is capable of guiding Wilf to location2.
;Wilf is safely at home when he reaches the Den

(define (domain wilf_journey1)

    (:requirements
        :equality
        :typing
        
    )


    (:types friend location wilf
    )

    (:constants

    )

    (:predicates
    	(hasFriend ?l1 - location ?f - friend)
        (isConnected ?l1 - location ?l2 - location)
        (at ?l1 - location ?w1 - wilf)
        (canGuide ?l1 - location ?l2 - location ?f - friend)
        (canCarry ?l1 - location ?l2 - location ?f - friend)

    )

    (:functions

    )

    (:action guide
        :parameters (?f - friend ?w - wilf ?l1 - location ?l2 - location)
        :precondition (and (isConnected ?l1 ?l2) (at ?l1 ?w) (hasFriend ?l1 ?f) (canGuide ?l1 ?l2 ?f)
         )
        :effect (and (at ?l2 ?w )
         (not (at ?l1 ?w )) (not (hasFriend ?l1 ?f)))
    )

    (:action carry
        :parameters (?f - friend ?w - wilf ?l1 - location ?l2 - location)
        :precondition (and (isConnected ?l1 ?l2) (at ?l1 ?w) (hasFriend ?l1 ?f) (canCarry ?l1 ?l2 ?f)
         )
        :effect (and (at ?l2 ?w )
         (not (at ?l1 ?w )) (not (hasFriend ?l1 ?f)))
    )

)