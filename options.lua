-----------------------------------------------------------------------------------------
--
-- options.lua
--
-----------------------------------------------------------------------------------------
local storyboard = require( "storyboard" )
local sceneOpt = storyboard.newScene()


-- include Corona's "widget" library
local widget = require "widget"

print("options")
--------------------------------------------

-- forward declarations and other locals
local background
local background2
local menuBtn
local soundBtn
local soundTxt
local tiltTabBtn
local diffBtn
local left0Btn
local right0Btn
local left1Btn
local right1Btn
local left2Btn
local right2Btn

local function menuBtnRelease()

	print("Leaving Options")
	storyboard.gotoScene( "menu", "fade", 500 )

	return true	-- indicates successful touch
end

local function left0BtnRelease()

	if audio.getVolume() > .1 then
		audio.setVolume(audio.getVolume() - .1);
		print(audio.getVolume())
	else
		audio.setVolume(0);
		print(audio.getVolume())
	end
	soundTxt.text = math.round(audio.getVolume()*100)
	return true	-- indicates successful touch
end

local function right0BtnRelease()

	if audio.getVolume() < .9 then
		audio.setVolume(audio.getVolume() + .1);
		print(audio.getVolume())
	else
		audio.setVolume(1);
		print(audio.getVolume())
	end
	soundTxt.text = math.round(audio.getVolume()*100)
	return true	-- indicates successful touch
end

local function soundBtnRelease()

	print("Leaving Options")
	storyboard.gotoScene( "menu", "fade", 500 )

	return true	-- indicates successful touch
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
	storyboard.removeAll()
	local group = self.view
	background = display.newImageRect( "Images/water.png", display.contentWidth, display.contentHeight )
	background2 = display.newImageRect( "Images/water2.png", display.contentWidth, display.contentHeight )
	
	soundTxt = display.newText("",20,40,native.systemFont,36)
	soundTxt.x = display.contentWidth*0.5
	soundTxt.y = display.contentHeight - 325
	soundTxt.text = math.round(audio.getVolume()*100)
	
	-- display a background image
	background2.x = 160
	background2.y = -240
	background:setReferencePoint( display.TopLeftReferencePoint )
	background2:setReferencePoint( display.TopLeftReferencePoint )
	background.x, background.y = 0, 0

	-- create a widget button (which will loads options.lua on release)
	menuBtn = widget.newButton{
		label="          ",
		labelColor = { default={255}, over={128} },
		defaultFile="Images/Options/menuBack.gif",
		overFile="Images/Options/menuBack-over.gif",
		width=100, height=61,
		onRelease = menuBtnRelease	-- event listener function
	}
	menuBtn:setReferencePoint( display.CenterReferencePoint )
	menuBtn.x = display.contentWidth*0.15
	menuBtn.y = display.contentHeight - 450

	-- create a widget button (which will loads level1.lua on release)
	soundBtn = widget.newButton{
		label="          ",
		labelColor = { default={255}, over={128} },
		defaultFile="Images/Options/sound.gif",
		width=150, height=50
	}
	soundBtn:setReferencePoint( display.CenterReferencePoint )
	soundBtn.x = display.contentWidth*0.5
	soundBtn.y = display.contentHeight - 375

	-- create a widget button (which will loads level1.lua on release)
	left0Btn = widget.newButton{
		label="          ",
		labelColor = { default={255}, over={128} },
		defaultFile="Images/Options/left.gif",
		width=75, height=50,
		onRelease = left0BtnRelease	-- event listener function
	}
	left0Btn:setReferencePoint( display.CenterReferencePoint )
	left0Btn.x = display.contentWidth*0.20
	left0Btn.y = display.contentHeight - 325

	-- create a widget button (which will loads level1.lua on release)
	right0Btn = widget.newButton{
		label="          ",
		labelColor = { default={255}, over={128} },
		defaultFile="Images/Options/right.gif",
		width=75, height=50,
		onRelease = right0BtnRelease	-- event listener function
	}
	right0Btn:setReferencePoint( display.CenterReferencePoint )
	right0Btn.x = display.contentWidth*0.80
	right0Btn.y = display.contentHeight - 325

	-- create a widget button (which will loads level1.lua on release)
	tiltTabBtn = widget.newButton{
		label="          ",
		labelColor = { default={255}, over={128} },
		defaultFile="Images/Options/tiltTab.gif",
		width=150, height=50
	}
	tiltTabBtn:setReferencePoint( display.CenterReferencePoint )
	tiltTabBtn.x = display.contentWidth*0.5
	tiltTabBtn.y = display.contentHeight - 275

	-- create a widget button (which will loads level1.lua on release)
	left1Btn = widget.newButton{
		label="          ",
		labelColor = { default={255}, over={128} },
		defaultFile="Images/Options/left.gif",
		width=75, height=50,
		onRelease = soundBtnRelease	-- event listener function
	}
	left1Btn:setReferencePoint( display.CenterReferencePoint )
	left1Btn.x = display.contentWidth*0.20
	left1Btn.y = display.contentHeight - 225

	-- create a widget button (which will loads level1.lua on release)
	right1Btn = widget.newButton{
		label="          ",
		labelColor = { default={255}, over={128} },
		defaultFile="Images/Options/right.gif",
		width=75, height=50,
		onRelease = soundBtnRelease	-- event listener function
	}
	right1Btn:setReferencePoint( display.CenterReferencePoint )
	right1Btn.x = display.contentWidth*0.80
	right1Btn.y = display.contentHeight - 225

	-- create a widget button (which will loads level1.lua on release)
	diffBtn = widget.newButton{
		label="          ",
		labelColor = { default={255}, over={128} },
		defaultFile="Images/Options/difficulty.gif",
		width=150, height=50
	}
	diffBtn:setReferencePoint( display.CenterReferencePoint )
	diffBtn.x = display.contentWidth*0.5
	diffBtn.y = display.contentHeight - 175

	-- create a widget button (which will loads level1.lua on release)
	left2Btn = widget.newButton{
		label="          ",
		labelColor = { default={255}, over={128} },
		defaultFile="Images/Options/left.gif",
		width=75, height=50,
		onRelease = soundBtnRelease	-- event listener function
	}
	left2Btn:setReferencePoint( display.CenterReferencePoint )
	left2Btn.x = display.contentWidth*0.20
	left2Btn.y = display.contentHeight - 125

	-- create a widget button (which will loads level1.lua on release)
	right2Btn = widget.newButton{
		label="          ",
		labelColor = { default={255}, over={128} },
		defaultFile="Images/Options/right.gif",
		width=75, height=50,
		onRelease = soundBtnRelease	-- event listener function
	}
	right2Btn:setReferencePoint( display.CenterReferencePoint )
	right2Btn.x = display.contentWidth*0.80
	right2Btn.y = display.contentHeight - 125
	
	-- all display objects must be inserted into group
	group:insert( background )
	group:insert( background2 ) 
	group:insert( menuBtn ) 
	group:insert( soundBtn )
	group:insert( soundTxt )
	group:insert( tiltTabBtn )
	group:insert( diffBtn )
	group:insert( left0Btn )
	group:insert( right0Btn )
	group:insert( left1Btn )
	group:insert( right1Btn )
	group:insert( left2Btn )
	group:insert( right2Btn )
	
