function map_data() as object
    m.map = {

        getEntityOffsetX: map_getEntityOffsetX
        setEntityOffsetX: map_setEntityOffsetX

        getEntityOffsetY: map_getEntityOffsetY
        setEntityOffsetY: map_setEntityOffsetY

		config: invalid
	}

	if m.map.config = invalid

		m.map.config = {
			offset: {
				x: 0,
				y: 0
			}
		}

	end if

	return m.map

end function

function map_getEntityOffsetX() as integer
    return m.config.offset.x
end function

sub map_setEntityOffsetX(x as integer)
    m.config.offset.x = x
end sub

function map_getEntityOffsetY() as integer
    return m.config.offset.y
end function

sub map_setEntityOffsetY(y as integer)
    m.config.offset.y = y
end sub