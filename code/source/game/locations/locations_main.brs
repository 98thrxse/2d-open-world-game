function locations_main(object)
    
	object.onCreate = function(args)

        ' createInstance
        m.game.createInstance("testOne_init")
        m.game.createInstance("char_init")
        m.game.createInstance("interface_init")
        m.game.createInstance("obj_init")
        m.game.createInstance("npc_init")
        m.game.createInstance("terrain_init")
        m.game.createInstance("action_init")

    end function
    
end function