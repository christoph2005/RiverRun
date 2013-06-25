local imgSubFolder = ""

if (application.LevelDirectorSettings.imagesSubfolder ~= nil) then
    imgSubFolder = application.LevelDirectorSettings.imagesSubfolder
    imgSubFolder = imgSubFolder .. "/"
end
-- Not sure of the necessity of the above code but I used it to be safe

function beaverChar()   
   local beaverGIF_png = sprite.newSpriteSheet( imgSubFolder .. "beaverGIF.png", 100,98)
   local beaverGIF_png_Set = sprite.newSpriteSet(beaverGIF_png, 1,5)
   local beaver_shape = {-16,-9.5,-13,-16.5,14,-16.5,16,-9.5,16,6.5,3,17.5,-2,17.5,-16,7.5    }
   local beaver = sprite.newSprite(beaverGIF_png_Set)
      beaver.currentFrame = 1
      beaver.x = 161
      beaver.y = 426
      beaver.xScale = 0.34
      beaver.yScale = 0.357142857142857
      beaver.isBullit = true
      beaver.isPlayer = true
      beaver.angularDamping = 5
      beaver.timeLastInSwamp = 0
      beaver.timeLastInRapid = 0
      beaver.physicsProperties = {density = 1, friction = 0, bounce = 0, shape = beaver_shape}
      beaver.name = "beaver"
      return beaver
end