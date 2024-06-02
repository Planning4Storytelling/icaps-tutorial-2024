;This is a story about a beautiful and resourceful princess named Elizabeth who lives in a grand castle and
;is about to marry a handsome prince named Ronald. When a mean Dragon burns down her castle and carries off
;Prince Ronald, Princess Elizabeth sets off to rescue her betrothed from the Dragon's clutches.
;
;Original story book written by Robert Munsch and illustrated by Michael Martchenko
;Annick Press 1980
;

(define (domain paper_bag_princess)

    (:requirements
        :strips
        :equality
        :typing
        :conditional-effects
        :disjunctive-preconditions
        :quantified-preconditions
    )

    (:types location character animal physical_object )


    (:predicates

        (at ?c - character ?l - location)
        ;(burn_object ?ob - physical_object )
        (is_asleep ?a - animal)
        (is_tired ?a - animal)
        (is_exhausted ?a - animal)
        (is_princess ?ps - character)
        (is_prince ?pr - character)
        (rescued ?pr - character)
        (can_fly ?a - animal)
        (can_breathe_fire ?a - animal)
        (is_destroyed ?ob - physical_object)
        (isFlattered ?a - animal)
        (isCharmed ?a - animal)
        (is_kidnapped ?pr - character)
        (followed_Dragon ?pr - character ?a - animal)
        (is_insulted ?pr - character)
        (did_not_marry ?p1r - character ?pr2 - character )


    )



    (:functions

    )

    (:action fall_asleep
            :parameters (?a - animal)
            :precondition (and (is_exhausted ?a )(not(can_fly ?a ))(not(can_breathe_fire ?a )))
            :effect (and (is_asleep ?a))
    )



    (:action rescue_prince
                :parameters (?pr - character  ?a - animal)
                :precondition (and (is_asleep ?a)(is_kidnapped ?pr ))
                :effect  (rescued ?pr )
    )

    (:action breathe_fire
                 :parameters (?a - animal ?ob - physical_object )
                 :precondition (can_breathe_fire ?a )
                 :effect  (is_destroyed ?ob )
    )

    (:action breathe_large_fire
                :parameters (?a - animal )
                :precondition (and (can_breathe_fire ?a )(isFlattered ?a ))
                :effect  (and (is_tired ?a )(not(can_breathe_fire ?a )))
    )

    (:action fly_fast
                 :parameters (?a - animal )
                 :precondition (and (can_fly ?a)(isCharmed ?a ))
                 :effect  (and (is_exhausted ?a )(not(can_fly ?a )))
    )

    (:action flatter_dragon
                 :parameters (?a - animal ?pr - character)
                 :precondition (and (is_princess ?pr)(followed_Dragon ?pr  ?a ))
                 :effect  (isFlattered ?a )
    )

    (:action charm_dragon
                     :parameters (?a - animal ?pr - character )
                     :precondition (and(is_princess ?pr)(followed_Dragon ?pr  ?a ))
                     :effect  (isCharmed ?a )
    )

    (:action attack_castle
                     :parameters (?a - animal ?ob - physical_object ?pr - character)
                     ;:precondition (is_princess ?pr)
                     :effect  (and (is_destroyed ?ob )(is_kidnapped ?pr ))
    )

    (:action follow_Dragon
                     :parameters (?a - animal ?ob - physical_object ?pr - character)
                     :precondition (and (is_princess ?pr)(is_destroyed ?ob ))
                     :effect  (followed_Dragon ?pr  ?a )
    )

    (:action insult
                     :parameters (?pr1 - character ?pr2 - character)
                     :precondition (and (is_princess ?pr2)(is_prince ?pr1)(rescued ?pr1 ))
                     :effect  (is_insulted ?pr2 )
    )

    (:action call_off_wedding
                     :parameters (?pr1 - character ?pr2 - character)
                     :precondition (and (is_princess ?pr2)(is_prince ?pr1)(is_insulted ?pr2 ))
                     :effect  (did_not_marry ?pr1   ?pr2 )
    )

)