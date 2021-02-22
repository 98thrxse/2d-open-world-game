function npc_init(object)

	object.onCreate = function(args)

		m.game.npc = npc_data()

		' defineObject
		m.game.defineObject("npc_main", npc_main)
		m.game.defineObject("npc_media", npc_media)
		m.game.defineObject("npc_entity", npc_entity)
		m.game.defineObject("npc_anim", npc_anim)
		m.game.defineObject("npc_act", npc_act)

		' createInstance
        m.game.createInstance("npc_main")

	end function

end function