function obj_init(object)

	object.onCreate = function(args)

        m.game.obj = obj_data()

        ' defineObject
        m.game.defineObject("obj_main", obj_main)
        m.game.defineObject("obj_entity", obj_entity)
        m.game.defineObject("obj_col", obj_col)
        m.game.defineObject("obj_control", obj_control)
        m.game.defineObject("obj_anim", obj_anim)

        ' createInstance
        m.game.createInstance("obj_main")
    
    end function

end function