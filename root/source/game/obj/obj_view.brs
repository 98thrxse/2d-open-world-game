sub obj_view(object)

    object.funcName = "obj_view"

    object.loadEntity = sub(i as integer)

        m.obj_regions = []

        for j = 0 to m.game.obj.config[i].reg.Count() - 1

             if m.game.getBitmap(m.funcName + "_" + m.game.obj.getRegElement(i, j).toStr()) = invalid
                ' loadBitmap
                m.game.loadBitmap(m.funcName + "_" + m.game.obj.getRegElement(i, j).toStr(), "pkg:/media/obj/sprites/" + m.game.obj.getRegElement(i, j).toStr() + ".png")
            end if

            ' getBitmap
            obj_bitmap = m.game.getBitmap(m.funcName + "_" + m.game.obj.getRegElement(i, j).toStr())
        
            ' roRegion
            obj_region = CreateObject("roRegion", obj_bitmap, 0, 0, obj_bitmap.GetWidth(), obj_bitmap.GetHeight())

            m.obj_regions.push(obj_region)

        end for

    end sub

    object.loadAllEntity = sub()

        if m.obj_regions = invalid then 
          m.obj_regions = []
    
          for i = 0 to m.game.obj.config.Count() - 1
    
            m.obj_regions.push(i)
            m.obj_regions[i] = []
    
            for j = 0 to m.game.obj.config[i].reg.Count() - 1
    
              if m.game.getBitmap(m.funcName + "_" + m.game.obj.getRegElement(i, j).toStr()) = invalid
                ' loadBitmap
                m.game.loadBitmap(m.funcName + "_" + m.game.obj.getRegElement(i, j).toStr(), "pkg:/media/obj/sprites/" + m.game.obj.getRegElement(i, j).toStr() + ".png")
              end if
              
              ' getBitmap
              obj_bitmap = m.game.getBitmap(m.funcName + "_" + m.game.obj.getRegElement(i, j).toStr())
          
              ' roRegion
              obj_region = CreateObject("roRegion", obj_bitmap, 0, 0, obj_bitmap.GetWidth(), obj_bitmap.GetHeight())
    
              m.obj_regions[i].push(obj_region)
    
            end for
          end for
        end if
        
    end sub

    object.unloadEntity = sub(i as integer)

        for j = 0 to m.game.obj.config[i].reg.Count() - 1
    
          if m.game.getBitmap(m.funcName + "_" + m.game.obj.getRegElement(i, j).toStr()) <> invalid
            ' unloadBitmap
            m.game.unloadBitmap(m.funcName + "_" + m.game.obj.getRegElement(i, j).toStr())
          end if
    
        end for
    
    end sub

    object.unloadAllEntity = sub()
        for i = 0 to m.game.obj.config.Count() - 1
          for j = 0 to m.game.obj.config[i].reg.Count() - 1
    
            if m.game.getBitmap(m.funcName + "_" + m.game.obj.getRegElement(i, j).toStr()) <> invalid
              ' unloadBitmap
              m.game.unloadBitmap(m.funcName + "_" + m.game.obj.getRegElement(i, j).toStr())
            end if
    
          end for
        end for
    
        m.obj_regions = invalid
    end sub

    object.genEntity = sub()

        if m.game.obj.config.Count() <> 0
            ' load & add
            for i = 0 to m.game.obj.config.Count() - 1
                if - m.game.map.getOffsetX() <= m.game.obj.getEntityX(i) + m.game.obj.getEntityW(i) and - m.game.map.getOffsetX() + m.game.screen.GetWidth() >= m.game.obj.getEntityX(i) and - m.game.map.getOffsetY() <= m.game.obj.getEntityY(i) + m.game.obj.getEntityH(i) and - m.game.map.getOffsetY() + m.game.screen.GetHeight() >= m.game.obj.getEntityY(i)
                    if m.getImage(m.game.obj.getName(i).toStr() + "_" + i.toStr()) = invalid
                            
                        ' load (dynamic)
                        ' m.loadEntity(i)

                        ' add (dynamic)
                        ' m.addAnimatedImage(m.game.obj.getName(i).toStr() + "_" + i.toStr(), m.obj_regions, { index: m.game.obj.getIndex(i)
                        '     offset_x: m.game.obj.getEntityX(i),
                        '     offset_y: m.game.obj.getEntityY(i),
                        '     alpha: m.game.obj.getAlpha(i)
                        ' })

                        ' add (all)
                        m.addAnimatedImage(m.game.obj.getName(i).toStr() + "_" + i.toStr(), m.obj_regions[i], { index: m.game.obj.getIndex(i)
                            offset_x: m.game.obj.getEntityX(i),
                            offset_y: m.game.obj.getEntityY(i),
                            alpha: m.game.obj.getAlpha(i)
                        })

                    end if

                ' unload & remove
                else if m.getImage(m.game.obj.getName(i).toStr() + "_" + i.toStr()) <> invalid

                    ' remove
                    m.removeImage(m.game.obj.getName(i).toStr() + "_" + i.toStr())

                    ' unload
                    ' m.unloadEntity(i)

                end if
            
            end for
        end if

    end sub

    object.genCol = sub()

        if m.game.obj.config.Count() <> 0
            ' load & add
            for i = 0 to m.game.obj.config.Count() - 1
                if - m.game.map.getOffsetX() <= m.game.obj.getColX(i) + m.game.obj.getColW(i) and - m.game.map.getOffsetX() + m.game.screen.GetWidth() >= m.game.obj.getColX(i) and - m.game.map.getOffsetY() <= m.game.obj.getColY(i) + m.game.obj.getColH(i) and - m.game.map.getOffsetY() + m.game.screen.GetHeight() >= m.game.obj.getColY(i)
                    
                    if m.getCollider(m.game.obj.getName(i).toStr() + "_" + i.toStr()) = invalid
                        ' addColliderRectangle
                        m.addColliderRectangle(m.game.obj.getName(i).toStr() + "_" + i.toStr(), m.game.obj.getColX(i), m.game.obj.getColY(i), m.game.obj.getColW(i), m.game.obj.getColH(i))
                      
                    end if

                ' unload & remove
                else if m.getCollider(m.game.obj.getName(i).toStr() + "_" + i.toStr()) <> invalid

                    m.removeCollider(m.game.obj.getName(i).toStr() + "_" + i.toStr())

                end if
            
            end for
        end if
    end sub

    object.onCollision = sub(collider_name as string, other_collider_name as string, other_instance as object)

        if m.game.getFocusGroup() = "char"
            if other_collider_name = m.game.char.getColUpName()
                m.game.char.setColUp(true)

            else if other_collider_name = m.game.char.getColDownName()
                m.game.char.setColDown(true)

            else if other_collider_name = m.game.char.getColLeftName()
                m.game.char.setColLeft(true)

            else if other_collider_name = m.game.char.getColRightName()
                m.game.char.setColRight(true)
            end if
            
        else if m.game.getFocusGroup() = "veh"
            if other_collider_name = m.game.veh.getColUpName(m.game.char.getVeh().split("_").peek().toInt()).toStr() + "_" + m.game.char.getVeh().split("_").peek().toInt().toStr()
                m.game.veh.setColUp(m.game.char.getVeh().split("_").peek().toInt(), true)

            else if other_collider_name = m.game.veh.getColDownName(m.game.char.getVeh().split("_").peek().toInt()).toStr() + "_" + m.game.char.getVeh().split("_").peek().toInt().toStr()
                m.game.veh.setColDown(m.game.char.getVeh().split("_").peek().toInt(), true)

            else if other_collider_name = m.game.veh.getColLeftName(m.game.char.getVeh().split("_").peek().toInt()).toStr() + "_" + m.game.char.getVeh().split("_").peek().toInt().toStr()
                m.game.veh.setColLeft(m.game.char.getVeh().split("_").peek().toInt(), true)

            else if other_collider_name = m.game.veh.getColRightName(m.game.char.getVeh().split("_").peek().toInt()).toStr() + "_" + m.game.char.getVeh().split("_").peek().toInt().toStr()
                m.game.veh.setColRight(m.game.char.getVeh().split("_").peek().toInt(), true)
            end if
        end if

    end sub

    object.onUpdate = sub(dt as float)
        m.loadAllEntity()
        m.genEntity()
        m.genCol()
    end sub

    object.onDestroy = sub()
        m.unloadAllEntity()
    end sub

end sub