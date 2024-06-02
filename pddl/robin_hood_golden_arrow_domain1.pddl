;'Robin Hood and the Golden Arrow' based on the traditional English Ballad.
;Retold by Robert D. San Souci with illustrations by E. B. Lewis
;Orchard Books New York, Scholastic 2010.
;
;The fabled archer Robin Hood and his band of outlaws, the Merry Men, live in Sherwood Forest.
;They help the poor and needy, and work to foil the greedy schemes of the evil Sheriff
;of Nottingham. When the Sheriff holds an archery contest as a trick to capture Robin Hood,
;Robin Hood and his Merry Men have the last laugh when they enter the contest in disguise.



(define (domain robin_hood)

    (:requirements
        :strips
        :equality
        :typing
        :conditional-effects
        :disjunctive-preconditions
        :quantified-preconditions
    )

    (:types location archer lord disguise arrow event prize)


    (:predicates

        (at ?a - archer ?l - location)
        (in ?l - location ?y - arrow)
        (disguised_As ?a - archer ?d - disguise)
        (hold ?l1 - lord ?e - event)
        (announced  ?e - event)
        (learn ?a - archer ?e - event)
        (enter-event ?a - archer ?e - event)
        (wins_prize ?a - archer ?p - prize)
        (isOutlaw ?a - archer )
        (canAim ?a - archer ?a1 - arrow ?l1 - location)
        (hasSplit ?a1 - arrow ?a2 - arrow )
        (sameAs ?a1 - arrow ?a2 - arrow )


    )



    (:functions

    )

    (:action fire_arrow
            :parameters (?a - archer ?a1 - arrow ?l1 - location ?e - event)
            :precondition (and(enter-event ?a  ?e ) (canAim ?a  ?a1  ?l1 )(not(isOutlaw ?a )))
            :effect (and (in ?l1 ?a1 ))
    )

    (:action split_arrow
            :parameters (?a - archer ?a1 - arrow ?a2 - arrow ?l1 - location ?e - event)
            :precondition (and(enter-event ?a  ?e ) (canAim ?a  ?a1  ?l1 )(isOutlaw ?a ))
            :effect (and (in ?l1 ?a1 )(hasSplit ?a1 ?a2 ))
    )

    (:action hide_character
            :parameters (?a1 - archer ?d - disguise ?e - event)
            :precondition (and(learn ?a1  ?e)(isOutlaw ?a1 ))
            :effect (disguised_As  ?a1 ?d)
    )

    (:action enter_location
            :parameters (?a1 - archer ?l1 - location)
            :effect (at ?a1 ?l1)
    )

    (:action award_prize
                :parameters (?p - prize ?a1 - archer ?a - arrow ?a2 - arrow ?l1 - location)
                :precondition (and (in ?l1  ?a2 )(isOutlaw ?a1 ))
                :effect (and (wins_prize ?a1  ?p)(hasSplit ?a2 ?a ))
    )

    (:action participate_event_outlaw
                :parameters (?a1 - archer ?e - event  ?d - disguise)
                :precondition (and (learn ?a1  ?e )(disguised_As ?a1  ?d )(isOutlaw ?a1 ))
                :effect (enter-event ?a1  ?e)
    )

    (:action participate_event_archer
                :parameters (?a1 - archer ?e - event )
                :precondition (and(learn ?a1  ?e ) (not(isOutlaw ?a1 )))
                :effect (enter-event ?a1  ?e)
    )

    (:action announce_event
                :parameters (?e - event ?l1 - lord )
                ;:precondition (and (hold ?l1  ?e)(learn ?a1  ?e )(disguised_As ?a1  ?d ))
                :effect (and (hold ?l1  ?e) (announced ?e ))
    )

    (:action learn_event
                :parameters (?e - event  ?a - archer )
                :precondition (announced   ?e)
                :effect  (learn ?a  ?e )
    )


)