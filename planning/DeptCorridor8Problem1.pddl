(define (problem dept-corridor-task1)
  (:domain dept-corridor)
  ;; Definizione delle varie stanze con x-y dove x corrisponde ai piani e
  ;; dove x è uguale ai numeri dispari
  ;; corrisponde all'entrata dei rispettivi piani (1, 3, 5, 7, 9, 11)
  ;; i numeri pari corispondo al corridoio orizzontale del dipartimento a T
  ;; per l'y: 
  ;; 1 stanza sinistra
  ;; 2 stanza centrale
  ;; 3 stanza a destra

  (:objects 
    node1-2 node2-2 node2-1 node2-3 ;; Piano 0 entrata, centro, sinistra, destra
        node3-2 node4-2 node4-1 node4-3 ;; Piano 1 entrata, centro, sinistra, destra
        node5-2 node6-2 node6-1 node6-3 ;; Piano 2 entrata, centro, sinistra, destra
        node7-2 node8-2 node8-1 node8-3 ;; Piano 3 entrata, centro, sinistra, destra
        node9-2 node10-2 node10-1 node10-3 ;; Piano 4 entrata, centro, sinistra, destra
        node11-2 node12-2 node12-1 node12-3 ;; Piano 5 entrata, centro, sinistra, destra
        ages
  )


  (:init 
    (agent ages)
    (is-standard ages)

    (location node1-2) (location node2-2) (location node2-1) (location node2-3)
    (location node3-2) (location node4-2) (location node4-1) (location node4-3)
    (location node5-2) (location node6-2) (location node6-1) (location node6-3)
    (location node7-2) (location node8-2) (location node8-1) (location node8-3)
    (location node9-2) (location node10-2) (location node10-1) (location node10-3)
    (location node11-2) (location node12-2) (location node12-1) (location node12-3)
    
    (at ages node1-2)

    ;; Connessioni Piano 0:
    ;; Connessioni entrata-centro
    (enter-conn node1-2 node2-2)

    ;; Connessioni centro-sinistra e centro-destra
	(walk-conn node2-2 node2-1) (walk-conn node2-2 node2-3)

    ;; Connessioni sinistra->destra e viceversa
	(walk-conn node2-1 node2-3) (walk-conn node2-3 node2-1)

    ;; Connessioni dell'ascensore destro e sinistro a partire dal piano 0
    (left-lift-conn node2-1 node4-1) (right-lift-conn node2-3 node4-3) 
    (left-lift-conn node2-1 node6-1) (right-lift-conn node2-3 node6-3)
    (left-lift-conn node2-1 node8-1) (right-lift-conn node2-3 node8-3)
    (left-lift-conn node2-1 node10-1) (right-lift-conn node2-3 node10-3)
    (left-lift-conn node2-1 node12-1) (right-lift-conn node2-3 node12-3)
    


    ;; Connessioni Piano 1:
    ;; Connessioni entrata-centro
    (enter-conn node3-2 node4-2)

    ;; Connessioni centro-sinistra e centro-destra
	(walk-conn node4-2 node4-1) (walk-conn node4-2 node4-3)

    ;; Connessioni sinistra->destra e viceversa
	(walk-conn node4-1 node4-3) (walk-conn node4-3 node4-1)

    
    ;; Connessioni dell'ascensore destro e sinistro a partire dal piano 1
    (left-lift-conn node4-1 node2-1) (right-lift-conn node4-3 node2-3)
    (left-lift-conn node4-1 node6-1) (right-lift-conn node4-3 node6-3)
    (left-lift-conn node4-1 node8-1) (right-lift-conn node4-3 node8-3)
    (left-lift-conn node4-1 node10-1) (right-lift-conn node4-3 node10-3)
    (left-lift-conn node4-1 node12-1) (right-lift-conn node4-3 node12-3)


    ;; Connessioni Piano 2:
    ;; Connessioni entrata-centro
    (enter-conn node5-2 node6-2)

    ;; Connessioni centro-sinistra e centro-destra
	(walk-conn node6-2 node6-1) (walk-conn node6-2 node6-3)

    ;; Connessioni sinistra->destra e viceversa
	(walk-conn node6-1 node6-3) (walk-conn node6-3 node6-1)

    ;; Connessioni dell'ascensore destro e sinistro a partire dal piano 2
    (left-lift-conn node6-1 node2-1) (right-lift-conn node6-3 node2-3)
    (left-lift-conn node6-1 node4-1) (right-lift-conn node6-3 node4-3)
    (left-lift-conn node6-1 node8-1) (right-lift-conn node6-3 node8-3)
    (left-lift-conn node6-1 node10-1) (right-lift-conn node6-3 node10-3)
    (left-lift-conn node6-1 node10-1) (right-lift-conn node6-3 node12-3)
    
    
    ;; Connessioni Piano 3:
    ;; Connessioni entrata-centro
    (enter-conn node7-2 node8-2)

    ;; Connessioni centro-sinistra e centro-destra
	(walk-conn node8-2 node8-1) (walk-conn node8-2 node8-3)

    ;; Connessioni sinistra->destra e viceversa
	(walk-conn node8-1 node8-3) (walk-conn node8-3 node8-1)
    
    ;; Connessioni dell'ascensore destro e sinistro a partire dal piano 3
    (left-lift-conn node8-1 node2-1) (right-lift-conn node8-3 node2-3)
    (left-lift-conn node8-1 node4-1) (right-lift-conn node8-3 node4-3)
    (left-lift-conn node8-1 node4-1) (right-lift-conn node8-3 node6-3)
    (left-lift-conn node8-1 node10-1) (right-lift-conn node8-3 node10-3)
    (left-lift-conn node8-1 node12-1) (right-lift-conn node8-3 node12-3)
    
    
    ;; Connessioni Piano 4:
    ;; Connessioni entrata-centro
    (enter-conn node9-2 node10-2)

    ;; Connessioni centro->sinistra e centro->destra
	(walk-conn node10-2 node10-1) (walk-conn node10-2 node10-3)

    ;; Connessioni sinistra->destra e viceversa
	(walk-conn node10-1 node10-3) (walk-conn node10-3 node10-1)

    ;; Connessioni dell'ascensore destro e sinistro a partire dal piano 4
    (left-lift-conn node10-1 node2-1) (right-lift-conn node10-3 node2-3)
    (left-lift-conn node10-1 node4-1) (right-lift-conn node10-3 node4-3)
    (left-lift-conn node10-1 node6-1) (right-lift-conn node10-3 node6-3)
    (left-lift-conn node10-1 node8-1) (right-lift-conn node10-3 node8-3)
    (left-lift-conn node10-1 node12-1) (right-lift-conn node10-3 node12-3)
    
    
    ;; Connessioni Piano 5:
    ;; Connessioni entrata-centro
    (enter-conn node11-2 node12-2)

    ;; Connessioni centro->sinistra e centro->destra
	(walk-conn node12-2 node12-1) (walk-conn node12-2 node12-3)

    ;; Connessioni sinistra->destra e viceversa
	(walk-conn node12-1 node12-3) (walk-conn node12-3 node12-1)

    ;; Connessioni dell'ascensore destro e sinistro a partire dal piano 5
    (left-lift-conn node12-1 node2-1) (right-lift-conn node12-3 node2-3)
    (left-lift-conn node12-1 node4-1) (right-lift-conn node12-3 node4-3)
    (left-lift-conn node12-1 node6-1) (right-lift-conn node12-3 node6-3)
    (left-lift-conn node12-1 node8-1) (right-lift-conn node12-3 node8-3)
    (left-lift-conn node12-1 node10-1) (right-lift-conn node12-3 node10-3)
  )
    ;; Goal: Stanza a sinistra al 5° piano per agente standard
  (:goal 
    (and (at ages node12-1))
  )
)
