    -- Generated by Level Director v2.0.2 on 4/20/2013 4:24:45 AM

module(..., package.seeall)
require ("config")
require ("sprite")



imgSubFolder = ""
spriteSheets={}
spriteSets={}

if (application.LevelDirectorSettings.imagesSubfolder ~= nil) then
    imgSubFolder = application.LevelDirectorSettings.imagesSubfolder
    imgSubFolder = imgSubFolder .. "/"
end

function LoadAssets()

    local assets = {}

    ---- Asset : p1_L_grassland_png ----
    assets["p1_L_grassland_png"] = {}
    assets["p1_L_grassland_png"].file = "p1_L_grassland.png"
    assets["p1_L_grassland_png"].name = "p1_L_grassland_png"
    assets["p1_L_grassland_png"].width = 147
    assets["p1_L_grassland_png"].height = 434
    assets["p1_L_grassland_png"].frame = 0
    assets["p1_L_grassland_png"].frameCount = 0

    ---- Asset : p2_L_grassland_png ----
    assets["p2_L_grassland_png"] = {}
    assets["p2_L_grassland_png"].file = "p2_L_grassland.png"
    assets["p2_L_grassland_png"].name = "p2_L_grassland_png"
    assets["p2_L_grassland_png"].width = 111
    assets["p2_L_grassland_png"].height = 234
    assets["p2_L_grassland_png"].frame = 0
    assets["p2_L_grassland_png"].frameCount = 0

    ---- Asset : p2_R_grassland_png ----
    assets["p2_R_grassland_png"] = {}
    assets["p2_R_grassland_png"].file = "p2_R_grassland.png"
    assets["p2_R_grassland_png"].name = "p2_R_grassland_png"
    assets["p2_R_grassland_png"].width = 168
    assets["p2_R_grassland_png"].height = 234
    assets["p2_R_grassland_png"].frame = 0
    assets["p2_R_grassland_png"].frameCount = 0

    ---- Asset : p3_M_grassland_png ----
    assets["p3_M_grassland_png"] = {}
    assets["p3_M_grassland_png"].file = "p3_M_grassland.png"
    assets["p3_M_grassland_png"].name = "p3_M_grassland_png"
    assets["p3_M_grassland_png"].width = 132
    assets["p3_M_grassland_png"].height = 350
    assets["p3_M_grassland_png"].frame = 0
    assets["p3_M_grassland_png"].frameCount = 0

    ---- Asset : p4_R_grassland_png ----
    assets["p4_R_grassland_png"] = {}
    assets["p4_R_grassland_png"].file = "p4_R_grassland.png"
    assets["p4_R_grassland_png"].name = "p4_R_grassland_png"
    assets["p4_R_grassland_png"].width = 154
    assets["p4_R_grassland_png"].height = 182
    assets["p4_R_grassland_png"].frame = 0
    assets["p4_R_grassland_png"].frameCount = 0

    ---- Asset : p5_L_grassland_png ----
    assets["p5_L_grassland_png"] = {}
    assets["p5_L_grassland_png"].file = "p5_L_grassland.png"
    assets["p5_L_grassland_png"].name = "p5_L_grassland_png"
    assets["p5_L_grassland_png"].width = 72
    assets["p5_L_grassland_png"].height = 263
    assets["p5_L_grassland_png"].frame = 0
    assets["p5_L_grassland_png"].frameCount = 0

    ---- Asset : p5_R_grassland_png ----
    assets["p5_R_grassland_png"] = {}
    assets["p5_R_grassland_png"].file = "p5_R_grassland.png"
    assets["p5_R_grassland_png"].name = "p5_R_grassland_png"
    assets["p5_R_grassland_png"].width = 83
    assets["p5_R_grassland_png"].height = 180
    assets["p5_R_grassland_png"].frame = 0
    assets["p5_R_grassland_png"].frameCount = 0

    ---- Asset : p6_L_grassland_png ----
    assets["p6_L_grassland_png"] = {}
    assets["p6_L_grassland_png"].file = "p6_L_grassland.png"
    assets["p6_L_grassland_png"].name = "p6_L_grassland_png"
    assets["p6_L_grassland_png"].width = 129
    assets["p6_L_grassland_png"].height = 287
    assets["p6_L_grassland_png"].frame = 0
    assets["p6_L_grassland_png"].frameCount = 0

    ---- Asset : p7_L_smallRock_png ----
    assets["p7_L_smallRock_png"] = {}
    assets["p7_L_smallRock_png"].file = "p7_L_smallRock.png"
    assets["p7_L_smallRock_png"].name = "p7_L_smallRock_png"
    assets["p7_L_smallRock_png"].width = 103
    assets["p7_L_smallRock_png"].height = 122
    assets["p7_L_smallRock_png"].frame = 0
    assets["p7_L_smallRock_png"].frameCount = 0

    ---- Asset : p7_R_smallRock_png ----
    assets["p7_R_smallRock_png"] = {}
    assets["p7_R_smallRock_png"].file = "p7_R_smallRock.png"
    assets["p7_R_smallRock_png"].name = "p7_R_smallRock_png"
    assets["p7_R_smallRock_png"].width = 110
    assets["p7_R_smallRock_png"].height = 117
    assets["p7_R_smallRock_png"].frame = 0
    assets["p7_R_smallRock_png"].frameCount = 0

    ---- Asset : p8_L_medRock_png ----
    assets["p8_L_medRock_png"] = {}
    assets["p8_L_medRock_png"].file = "p8_L_medRock.png"
    assets["p8_L_medRock_png"].name = "p8_L_medRock_png"
    assets["p8_L_medRock_png"].width = 189
    assets["p8_L_medRock_png"].height = 222
    assets["p8_L_medRock_png"].frame = 0
    assets["p8_L_medRock_png"].frameCount = 0

    ---- Asset : p9_L_lrgRock_png ----
    assets["p9_L_lrgRock_png"] = {}
    assets["p9_L_lrgRock_png"].file = "p9_L_lrgRock.png"
    assets["p9_L_lrgRock_png"].name = "p9_L_lrgRock_png"
    assets["p9_L_lrgRock_png"].width = 198
    assets["p9_L_lrgRock_png"].height = 229
    assets["p9_L_lrgRock_png"].frame = 0
    assets["p9_L_lrgRock_png"].frameCount = 0

    ---- Asset : p10_R_lrgRock_png ----
    assets["p10_R_lrgRock_png"] = {}
    assets["p10_R_lrgRock_png"].file = "p10_R_lrgRock.png"
    assets["p10_R_lrgRock_png"].name = "p10_R_lrgRock_png"
    assets["p10_R_lrgRock_png"].width = 259
    assets["p10_R_lrgRock_png"].height = 377
    assets["p10_R_lrgRock_png"].frame = 0
    assets["p10_R_lrgRock_png"].frameCount = 0

    ---- Asset : tempL_png ----
    assets["tempL_png"] = {}
    assets["tempL_png"].file = "tempL.png"
    assets["tempL_png"].name = "tempL_png"
    assets["tempL_png"].width = 166
    assets["tempL_png"].height = 1166
    assets["tempL_png"].frame = 0
    assets["tempL_png"].frameCount = 0

    ---- Asset : tempR_png ----
    assets["tempR_png"] = {}
    assets["tempR_png"].file = "tempR.png"
    assets["tempR_png"].name = "tempR_png"
    assets["tempR_png"].width = 144
    assets["tempR_png"].height = 1141
    assets["tempR_png"].frame = 0
    assets["tempR_png"].frameCount = 0

    ---- Asset : finish line_png ----
    assets["finish line_png"] = {}
    assets["finish line_png"].file = "finish line.png"
    assets["finish line_png"].name = "finish line_png"
    assets["finish line_png"].width = 1016
    assets["finish line_png"].height = 120
    assets["finish line_png"].frame = 0
    assets["finish line_png"].frameCount = 0

    ---- Asset : p1_R_grassland_png ----
    assets["p1_R_grassland_png"] = {}
    assets["p1_R_grassland_png"].file = "p1_R_grassland.png"
    assets["p1_R_grassland_png"].name = "p1_R_grassland_png"
    assets["p1_R_grassland_png"].width = 130
    assets["p1_R_grassland_png"].height = 180
    assets["p1_R_grassland_png"].frame = 0
    assets["p1_R_grassland_png"].frameCount = 0

    ---- Asset : p1_2_R_grassland_png ----
    assets["p1_2_R_grassland_png"] = {}
    assets["p1_2_R_grassland_png"].file = "p1_2_R_grassland.png"
    assets["p1_2_R_grassland_png"].name = "p1_2_R_grassland_png"
    assets["p1_2_R_grassland_png"].width = 132
    assets["p1_2_R_grassland_png"].height = 260
    assets["p1_2_R_grassland_png"].frame = 0
    assets["p1_2_R_grassland_png"].frameCount = 0

    ---- Asset : p3_2_R_grassland_png ----
    assets["p3_2_R_grassland_png"] = {}
    assets["p3_2_R_grassland_png"].file = "p3_2_R_grassland.png"
    assets["p3_2_R_grassland_png"].name = "p3_2_R_grassland_png"
    assets["p3_2_R_grassland_png"].width = 97
    assets["p3_2_R_grassland_png"].height = 146
    assets["p3_2_R_grassland_png"].frame = 0
    assets["p3_2_R_grassland_png"].frameCount = 0

    ---- Asset : p3_R_grassland_png ----
    assets["p3_R_grassland_png"] = {}
    assets["p3_R_grassland_png"].file = "p3_R_grassland.png"
    assets["p3_R_grassland_png"].name = "p3_R_grassland_png"
    assets["p3_R_grassland_png"].width = 80
    assets["p3_R_grassland_png"].height = 207
    assets["p3_R_grassland_png"].frame = 0
    assets["p3_R_grassland_png"].frameCount = 0

    ---- Asset : log_png ----
    assets["log_png"] = {}
    assets["log_png"].file = "log.png"
    assets["log_png"].name = "log_png"
    assets["log_png"].width = 84
    assets["log_png"].height = 60
    assets["log_png"].frame = 0
    assets["log_png"].frameCount = 0

    ---- Asset : theBeave_png ----
    assets["theBeave_png"] = {}
    assets["theBeave_png"].file = "theBeave.png"
    assets["theBeave_png"].name = "theBeave_png"
    assets["theBeave_png"].width = 365
    assets["theBeave_png"].height = 484
    assets["theBeave_png"].frame = 0
    assets["theBeave_png"].frameCount = 0    
	
	---- Asset : flag_gif ----
    assets["flag_gif"] = {}
    assets["flag_gif"].file = "flag.gif"
    assets["flag_gif"].name = "flag_gif"
    assets["flag_gif"].width = 425
    assets["flag_gif"].height = 410
    assets["flag_gif"].frame = 0
    assets["flag_gif"].frameCount = 0    
	
	---- Asset : infoSign_gif ----
    assets["info_gif"] = {}
    assets["info_gif"].file = "infoSign.gif"
    assets["info_gif"].name = "infoSign.gif"
    assets["info_gif"].width = 396
    assets["info_gif"].height = 214
    assets["info_gif"].frame = 0
    assets["info_gif"].frameCount = 0  
	
	---- Asset : beaverGIF ----
    assets["beaverGIF"] = {}
    assets["beaverGIF"].file = "beaverGIF.png"
    assets["beaverGIF"].name = "beaverGIF"
    assets["beaverGIF"].width = 100
    assets["beaverGIF"].height = 98
    assets["beaverGIF"].frame = 1
    assets["beaverGIF"].frameCount = 5
    assets["beaverGIF"].animSequence = {}
    assets["beaverGIF"].animSequence["swim"] = {}
    assets["beaverGIF"].animSequence["swim"].name = "swim"
    assets["beaverGIF"].animSequence["swim"].startFrame = 1
    assets["beaverGIF"].animSequence["swim"].frameCount = 5
    assets["beaverGIF"].animSequence["swim"].time = 200
    assets["beaverGIF"].animSequence["swim"].loop = 1
    table.insert(assets["beaverGIF"].animSequence,assets["beaverGIF"].animSequence["swim"])
    return assets