end

-- Called immediately after scene has moved onscreen:
function sceneOpt:enterScene( event )
	local group = self.view
	
	background.enterFrame = scroll
	Runtime:addEventListener("enterFrame", background)

	background2.enterFrame = scroll
	Runtime:addEventListener("enterFrame", background2)
	
	-- INSERT code here (e.g. start timers, load audio, start listeners, etc.)
	
end

-- Called when scene is about to move offscreen:
function sceneOpt:exitScene( event )
	local group = self.view
	
	Runtime:removeEventListener("enterFrame", background)
	
	Runtime:removeEventListener("enterFrame", background2)
	
	-- INSERT code here (e.g. stop timers, remove listenets, unload sounds, etc.)
	
end

-- If scene's view is removed, scene:destroyScene() will be called just prior to:
function sceneOpt:destroyScene( event )
	local group = self.view

        if menuBtn then
		menuBtn:removeSelf()	-- widgets must be manually removed
		menuBtn = nil
	end
	
	if soundBtn then
		soundBtn:removeSelf()	-- widgets must be manually removed
		soundBtn = nil
	end
	
	if tiltTabBtn then
		tiltTabBtn:removeSelf()	-- widgets must be manually removed
		tiltTabBtn = nil
	end

	if diffBtn then
		diffBtn:removeSelf()	-- widgets must be manually removed
		diffBtn = nil
	end

	if left0Btn then
		left0Btn:removeSelf()	-- widgets must be manually removed
		left0Btn = nil
	end

	if right0Btn then
		right0Btn:removeSelf()	-- widgets must be manually removed
		right0Btn = nil
	end

	if left1Btn then
		left1Btn:removeSelf()	-- widgets must be manually removed
		left1Btn = nil
	end

	if right1Btn then
		right1Btn:removeSelf()	-- widgets must be manually removed
		right1Btn = nil
	end

	if left2Btn then
		left2Btn:removeSelf()	-- widgets must be manually removed
		left2Btn = nil
	end

	if right2Btn then
		right2Btn:removeSelf()	-- widgets must be manually removed
		right2Btn = nil
	end

end

function scroll(self, event)
		speed = 1.5
		if self.y >= 475 then
			self.y = -480
		else
			self.y = self.y + (speed+1)
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