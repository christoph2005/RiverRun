    -- Generated by Level Director v2.0.2 on 4/29/2013 12:30:30 AM

module(..., package.seeall)
require ("config")



imgSubFolder = ""
spriteSheets={}
spriteSets={}

if (application.LevelDirectorSettings.imagesSubfolder ~= nil) then
    imgSubFolder = application.LevelDirectorSettings.imagesSubfolder
    imgSubFolder = imgSubFolder .. "/"
end

function CreateLevel(physics)

    display.setDefault( 'background', 105,105,105 )
    physics.setGravity(0,0)
    local collFilter = nil
    local level = display.newGroup()
    level.layers = {}
    level.name = "winBuild"

    ---- Layer : bg ----
    level.layers["bg"] = display.newGroup()
    level.layers["bg"].name = "bg"

    level.layers["bg"].objects = {}

    level.layers["bg"].objects["water1"] = display.newImageRect( imgSubFolder .. "water.png",640,960 )
    level.layers["bg"].objects["water1"].x = 176
    level.layers["bg"].objects["water1"].y = 0
    level.layers["bg"].objects["water1"].name = "water1"
    level.layers["bg"]:insert(level.layers["bg"].objects["water1"])

    level.layers["bg"].objects["water2"] = display.newImageRect( imgSubFolder .. "water2.png",640,960 )
    level.layers["bg"].objects["water2"].x = 175
    level.layers["bg"].objects["water2"].y = -959
    level.layers["bg"].objects["water2"].name = "water2"
    level.layers["bg"]:insert(level.layers["bg"].objects["water2"])

    level:insert(level.layers["bg"])


    ---- Layer : fg ----
    level.layers["fg"] = display.newGroup()
    level.layers["fg"].name = "fg"

    level.layers["fg"].objects = {}

    level.layers["fg"].objects["Y_w"] = display.newImageRect( imgSubFolder .. "Y.png",77,85 )
    level.layers["fg"].objects["Y_w"].x = 57
    level.layers["fg"].objects["Y_w"].y = 130
    local Y_w_shape = {-33.5,-18.5,5.5,-23.5,9.5,-23.5,17.5,-18.5,17.5,-14.5,-3.5,48.5,-10.5,48.5,-33.5,-14.5    }
    physics.addBody(level.layers["fg"].objects["Y_w"],"dynamic",{density = 1, friction = 0, bounce = 0})
    level.layers["fg"].objects["Y_w"].name = "Y_w"
    level.layers["fg"]:insert(level.layers["fg"].objects["Y_w"])

    level.layers["fg"].objects["O_w"] = display.newImageRect( imgSubFolder .. "O.png",76,78 )
    level.layers["fg"].objects["O_w"].x = 169
    level.layers["fg"].objects["O_w"].y = 57
    local O_w_shape = {-25,-11,1,-37,6,-37,33,-5,33,5,8,30,-1,30,-25,-1    }
    physics.addBody(level.layers["fg"].objects["O_w"],"dynamic",{density = 1, friction = 0, bounce = 0})
    level.layers["fg"].objects["O_w"].name = "O_w"
    level.layers["fg"]:insert(level.layers["fg"].objects["O_w"])

    level.layers["fg"].objects["U_w"] = display.newImageRect( imgSubFolder .. "U.png",75,74 )
    level.layers["fg"].objects["U_w"].x = 273
    level.layers["fg"].objects["U_w"].y = 125
    local U_w_shape = {-26.5,17,-16.5,-34,18.5,-34,23.5,-24,23.5,12,11.5,31,-14.5,31,-24.5,21    }
    physics.addBody(level.layers["fg"].objects["U_w"],"dynamic",{density = 1, friction = 0, bounce = 0})
    level.layers["fg"].objects["U_w"].name = "U_w"
    level.layers["fg"]:insert(level.layers["fg"].objects["U_w"])

    level.layers["fg"].objects["W"] = display.newImageRect( imgSubFolder .. "W.png",93,89 )
    level.layers["fg"].objects["W"].x = 79
    level.layers["fg"].objects["W"].y = 284
    local W_shape = {-41.5,-31.5,32.5,-38.5,36.5,-38.5,42.5,-33.5,42.5,-26.5,19.5,42.5,-18.5,42.5,-41.5,-27.5    }
    physics.addBody(level.layers["fg"].objects["W"],"dynamic",{density = 1, friction = 0, bounce = 0})
    level.layers["fg"].objects["W"].name = "W"
    level.layers["fg"]:insert(level.layers["fg"].objects["W"])

    level.layers["fg"].objects["I"] = display.newImageRect( imgSubFolder .. "I.png",53,95 )
    level.layers["fg"].objects["I"].x = 173
    level.layers["fg"].objects["I"].y = 395
    local I_shape = {-10.5,-11.5,-3.5,-42.5,8.5,-42.5,16.5,13.5,16.5,38.5,15.5,42.5,-0.5,42.5,-10.5,0.5    }
    physics.addBody(level.layers["fg"].objects["I"],"dynamic",{density = 1, friction = 0, bounce = 0})
    level.layers["fg"].objects["I"].name = "I"
    level.layers["fg"]:insert(level.layers["fg"].objects["I"])

    level.layers["fg"].objects["N"] = display.newImageRect( imgSubFolder .. "N.png",83,86 )
    level.layers["fg"].objects["N"].x = 266
    level.layers["fg"].objects["N"].y = 285
    local N_shape = {-30.5,-38,-26.5,-41,17.5,-41,28.5,24,28.5,35,-15.5,39,-22.5,39,-30.5,-32    }
    physics.addBody(level.layers["fg"].objects["N"],"dynamic",{density = 1, friction = 0, bounce = 0})
    level.layers["fg"].objects["N"].name = "N"
    level.layers["fg"]:insert(level.layers["fg"].objects["N"])

    level:insert(level.layers["fg"])


    return level

end -- CreateLevel