end -- LoadAssets

function CreateObjectFromAsset(parent, assets, assetName, x, y, xScale, yScale)

    local obj = nil

    if (assets[assetName]) then
        local asset = assets[assetName]
        if (asset.frame == 0) then
            obj = display.newImageRect(parent, imgSubFolder .. asset.file, asset.width * xScale , asset.height * yScale )
        else
            --if part of spritesheet check if it already exists
            local spriteSheet = nil
            local spriteSet = nil
            if (spriteSheets[asset.file] == nil) then
                --create new spritesheet and sprite set
                spriteSheets[asset.file] = sprite.newSpriteSheet( imgSubFolder .. asset.file, asset.width,asset.height)
                spriteSets[asset.file] = sprite.newSpriteSet(spriteSheets[asset.file], 1,asset.frameCount)				
            end
            spriteSheet = spriteSheets[asset.file]
            spriteSet = spriteSets[asset.file]
            --add animation sequences
            if (assets[assetName].animSequence) then
                for i = 1, #assets[assetName].animSequence do
                    sprite.add(spriteSet,assets[assetName].animSequence[i].name,assets[assetName].animSequence[i].startFrame,assets[assetName].animSequence[i].frameCount,assets[assetName].animSequence[i].time,assets[assetName].animSequence[i].loop)
                end
            end

            obj = sprite.newSprite(spriteSet)
            obj.currentFrame = asset.frame
        end
        obj.x = x
        obj.y = y
        if (asset.physics)then
            physics.addBody(obj, asset.physics.bodyType, asset.physics.attributes)
            if (asset.physics.isFixedRotation) then obj.isFixedRotation = asset.physics.isFixedRotation end
            if (asset.physics.isSleepingAllowed) then obj.isSleepingAllowed = asset.physics.isSleepingAllowed end
            if (asset.physics.angularDamping) then obj.angularDamping = asset.physics.angularDamping end
            if (asset.physics.linearDamping) then obj.linearDamping = asset.physics.linearDamping end
        end
    end
    return obj
