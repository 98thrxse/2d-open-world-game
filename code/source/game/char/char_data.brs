function char_data() as object

    m.data = {

        'pos
        getPosX: char_getPosX
        setPosX: char_setPosX
        
        getPosY: char_getPosY
        setPosY: char_setPosY  


        ' attributes
        getHP: char_getHP
        setHP: char_setHP

        getSP: char_getSP
        setSP: char_setSP


        ' damage
        getHPDamage: char_getHPDamage
        setHPDamage: char_setHPDamage

        getSPDamage: char_getSPDamage
        setSPDamage: char_setSPDamage

        getHPDamageTime: char_getHPDamageTime
        setHPDamageTime: char_setHPDamageTime

        getSPDamageTime: char_getSPDamageTime
        setSPDamageTime: char_setSPDamageTime


        ' regen
        getHPRegen: char_getHPRegen
        setHPRegen: char_setHPRegen

        getSPRegen: char_getSPRegen
        setSPRegen: char_setSPRegen

        getHPRegenTime: char_getHPRegenTime
        setHPRegenTime: char_setHPRegenTime

        getSPRegenTime: char_getSPRegenTime
        setSPRegenTime: char_setSPRegenTime


        ' animation
        getAnimTime: char_getAnimTime
        setAnimTime: char_setAnimTime


        ' collider
        getNPCCollider: char_getNPCCollider
        setNPCCollider: char_setNPCCollider

        getUpCollider: char_getUpCollider
        setUpCollider: char_setUpCollider

        getDownCollider: char_getDownCollider
        setDownCollider: char_setDownCollider

        getLeftCollider: char_getLeftCollider
        setLeftCollider: char_setLeftCollider

        getRightCollider: char_getRightCollider
        setRightCollider: char_setRightCollider


        ' speed
        getUpSpeed: char_getUpSpeed
        setUpSpeed: char_setUpSpeed

        getDownSpeed: char_getDownSpeed
        setDownSpeed: char_setDownSpeed

        getLeftSpeed: char_getLeftSpeed
        setLeftSpeed: char_setLeftSpeed

        getRightSpeed: char_getRightSpeed
        setRightSpeed: char_setRightSpeed

        params: invalid
    }

    if m.data.params = invalid
        m.data.params = {

            pos: {
                x: 0,
                y: 0
            },

            attributes: {
                hp: 100,
                sp: 100
            },

            damage: {
                hp: 10,
                sp: 10,
                hp_time: 500,
                sp_time: 500
            },

            regen: {
                hp: 5,
                sp: 5,
                hp_time: 1000,
                sp_time: 1000
            },

            anim: {
		        time: 100
            },
        
            collider: {
                npc: invalid,
                
                up: false,
                down: false
                left: false,
                right: false
            },
        
            speed: {
                up: 3,
                down: 3,
                left: 3,
                right: 3
            }
        }

    end if

    return m.data

end function

function char_getPosX() as integer
    return m.data.params.pos.x
end function

sub char_setPosX(x as integer)
    m.data.params.pos.x = x
end sub


function char_getPosY() as integer
    return m.data.params.pos.y
end function

sub char_setPosY(y as integer)
    m.data.params.pos.y = y
end sub



function char_getHP() as integer
    return m.data.params.attributes.hp
end function

sub char_setHP(hp as integer)
    m.data.params.attributes.hp = hp
end sub


function char_getSP() as integer
    return m.data.params.attributes.sp
end function

sub char_setSP(sp as integer)
    m.data.params.attributes.sp = sp
end sub


function char_getHPDamage() as integer
    return m.data.params.damage.hp
end function

sub char_setHPDamage(hp as integer)
    m.data.params.damage.hp = hp
end sub


function char_getSPDamage() as integer
    return m.data.params.damage.sp
end function

sub char_setSPDamage(sp as integer)
    m.data.params.damage.sp = sp
end sub


function char_getHPDamageTime() as integer
    return m.data.params.damage.hp_time
end function

sub char_setHPDamageTime(hp_time as integer)
    m.data.params.damage.hp_time = hp_time
end sub

function char_getSPDamageTime() as integer
    return m.data.params.damage.sp_time
end function

sub char_setSPDamageTime(sp_time as integer)
    m.data.params.damage.sp_time = sp_time
end sub



function char_getHPRegen() as integer
    return m.data.params.regen.hp
end function

sub char_setHPRegen(hp as integer)
    m.data.params.regen.hp = hp
end sub


function char_getSPRegen() as integer
    return m.data.params.regen.sp
end function

sub char_setSPRegen(sp as integer)
    m.data.params.regen.sp = sp
end sub


function char_getHPRegenTime() as integer
    return m.data.params.regen.hp_time
end function

sub char_setHPRegenTime(hp_time as integer)
    m.data.params.regen.hp_time = hp_time
end sub

function char_getSPRegenTime() as integer
    return m.data.params.regen.sp_time
end function

sub char_setSPRegenTime(sp_time as integer)
    m.data.params.regen.sp_time = sp_time
end sub



function char_getAnimTime() as integer
    return m.data.params.anim.time
end function

sub char_setAnimTime(time as integer)
    m.data.params.anim.time = time
end sub



function char_getNPCCollider() as object
    return m.data.params.collider.npc
end function

sub char_setNPCCollider(id as object) 
    m.data.params.collider.npc = id
end sub


function char_getUpCollider() as boolean
    return m.data.params.collider.up
end function

sub char_setUpCollider(collider as boolean) 
    m.data.params.collider.up = collider
end sub


function char_getDownCollider() as boolean
    return m.data.params.collider.down
end function

sub char_setDownCollider(collider as boolean) 
    m.data.params.collider.down = collider
end sub


function char_getLeftCollider() as boolean
    return m.data.params.collider.left
end function

sub char_setLeftCollider(collider as boolean) 
    m.data.params.collider.left = collider
end sub


function char_getRightCollider() as boolean
    return m.data.params.collider.right
end function

sub char_setRightCollider(collider as boolean) 
    m.data.params.collider.right = collider
end sub



function char_getUpSpeed() as object
    return m.data.params.speed.up
end function

sub char_setUpSpeed(speed as object) 
    m.data.params.speed.up = speed
end sub


function char_getDownSpeed() as object
    return m.data.params.speed.down
end function

sub char_setDownSpeed(speed as object) 
    m.data.params.speed.down = speed
end sub


function char_getLeftSpeed() as object
    return m.data.params.speed.left
end function

sub char_setLeftSpeed(speed as object) 
    m.data.params.speed.left = speed
end sub


function char_getRightSpeed() as object
    return m.data.params.speed.right
end function

sub char_setRightSpeed(speed as object) 
    m.data.params.speed.right = speed
end sub