(define (domain dept-corridor)
  (:requirements :strips :equality :typing)
  (:types location agent_type)
 (:predicates 
               (walk-conn ?loc1 ?loc2)
               (enter-conn ?loc1 ?loc2)
               (left-lift-conn ?loc1 ?loc2)
               (right-lift-conn ?loc1 ?loc2)
               (at ?rob ?loc)
               (object ?obj)
               (robot ?rob)
 )

  (:action walk
   :parameters (?rob ?from ?to  )
   :precondition (and 
                   (at ?rob ?from)
                   (conn ?from ?to)
                 )
   :effect (and  (at ?rob ?to)
                 (not (at ?rob ?from))
           )
  )

  (:action enter
   :parameters (?rob ?from ?to  )
   :precondition (and 
                   ;(robot ?rob)
                   (at ?rob ?from)
                   (conn ?from ?to)
                 )
   :effect (and  (at ?rob ?to)
                 (not (at ?rob ?from))
           )
  )

  (:action uselift
  :parameters (?lift ?rob ?from ?to)
  :precondition (and
                ;()

  )
  )
)