end -- CreateObjectFromAsset

function CreateLevel(physics)

    display.setDefault( 'background', 105,105,105 )
    physics.setGravity(0,0)
    local collFilter = nil
    local level = display.newGroup()
    level.layers = {}
    level.name = "level1"

    ---- Layer : bg ----
    level.layers["bg"] = display.newGroup()
    level.layers["bg"].name = "bg"

    level.layers["bg"].objects = {}

    level.layers["bg"].objects["river1"] = display.newImageRect( imgSubFolder .. "water.png", display.contentWidth, display.contentHeight)
    level.layers["bg"].objects["river1"].x = display.contentWidth/2
    level.layers["bg"].objects["river1"].y = 0
    level.layers["bg"].objects["river1"].name = "river1"
    level.layers["bg"]:insert(level.layers["bg"].objects["river1"])

    level.layers["bg"].objects["river2"] = display.newImageRect( imgSubFolder .. "water2.png", display.contentWidth, display.contentHeight)
    level.layers["bg"].objects["river2"].x = display.contentWidth/2
    level.layers["bg"].objects["river2"].y = display.contentHeight
    level.layers["bg"].objects["river2"].name = "river2"
    level.layers["bg"]:insert(level.layers["bg"].objects["river2"])

    level.layers["bg"].objects["finish bg2"] = display.newImageRect( imgSubFolder .. "finish line.png",572,206 )
    level.layers["bg"].objects["finish bg2"].x = 158
    level.layers["bg"].objects["finish bg2"].y = -3137
    level.layers["bg"].objects["finish bg2"].name = "finish bg2"
    level.layers["bg"]:insert(level.layers["bg"].objects["finish bg2"])

    level.layers["bg"].objects["finish bg1"] = display.newImageRect( imgSubFolder .. "finish line.png",572,206 )
    level.layers["bg"].objects["finish bg1"].x = 158
    level.layers["bg"].objects["finish bg1"].y = -2977
    physics.addBody(level.layers["bg"].objects["finish bg1"],"static",{density = 1, friction = 0, bounce = 10})
    level.layers["bg"].objects["finish bg1"].name = "finish bg1"
    level.layers["bg"]:insert(level.layers["bg"].objects["finish bg1"])

    level:insert(level.layers["bg"])


    ---- Layer : fg ----
    level.layers["fg"] = display.newGroup()
    level.layers["fg"].name = "fg"

    level.layers["fg"].objects = {}

    level.layers["fg"].objects["p1L"] = display.newImageRect( imgSubFolder .. "p1_L_grassland.png",147,434 )
    level.layers["fg"].objects["p1L"].x = 74
    level.layers["fg"].objects["p1L"].y = 273
    local p1L_shape = {-73.5,-216,-72.5,-217,31.5,-217,49.5,-19,53.5,74,57.5,173,46.5,217,-73.5,217    }
    physics.addBody(level.layers["fg"].objects["p1L"],"static",{density = 1, friction = 0.5, bounce = 0.2, shape = p1L_shape})
    level.layers["fg"].objects["p1L"].name = "p1L"
    level.layers["fg"]:insert(level.layers["fg"].objects["p1L"])

    level.layers["fg"].objects["p1Ra"] = display.newImageRect( imgSubFolder .. "p1_R_grassland.png",130,180 )
    level.layers["fg"].objects["p1Ra"].x = 257
    level.layers["fg"].objects["p1Ra"].y = 402
    local p1Ra_shape = {-25,-63,-19,-89,64,-90,65,90,-34,90,-43,63,-45,50    }
    physics.addBody(level.layers["fg"].objects["p1Ra"],"static",{density = 1, friction = 0.5, bounce = 0.2, shape = p1Ra_shape})
    level.layers["fg"].objects["p1Ra"].name = "p1Ra"
    level.layers["fg"]:insert(level.layers["fg"].objects["p1Ra"])

    level.layers["fg"].objects["p1Rb"] = display.newImageRect( imgSubFolder .. "p1_2_R_grassland.png",132,260 )
    level.layers["fg"].objects["p1Rb"].x = 258
    level.layers["fg"].objects["p1Rb"].y = 186
    local p1Rb_shape = {-60,-87,-66,-130,63,-128,64,128,-21,127    }
    physics.addBody(level.layers["fg"].objects["p1Rb"],"static",{density = 1, friction = 0.5, bounce = 0.2, shape = p1Rb_shape})
    level.layers["fg"].objects["p1Rb"].name = "p1Rb"
    level.layers["fg"]:insert(level.layers["fg"].objects["p1Rb"])

    level.layers["fg"].objects["p2L"] = display.newImageRect( imgSubFolder .. "p2_L_grassland.png",111,234 )
    level.layers["fg"].objects["p2L"].x = 56
    level.layers["fg"].objects["p2L"].y = -51
    local p2L_shape = {-55.5,-74,-54.5,-74,-9.5,-36,4.5,-20,46.5,117,-55.5,117    }
    physics.addBody(level.layers["fg"].objects["p2L"],"static",{density = 1, friction = 0.5, bounce = 0.2, shape = p2L_shape})
    level.layers["fg"].objects["p2L"].name = "p2L"
    level.layers["fg"]:insert(level.layers["fg"].objects["p2L"])

    level.layers["fg"].objects["p2R"] = display.newImageRect( imgSubFolder .. "p2_R_grassland.png",175,227 )
    level.layers["fg"].objects["p2R"].x = 232
    level.layers["fg"].objects["p2R"].y = -54
    local p2R_shape = {-33.5,-73.5,5.5,-113.5,86.5,-113.5,87.5,113.5,-47.5,113.5,-52.5,104.5,-84.5,11.5    }
    physics.addBody(level.layers["fg"].objects["p2R"],"static",{density = 1, friction = 0.5, bounce = 0.2, shape = p2R_shape})
    level.layers["fg"].objects["p2R"].name = "p2R"
    level.layers["fg"]:insert(level.layers["fg"].objects["p2R"])

    level.layers["fg"].objects["dead end"] = display.newRect(176,-459,128,89)
    level.layers["fg"].objects["dead end"].strokeWidth = 0
    level.layers["fg"].objects["dead end"]:setFillColor(255,255,255 )
    level.layers["fg"].objects["dead end"]:setStrokeColor(255,255,255 )
    level.layers["fg"].objects["dead end"].name = "dead end"
    level.layers["fg"].objects["dead end"].isVisible = false
    level.layers["fg"].objects["dead end"].alpha = 0
    level.layers["fg"]:insert(level.layers["fg"].objects["dead end"])

    level.layers["fg"].objects["p3Ra"] = display.newImageRect( imgSubFolder .. "p3_R_grassland.png",80,207 )
    level.layers["fg"].objects["p3Ra"].x = 279
    level.layers["fg"].objects["p3Ra"].y = -270
    local p3Ra_shape = {-39,99.5,-17,-11.5,3,-103.5,39,-103.5,40,102.5,-39,102.5    }
    physics.addBody(level.layers["fg"].objects["p3Ra"],"static",{density = 1, friction = 0.5, bounce = 0.2, shape = p3Ra_shape})
    level.layers["fg"].objects["p3Ra"].name = "p3Ra"
    level.layers["fg"]:insert(level.layers["fg"].objects["p3Ra"])

    level.layers["fg"].objects["p3Rb"] = display.newImageRect( imgSubFolder .. "p3_2_R_grassland.png",97,156 )
    level.layers["fg"].objects["p3Rb"].x = 271
    level.layers["fg"].objects["p3Rb"].y = -445
    local p3Rb_shape = {-48.5,-76,-47.5,-78,47.5,-77,47.5,77,11.5,76,-26.5,21,-48.5,-24    }
    physics.addBody(level.layers["fg"].objects["p3Rb"],"static",{density = 1, friction = 0.5, bounce = 0.2, shape = p3Rb_shape})
    level.layers["fg"].objects["p3Rb"].name = "p3Rb"
    level.layers["fg"]:insert(level.layers["fg"].objects["p3Rb"])

    level.layers["fg"].objects["p3L"] = display.newImageRect( imgSubFolder .. "p3_M_grassland.png",132,350 )
    level.layers["fg"].objects["p3L"].x = 162
    level.layers["fg"].objects["p3L"].y = -345
    local p3L_shape = {-65,-66,1,-175,64,-175,66,-117,-12,174,-49,174,-66,129    }
    physics.addBody(level.layers["fg"].objects["p3L"],"static",{density = 1, friction = 0.5, bounce = 0.2, shape = p3L_shape})
    level.layers["fg"].objects["p3L"].name = "p3L"
    level.layers["fg"]:insert(level.layers["fg"].objects["p3L"])

    level.layers["fg"].objects["p4R"] = display.newImageRect( imgSubFolder .. "p4_R_grassland.png",143,179 )
    level.layers["fg"].objects["p4R"].x = 248
    level.layers["fg"].objects["p4R"].y = -606
    local p4R_shape = {-70.5,85.5,15.5,13.5,14.5,14.5,67.5,-80.5,70.5,-80.5,71.5,88.5,-70.5,88.5    }
    physics.addBody(level.layers["fg"].objects["p4R"],"static",{density = 1, friction = 0.5, bounce = 0.2, shape = p4R_shape})
    level.layers["fg"].objects["p4R"].name = "p4R"
    level.layers["fg"]:insert(level.layers["fg"].objects["p4R"])

    level.layers["fg"].objects["p5L"] = display.newImageRect( imgSubFolder .. "p5_L_grassland.png",72,263 )
    level.layers["fg"].objects["p5L"].x = 36
    level.layers["fg"].objects["p5L"].y = -852
    local p5L_shape = {-36,-113.5,-36,-113.5,-36,-120.5,33,-34.5,32,88.5,-28,128.5,-36,128.5    }
    physics.addBody(level.layers["fg"].objects["p5L"],"static",{density = 1, friction = 0.5, bounce = 0.2, shape = p5L_shape})
    level.layers["fg"].objects["p5L"].name = "p5L"
    level.layers["fg"]:insert(level.layers["fg"].objects["p5L"])

    level.layers["fg"].objects["p5R"] = display.newImageRect( imgSubFolder .. "p5_R_grassland.png",92,196 )
    level.layers["fg"].objects["p5R"].x = 274
    level.layers["fg"].objects["p5R"].y = -846
    local p5R_shape = {-43,-36,37,-96,45,-96,46,94,30,94,-11,57,-28,8    }
    physics.addBody(level.layers["fg"].objects["p5R"],"static",{density = 1, friction = 0.5, bounce = 0.2, shape = p5R_shape})
    level.layers["fg"].objects["p5R"].name = "p5R"
    level.layers["fg"]:insert(level.layers["fg"].objects["p5R"])

    level.layers["fg"].objects["p6L"] = display.newImageRect( imgSubFolder .. "p6_L_grassland.png",129,287 )
    level.layers["fg"].objects["p6L"].x = 64
    level.layers["fg"].objects["p6L"].y = -1260
    local p6L_shape = {-64.5,-142.5,-63.5,-143.5,-60.5,-143.5,60.5,-37.5,60.5,16.5,-61.5,141.5,-64.5,141.5    }
    physics.addBody(level.layers["fg"].objects["p6L"],"static",{density = 1, friction = 0.5, bounce = 0.2, shape = p6L_shape})
    level.layers["fg"].objects["p6L"].name = "p6L"
    level.layers["fg"]:insert(level.layers["fg"].objects["p6L"])

    level.layers["fg"].objects["p7L"] = display.newImageRect( imgSubFolder .. "tempL.png",166,1166 )
    level.layers["fg"].objects["p7L"].x = -61
    level.layers["fg"].objects["p7L"].y = -1965
    local p7L_shape = {-83,-577,69,-583,83,-140,82,569,52,578,-83,578    }
    physics.addBody(level.layers["fg"].objects["p7L"],"static",{density = 1, friction = 0.9, bounce = 0.1, shape = p7L_shape})
    level.layers["fg"].objects["p7L"].name = "p7L"
    level.layers["fg"]:insert(level.layers["fg"].objects["p7L"])
    
    level.layers["fg"].objects["p7R"] = display.newImageRect( imgSubFolder .. "tempR.png",144,1141 )
    level.layers["fg"].objects["p7R"].x = 386
    level.layers["fg"].objects["p7R"].y = -1971
    local p7R_shape = {-72,-569.5,-71,-570.5,71,-570.5,72,570.5,-72,570.5    }
    physics.addBody(level.layers["fg"].objects["p7R"],"static",{density = 1, friction = 0.9, bounce = 0.1, shape = p7R_shape})
    level.layers["fg"].objects["p7R"].name = "p7R"
    level.layers["fg"]:insert(level.layers["fg"].objects["p7R"])

    level.layers["fg"].objects["rock1"] = display.newImageRect( imgSubFolder .. "p7_L_smallRock.png",103,122 )
    level.layers["fg"].objects["rock1"].x = 84
    level.layers["fg"].objects["rock1"].y = -1575
    local rock1_shape = {-36.5,-45,-4.5,-57,-1.5,-57,36.5,-42,38.5,28,14.5,55,-19.5,50,-39.5,29    }
    physics.addBody(level.layers["fg"].objects["rock1"],"static",{density = 1, friction = 0.9, bounce = 0.1, shape = rock1_shape})
    level.layers["fg"].objects["rock1"].name = "rock1"
    level.layers["fg"]:insert(level.layers["fg"].objects["rock1"])

    level.layers["fg"].objects["rock2"] = display.newImageRect( imgSubFolder .. "p7_R_smallRock.png",110,117 )
    level.layers["fg"].objects["rock2"].x = 247
    level.layers["fg"].objects["rock2"].y = -1578
    local rock2_shape = {-17,-29.5,11,-37.5,40,-23.5,44,21.5,30,43.5,17,43.5,-23,23.5    }
    physics.addBody(level.layers["fg"].objects["rock2"],"static",{density = 1, friction = 0.9, bounce = 0.1, shape = rock2_shape})
    level.layers["fg"].objects["rock2"].name = "rock2"
    level.layers["fg"]:insert(level.layers["fg"].objects["rock2"])

    level.layers["fg"].objects["rock3"] = display.newImageRect( imgSubFolder .. "p8_L_medRock.png",189,222 )
    level.layers["fg"].objects["rock3"].x = 110
    level.layers["fg"].objects["rock3"].y = -1765
    local rock3_shape = {-68.5,-64,-5.5,-79,-0.5,-79,61.5,-60,67.5,34,26.5,72,-44.5,63,-84.5,32    }
    physics.addBody(level.layers["fg"].objects["rock3"],"static",{density = 1, friction = 0.9, bounce = 0.1, shape = rock3_shape})
    level.layers["fg"].objects["rock3"].name = "rock3"
    level.layers["fg"]:insert(level.layers["fg"].objects["rock3"])

    level.layers["fg"].objects["rock4"] = display.newImageRect( imgSubFolder .. "p9_L_lrgRock.png",198,229 )
    level.layers["fg"].objects["rock4"].x = 51
    level.layers["fg"].objects["rock4"].y = -2018
    local rock4_shape = {-99,9.5,-67,-108.5,-5,-105.5,84,-71.5,84,56.5,27,111.5,12,111.5,-92,78.5    }
    physics.addBody(level.layers["fg"].objects["rock4"],"static",{density = 1, friction = 0.9, bounce = 0.1, shape = rock4_shape})
    level.layers["fg"].objects["rock4"].name = "rock4"
    level.layers["fg"]:insert(level.layers["fg"].objects["rock4"])

    level.layers["fg"].objects["rock5"] = display.newImageRect( imgSubFolder .. "p10_R_lrgRock.png",259,377 )
    level.layers["fg"].objects["rock5"].x = 226
    level.layers["fg"].objects["rock5"].y = -2296
    local rock5_shape = {-107.5,73.5,-76.5,-164.5,15.5,-179.5,123.5,-123.5,128.5,83.5,52.5,174.5,-54.5,155.5    }
    physics.addBody(level.layers["fg"].objects["rock5"],"static",{density = 1, friction = 0.9, bounce = 0.1, shape = rock5_shape})
    level.layers["fg"].objects["rock5"].name = "rock5"
    level.layers["fg"]:insert(level.layers["fg"].objects["rock5"])

    level.layers["fg"].objects["finish"] = display.newImageRect( imgSubFolder .. "finish line.png",572,206 )
    level.layers["fg"].objects["finish"].x = 158
    level.layers["fg"].objects["finish"].y = -2641
    level.layers["fg"].objects["finish"].name = "finish"
    level.layers["fg"]:insert(level.layers["fg"].objects["finish"])

    level.layers["fg"].objects["finish wall"] = display.newImageRect( imgSubFolder .. "finish line.png",572,206 )
    level.layers["fg"].objects["finish wall"].x = 158
    level.layers["fg"].objects["finish wall"].y = -2808
    physics.addBody(level.layers["fg"].objects["finish wall"],"static",{density = 1, friction = 0, bounce = 5})
    level.layers["fg"].objects["finish wall"].name = "finish wall"
    level.layers["fg"]:insert(level.layers["fg"].objects["finish wall"])

    level.layers["fg"].objects["left bound"] = display.newRect(-9,-2999,9,3480)
    level.layers["fg"].objects["left bound"].strokeWidth = 1
    level.layers["fg"].objects["left bound"]:setFillColor(255,255,255 )
    level.layers["fg"].objects["left bound"]:setStrokeColor(255,255,255 )
    physics.addBody(level.layers["fg"].objects["left bound"],"static",{density = 1, friction = 0, bounce = 1})
    level.layers["fg"].objects["left bound"].name = "left bound"
    level.layers["fg"].objects["left bound"].isVisible = false
    level.layers["fg"]:insert(level.layers["fg"].objects["left bound"])

    level.layers["fg"].objects["right bound"] = display.newRect(320,-2999,9,3480)
    level.layers["fg"].objects["right bound"].strokeWidth = 1
    level.layers["fg"].objects["right bound"]:setFillColor(255,255,255 )
    level.layers["fg"].objects["right bound"]:setStrokeColor(255,255,255 )
    physics.addBody(level.layers["fg"].objects["right bound"],"static",{density = 1, friction = 0, bounce = 1})
    level.layers["fg"].objects["right bound"].name = "right bound"
    level.layers["fg"].objects["right bound"].isVisible = false
    level.layers["fg"]:insert(level.layers["fg"].objects["right bound"])

    level.layers["fg"].objects["dam1"] = display.newImageRect( imgSubFolder .. "log.png",88,60 )
    level.layers["fg"].objects["dam1"].x = 117
    level.layers["fg"].objects["dam1"].y = -778
    local dam1_shape = {-44,-14,-28,-30,-13,-30,37,-19,43,9,22,30,13,30,-41,10    }
    physics.addBody(level.layers["fg"].objects["dam1"],"dynamic",{density = 0.001, friction = 0, bounce = 0, shape = dam1_shape})
    level.layers["fg"].objects["dam1"].name = "dam1"
    level.layers["fg"]:insert(level.layers["fg"].objects["dam1"])

    level.layers["fg"].objects["dam2"] = display.newImageRect( imgSubFolder .. "log.png",88,60 )
    level.layers["fg"].objects["dam2"].x = 117
    level.layers["fg"].objects["dam2"].y = -842
    local dam2_shape = {-44,-14,-28,-30,-13,-30,37,-19,43,9,22,30,13,30,-41,10    }
    physics.addBody(level.layers["fg"].objects["dam2"],"dynamic",{density = 0.001, friction = 0, bounce = 0, shape = dam2_shape})
    level.layers["fg"].objects["dam2"].name = "dam2"
    level.layers["fg"]:insert(level.layers["fg"].objects["dam2"])

    level.layers["fg"].objects["dam3"] = display.newImageRect( imgSubFolder .. "log.png",88,60 )
    level.layers["fg"].objects["dam3"].x = 203
    level.layers["fg"].objects["dam3"].y = -837
    local dam3_shape = {-44,-14,-28,-30,-13,-30,37,-19,43,9,22,30,13,30,-41,10    }
    physics.addBody(level.layers["fg"].objects["dam3"],"dynamic",{density = 0.001, friction = 0, bounce = 0, shape = dam3_shape})
    level.layers["fg"].objects["dam3"].name = "dam3"
    level.layers["fg"]:insert(level.layers["fg"].objects["dam3"])

    level.layers["fg"].objects["dam4"] = display.newImageRect( imgSubFolder .. "log.png",88,60 )
    level.layers["fg"].objects["dam4"].x = 208
    level.layers["fg"].objects["dam4"].y = -778
    local dam4_shape = {-44,-14,-28,-30,-13,-30,37,-19,43,9,22,30,13,30,-41,10    }
    physics.addBody(level.layers["fg"].objects["dam4"],"dynamic",{density = 0.001, friction = 0, bounce = 0, shape = dam4_shape})
    level.layers["fg"].objects["dam4"].name = "dam4"
    level.layers["fg"]:insert(level.layers["fg"].objects["dam4"])

    level.layers["fg"].objects["theBeave"] = display.newImageRect( imgSubFolder .. "theBeave.png",58,74 )
    level.layers["fg"].objects["theBeave"].x = 66
    level.layers["fg"].objects["theBeave"].y = -1271
    level.layers["fg"].objects["theBeave"].name = "theBeave"
    level.layers["fg"]:insert(level.layers["fg"].objects["theBeave"])
	
	level.layers["fg"].objects["redLine"] = display.newRect(-51,-2699,423,7)
    level.layers["fg"].objects["redLine"].strokeWidth = 1
    level.layers["fg"].objects["redLine"]:setFillColor(255,0,0 )
    level.layers["fg"].objects["redLine"]:setStrokeColor(0,0,0 )
    level.layers["fg"].objects["redLine"].name = "redLine"
    level.layers["fg"]:insert(level.layers["fg"].objects["redLine"])
	
	level.layers["fg"].objects["info"] = display.newImageRect( imgSubFolder .. "infoSign.gif",120,63 )
    level.layers["fg"].objects["info"].x = 60
    level.layers["fg"].objects["info"].y = 300
    level.layers["fg"].objects["info"].name = "info"
    level.layers["fg"]:insert(level.layers["fg"].objects["info"])

    level.layers["fg"].objects["flag1"] = display.newImageRect( imgSubFolder .. "flag.gif",54,63 )
    level.layers["fg"].objects["flag1"].x = 42
    level.layers["fg"].objects["flag1"].y = -2725
    level.layers["fg"].objects["flag1"].name = "flag1"
    level.layers["fg"]:insert(level.layers["fg"].objects["flag1"])

    level.layers["fg"].objects["flag2"] = display.newImageRect( imgSubFolder .. "flag.gif",54,63 )
    level.layers["fg"].objects["flag2"].x = 284
    level.layers["fg"].objects["flag2"].y = -2725
    level.layers["fg"].objects["flag2"].name = "flag2"
    level.layers["fg"]:insert(level.layers["fg"].objects["flag2"])
	
	local beaverGIF_png = sprite.newSpriteSheet( imgSubFolder .. "beaverGIF.png", 100,98)
    local beaverGIF_png_Set = sprite.newSpriteSet(beaverGIF_png, 1,5)
    sprite.add(beaverGIF_png_Set,"swim",1,5,200,1)
    level.layers["fg"].objects["beaver"] = sprite.newSprite(beaverGIF_png_Set)
    level.layers["fg"].objects["beaver"].currentFrame = 1
    level.layers["fg"].objects["beaver"].x = 174
    level.layers["fg"].objects["beaver"].y = 456
    level.layers["fg"].objects["beaver"].xScale = 0.33
    level.layers["fg"].objects["beaver"].yScale = 0.346938775510204
    local beaver_shape = {-15.5,-13,-12.5,-16,13.5,-16,15.5,-13,15.5,9,3.5,17,-1.5,17,-15.5,9    }
    physics.addBody(level.layers["fg"].objects["beaver"],"dynamic",{density = 1, friction = 0, bounce = .3, shape = beaver_shape})
    level.layers["fg"].objects["beaver"].name = "beaver"
    level.layers["fg"]:insert(level.layers["fg"].objects["beaver"])
    
    
     ---- Asset : swamp sprite ----
    local SheetInfo = require ("Scripts.swampSprite")
    local swampSheet = graphics.newImageSheet("Images/swampSprite.png", SheetInfo:getSheet())
    local sequenceData = {
          { name = "normalRun", --name of animation sequence
          start = 1, --starting frame index
          count = 5, --total number of frames to animate consecutively before stopping or looping
          time = 1000, --optional, in milliseconds; if not supplied, the sprite is frame-based
          loopCount = 0, --optional. 0 (default) repeats forever; a positive integer specifies the number of loops
          loopDirection = "forward" --optional, either "forward" (default) or "bounce" which will play forward then backwards through the sequence of frames
          } --if defining more sequences, place a comma here and proceed to the next sequence sub-table
    }
    local swampAnim = display.newSprite(swampSheet, sequenceData)
    swampAnim.x = display.contentWidth/2
    swampAnim.y = -1300
    swampAnim.contentWidth = display.contentWidth
    level.layers["fg"].objects["swamp"] = swampAnim
    level.layers["fg"]:insert(level.layers["fg"].objects["swamp"])
    level:insert(level.layers["fg"])

     ---- Asset : rapid sprite ----
    local SheetInfo2 = require ("Scripts.rapidSprite")
    local rapidSheet = graphics.newImageSheet("Images/rapidSprite.png", SheetInfo2:getSheet())
    local sequenceData2 = {
          { name = "normalRun", --name of animation sequence
          start = 1, --starting frame index
          count = 5, --total number of frames to animate consecutively before stopping or looping
          time = 1000, --optional, in milliseconds; if not supplied, the sprite is frame-based
          loopCount = 0, --optional. 0 (default) repeats forever; a positive integer specifies the number of loops
          loopDirection = "forward" --optional, either "forward" (default) or "bounce" which will play forward then backwards through the sequence of frames
          } --if defining more sequences, place a comma here and proceed to the next sequence sub-table
    }
    local rapidAnim = display.newSprite(rapidSheet, sequenceData2)
    rapidAnim.x = display.contentWidth/2
    rapidAnim.y = -625
    rapidAnim.contentWidth = display.contentWidth
    level.layers["fg"].objects["rapids"] = rapidAnim
    level.layers["fg"]:insert(level.layers["fg"].objects["rapids"])


    return level

end -- CreateLevel

function removeSelf()
	level.layers["fg"]:removeSelf()
	level.layers["bg"]:removeSelf()
end

