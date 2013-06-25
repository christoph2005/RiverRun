-----------------------------------------------------------------------------------------
--
-- creditsSceen.lua
--
-----------------------------------------------------------------------------------------
local storyboard = require( "storyboard" )
local sceneOpt = storyboard.newScene()

-- include Corona's "widget" library
local widget = require "widget"

print("Credit Screen")
--------------------------------------------

-- forward declarations and other locals
local background
local background2
local riverRun, alex, alexImage, alexInfo, chris, chrisImage, chrisInfo, raf, rafImage, rafInfo, teamImage
local items
local backgroundMusic = audio.loadStream("Audio/Credits.mp3")

function leaveOptions()
	print("leaving credits")
    storyboard.gotoScene( "menu", "fade", 500 )
end

-----------------------------------------------------------------------------------------
-- BEGINNING OF YOUR IMPLEMENTATION
-- 
-- NOTE: Code outside of listener functions (below) will only be executed once,
--		 unless storyboard.removeScene() is called.
-- 
-----------------------------------------------------------------------------------------

-- Called when the scene's view does not exist:
function sceneOpt:createScene( event )
	local group = self.view
	storyboard.removeAll()
--[[	
	physics = require("physics")
	local levelDirector =nil
	local myLevel = {}
]]	
	items = {}
	
	print("Credits")
--[[	
	levelDirector = require ("creditsBuild")

	myAssets = levelDirector.LoadAssets()

	myLevel = levelDirector.CreateLevel(physics)
]]
	
	background = display.newImageRect( "Images/water.jpg", display.contentWidth, display.contentHeight )
	background2 = display.newImageRect( "Images/water2.jpg", display.contentWidth, display.contentHeight )

	riverRun = display.newImageRect( "Images/Credits/logo.gif",307,117 )
    riverRun.x = 160
    riverRun.y = 73
    riverRun.name = "riverRun"
	
	alex = display.newImageRect( "Images/Credits/alex.gif",180,83 )
    alex.x = 160
    alex.y = -135
    alex.name = "alex"

    alexImage = display.newImageRect( "Images/Credits/alex-image.jpeg",140,165 )
    alexImage.x = 83
    alexImage.y = -289
    alexImage.name = "alexImage"

    alexInfo = display.newImageRect( "Images/Credits/alex-info.jpeg",140,165 )
    alexInfo.x = 248
    alexInfo.y = -289
    alexInfo.name = "alexInfo"

    chris = display.newImageRect( "Images/Credits/chris.gif",199,92 )
    chris.x = 160
    chris.y = -572
    chris.name = "chris"

    chrisImage = display.newImageRect( "Images/Credits/chris-image.jpeg",140,165 )
    chrisImage.x = 248
    chrisImage.y = -743
    chrisImage.name = "chrisImage"

    chrisInfo = display.newImageRect( "Images/Credits/chris-info.jpeg",140,165 )
    chrisInfo.x = 83
    chrisInfo.y = -743
    chrisInfo.name = "chrisInfo"

    raf = display.newImageRect( "Images/Credits/rafael.gif",183,79 )
    raf.x = 160
    raf.y = -1004
    raf.name = "raf"

    rafImage = display.newImageRect( "Images/Credits/rafael-image.jpeg",140,165 )
    rafImage.x = 83
    rafImage.y = -1163
    rafImage.name = "rafImage"

    rafInfo = display.newImageRect( "Images/Credits/rafael-info.jpeg",140,165 )
    rafInfo.x = 248
    rafInfo.y = -1163
    rafInfo.name = "rafInfo"

    teamImage = display.newImageRect( "Images/Credits/team.jpg",300,204 )
    teamImage.x = display.contentWidth * 0.5
    teamImage.y = -1450
    teamImage.name = "teamImage"
	
--[[	
	riverRun = myLevel.layers['fg'].objects['riverRun']
	alex = myLevel.layers['fg'].objects['alex']
	alexImage = myLevel.layers['fg'].objects['alexImage']
	alexInfo = myLevel.layers['fg'].objects['alexInfo']
	chris = myLevel.layers['fg'].objects['chris']
	chrisImage = myLevel.layers['fg'].objects['chrisImage']
	chrisInfo = myLevel.layers['fg'].objects['chrisInfo']
	raf = myLevel.layers['fg'].objects['raf']
	rafImage = myLevel.layers['fg'].objects['rafImage']
	rafInfo = myLevel.layers['fg'].objects['rafInfo']
	teamImage = myLevel.layers['fg'].objects['teamImage']
]]	
	items = {riverRun, alex, alexImage, alexInfo, chris, chrisImage, chrisInfo, raf, rafImage, rafInfo, teamImage}
	
   
	-- display a background image
	background2.x = 160
	background2.y = -240
	background:setReferencePoint( display.TopLeftReferencePoint )
	background2:setReferencePoint( display.TopLeftReferencePoint )
	background.x, background.y = 0, 0
	
	-- all display objects must be inserted into group
	group:insert( background )
	group:insert( background2 )
--	group:insert( myLevel )
	for i=1, # items do
		group:insert( items[i] )
	end
--  group:insert( alex )
	
end

-- Called immediately after scene has moved onscreen:
function sceneOpt:enterScene( event )
	local group = self.view
	
	timer.performWithDelay(17000, leaveOptions)

	local backgroundMusicChannel = audio.play( backgroundMusic, { channel=1, loops=-1, fadein=1000 }  )  -- play the background music on channel 1, loop infinitely, and fadein over 5 seconds 

	background.enterFrame = scroll
	Runtime:addEventListener("enterFrame", background)

	background2.enterFrame = scroll
	Runtime:addEventListener("enterFrame", background2)
	
	-- INSERT code here (e.g. start timers, load audio, start listeners, etc.)
	
end

-- Called when scene is about to move offscreen:
function sceneOpt:exitScene( event )
	local group = self.view
	physics.pause()
	
	Runtime:removeEventListener("enterFrame", background)
	
	Runtime:removeEventListener("enterFrame", background2)
	
	-- INSERT code here (e.g. stop timers, remove listenets, unload sounds, etc.)
	
end

-- If scene's view is removed, scene:destroyScene() will be called just prior to:
function sceneOpt:destroyScene( event )
	local group = self.view
	audio.stop(1)
--	physics.stop()
--	package.loaded[physics] = nil
--	physics = nil
end

function scroll(self, event)
		speed = 1.5
		if self.y >= 475 then
			self.y = -480
		else
			self.y = self.y + (speed+1)
		end
		
		for i=1, #items do
			items[i].y = items[i].y + 2
		end
	end
-----------------------------------------------------------------------------------------
-- END OF YOUR IMPLEMENTATION
-----------------------------------------------------------------------------------------

-- "createScene" event is dispatched if scene's view does not exist
sceneOpt:addEventListener( "createScene", sceneOpt )

-- "enterScene" event is dispatched whenever scene transition has finished
sceneOpt:addEventListener( "enterScene", sceneOpt )

-- "exitScene" event is dispatched whenever before next scene's transition begins
sceneOpt:addEventListener( "exitScene", sceneOpt )

-- "destroyScene" event is dispatched before view is unloaded, which can be
-- automatically unloaded in low memory situations, or explicitly via a call to
-- storyboard.purgeScene() or storyboard.removeScene().
sceneOpt:addEventListener( "destroyScene", sceneOpt )

-----------------------------------------------------------------------------------------

return sceneOpt