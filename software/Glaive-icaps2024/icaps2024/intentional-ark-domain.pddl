;;;
;;; ICAPS2024 Tutorial on Narrative Planning
;;; The narrative variant of the 'ark' problem encoding
;;; Indiana Jones and the Raiders of the Lost Ark 
;;; @author Rogelio E. Cardona-Rivera
;;;
(define (domain intentional-ark)
  (:requirements :adl :domain-axioms :intentionality)
  (:types character place item - object
          weapon - item)
  (:constants ark - item)
  (:predicates (open ark)
               (alive ?character - character)
               (armed ?character - character)
               (buried ?item - item ?place - place)
               (knows ?character - character ?item - item ?place - place)
               (at ?character - character ?place - place)
               (has ?character - character ?item - item))

  ;; A character travels from one place to another.
  (:action travel
    :parameters   (?character - character ?from - place ?to - place)
	  :precondition (and (not (= ?from ?to))
                       (alive ?character)
                       (at ?character ?from))
	  :effect       (and (not (at ?character ?from))
                       (at ?character ?to))
    :agents       (?character)
  )

  ;; A character excavates an item.
  (:action excavate
    :parameters   (?character - character ?item - item ?place - place)
	  :precondition (and (alive ?character)
                       (at ?character ?place)
                       (buried ?item ?place)
                       (knows ?character ?item ?place))
	  :effect       (and (not (buried ?item ?place))
                       (has ?character ?item))
    :agents       (?character)
  )

  ;; One character gives an item to another.
  (:action give
    :parameters   (?giver - character ?item - item ?receiver - character ?place - place)
	  :precondition (and (not (= ?giver ?receiver))
                       (alive ?giver)
                       (at ?giver ?place)
                       (has ?giver ?item)
                       (alive ?receiver)
                       (at ?receiver ?place))
	  :effect       (and (not (has ?giver ?item))
                       (has ?receiver ?item))
    :agents       (?giver ?receiver)
  )

  ;; One character eliminates another.
  (:action eliminate
    :parameters   (?attacker - character ?weapon - weapon ?target - character ?place - place)
    :precondition (and (alive ?attacker)
                       (at ?attacker ?place)
                       (has ?attacker ?weapon)
                       (alive ?target)
                       (at ?target ?place))
    :effect       (not (alive ?target))
    :agents       (?attacker)
  )
  
  ;; One character takes an item from another at weapon-point.
  (:action take
    :parameters   (?taker - character ?item - item ?victim - character ?place - place)
	  :precondition (and (not (= ?taker ?victim))
                       (alive ?taker)
                       (at ?taker ?place)
                       (or (not (alive ?victim))
                           (and (armed ?taker)
                                (not (armed ?victim))))
                       (at ?victim ?place)
                       (has ?victim ?item))
	  :effect       (and (not (has ?victim ?item))
                       (has ?taker ?item))
    :agents       (?taker)
  )

  ;; A character opens the Ark.
  (:action open-ark
    :parameters   (?character - character)
	  :precondition (and (alive ?character)
                       (has ?character ark))
	  :effect       (and (open ark)
                       (not (alive ?character)))
    :agents       (?character)
  )

  ;; The Ark closes.
  (:action close-ark
	  :precondition (open ark)
	  :effect       (not (open ark))
  )

  ;; When a character has a weapon, they are armed.
  (:axiom
    :vars    (?character - character)
    :context (and (not (armed ?character))
                  (exists (?w - weapon)
                          (has ?character ?w)))
    :implies (armed ?character)
  )

  ;; When a character does not have a weapon, they are unarmed.
  (:axiom
    :vars    (?character - character)
    :context (and (armed ?character)
                  (forall (?w - weapon)
                          (not (has ?character ?w))))
    :implies (not (armed ?character))
  )
)