(define (domain dept-corridor)
  (:requirements :strips :equality)

  (:predicates 
    (agent ?a)
    (location ?loc)
    (walk-conn ?loc1 ?loc2)
    (enter-conn ?loc1 ?loc2)
    (right-lift-conn ?loc1 ?loc2)
    (left-lift-conn ?loc1 ?loc2)
    (at ?a ?loc)
    (is-standard ?a)
    (is-wheelchair ?a)
  )
  ;; Movimento tra le stanze destro, centro e sinistra
  (:action walk
   :parameters (?a ?from ?to)
   :precondition (and (agent ?a) (location ?from) (location ?to) 
                      (at ?a ?from) (walk-conn ?from ?to))
   :effect (and (not (at ?a ?from)) (at ?a ?to))
  )

  ;; Movimento unico fra l'entrata e il centro
  (:action enter
   :parameters (?a ?from ?to)
   :precondition (and (agent ?a) (location ?from) (location ?to) 
                      (at ?a ?from) (enter-conn ?from ?to))
   :effect (and (not (at ?a ?from)) (at ?a ?to))
  )

  ;; Movimento verticale dell'ascensore, solo possibile all'agente standard
  (:action use-lift-right
   :parameters (?a ?from ?to)
   :precondition (and (agent ?a) (location ?from) (location ?to) (is-standard ?a)
                      (at ?a ?from) (right-lift-conn ?from ?to))
   :effect (and (not (at ?a ?from)) (at ?a ?to))
  )

  ;; Movimento verticale dell'ascensore, possibile anche all'agente Wheelchair
  (:action use-lift-left
   :parameters (?a ?from ?to)
   :precondition (and (agent ?a) (location ?from) (location ?to) 
                      (at ?a ?from) (left-lift-conn ?from ?to))
   :effect (and (not (at ?a ?from)) (at ?a ?to))
  )
)
