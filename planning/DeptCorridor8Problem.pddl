(define (problem dept-corridor-task1)
(:domain dept-corridor)
(:objects

        s0l s0r s0c s0e - location
        
        s1l s1r s1c s1e - location
        
        s2l s2r s2c s2e - location
        
        s3l s3r s3c s3e - location
        
        s4l s4r s4c s4e - location
        
        s5l s5r s5c s5e - location
        
        ages agew - agent_type

        
)
(:init
	(enter-conn s0e s0c)
	(walk-conn s0c s0l)
	(walk-conn s0c s0r)

	(walk-conn s0l s0r)
	(walk-conn s0r s0l)

    (right-lift-conn s0r s1r)
    (right-lift-conn s0r s2r)
    (right-lift-conn s0r s3r)
    (right-lift-conn s0r s4r)
    (right-lift-conn s0r s5r)
    
    (left-lift-conn s0l s1l)
    (left-lift-conn s0l s2l)
    (left-lift-conn s0l s3l)
    (left-lift-conn s0l s4l)
    (left-lift-conn s0l s5l)
    
    
    
    
    
    (enter-conn s1e s1c)
	(walk-conn s1c s1l)
	(walk-conn s1c s1r)

	(walk-conn s1l s1r)
	(walk-conn s1r s1l)

    (right-lift-conn s1r s0r)
    (right-lift-conn s1r s2r)
    (right-lift-conn s1r s3r)
    (right-lift-conn s1r s4r)
    (right-lift-conn s1r s5r)
    
    (left-lift-conn s1l s0l)
    (left-lift-conn s1l s2l)
    (left-lift-conn s1l s3l)
    (left-lift-conn s1l s4l)
    (left-lift-conn s1l s5l)





    (enter-conn s2e s2c)
	(walk-conn s2c s2l)
	(walk-conn s2c s2r)

	(walk-conn s2l s2r)
	(walk-conn s2r s2l)

    (right-lift-conn s2r s0r)
    (right-lift-conn s2r s1r)
    (right-lift-conn s2r s3r)
    (right-lift-conn s2r s4r)
    (right-lift-conn s2r s5r)
    
    (left-lift-conn s2l s0l)
    (left-lift-conn s2l s1l)
    (left-lift-conn s2l s3l)
    (left-lift-conn s2l s4l)
    (left-lift-conn s2l s5l)
    
    


    
    (enter-conn s3e s3c)
	(walk-conn s3c s3l)
	(walk-conn s3c s3r)

	(walk-conn s3l s3r)
	(walk-conn s3r s3l)

    (right-lift-conn s3r s0r)
    (right-lift-conn s3r s1r)
    (right-lift-conn s3r s2r)
    (right-lift-conn s3r s4r)
    (right-lift-conn s3r s5r)
    
    (left-lift-conn s3l s0l)
    (left-lift-conn s3l s1l)
    (left-lift-conn s3l s2l)
    (left-lift-conn s3l s4l)
    (left-lift-conn s3l s5l)
    
    
    
    
    
    (enter-conn s4e s4c)
	(walk-conn s4c s4l)
	(walk-conn s4c s4r)

	(walk-conn s4l s4r)
	(walk-conn s4r s4l)

    (right-lift-conn s4r s0r)
    (right-lift-conn s4r s1r)
    (right-lift-conn s4r s2r)
    (right-lift-conn s4r s3r)
    (right-lift-conn s4r s5r)
    
    (left-lift-conn s4l s0l)
    (left-lift-conn s4l s1l)
    (left-lift-conn s4l s2l)
    (left-lift-conn s4l s3l)
    (left-lift-conn s4l s5l)
    
    
    
    
    
    (enter-conn s5e s5c)
	(walk-conn s5c s5l)
	(walk-conn s5c s5r)

	(walk-conn s5l s5r)
	(walk-conn s5r s5l)

    (right-lift-conn s5r s0r)
    (right-lift-conn s5r s1r)
    (right-lift-conn s5r s2r)
    (right-lift-conn s5r s3r)
    (right-lift-conn s5r s4r)
    
    (left-lift-conn s5l s0l)
    (left-lift-conn s5l s1l)
    (left-lift-conn s5l s2l)
    (left-lift-conn s5l s3l)
    (left-lift-conn s5l s4l)
    
    
	(at ages s0c)

    (at llift s0l)
    (at rlift s0r)
)
(:goal (and
         (at ages s5l)


))

)
