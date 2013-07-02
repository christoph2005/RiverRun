-----------------------------------------------------------------------------------------
--
-- creditsSceen.lua
--
-----------------------------------------------------------------------------------------
-- forward declarations and other locals

local levelDirector
local group, co, co1, c
local storyboard = require( "storyboard" )
local sceneOpt = storyboard.newScene()
local backgroundMusic = audio.loadStream("Audio/Credits.mp3")

-- include Corona's "widget" library
local widget = require "widget"

print("Credit Screen")
--------------------------------------------
function credits(creditsObjects)
   local c = {}
   c.curr = 1
   function c.enterFrame(self,event)
      if c.curr <= #creditsObjects then
         --print("c.curr: "..tostring(c.curr))
         --print("looping")
         --print("isPlaying: "..tostring(creditsObjects[c.curr].isPlaying))
         --print("done: "..tostring(creditsObjects[c.curr].done))
         if(creditsObjects[c.curr].done) then
               creditsObjects[c.curr]=nil
               c.curr = c.curr+1
         else
            if (not creditsObjects[c.curr].isPlaying) then
               creditsObjects[c.curr] = creditsObjects[c.curr].play()
            end
         end
      else
         local bg = display.newImageRect("Images/water.jpg",display.contentWidth, display.contentHeight)
         bg.x = display.contentWidth*.5
         bg.y = display.contentHeight*.5
         group:insert(bg)
         local logo = display.newImage("Images/logo.gif")
         logo:scale(0.5, 0.5)
         logo.x = display.contentWidth*.5
         logo.y = display.contentHeight*.5-150
         group:insert(logo)
         local team = display.newImage("team.png")
         team:scale(0.7,0.7)
         team.x = display.contentWidth*.5
         team.y = display.contentHeight*.5+50
         group:insert(team)
         Runtime:removeEventListener("enterFrame",c)
         --print("Credits Over")      
      end
   end
   return c
end
function creditsObject(imgPath,items)
   local co = {}   
   local fontSize = 16   
   co.done = false
   co.isPlaying = false
   local function done()
      return #co.group>0 and co.group[#co.group].y >= co.midY
   end
   local function readyForMore()
      return (#co.group < #items)
         and ( #co.group ==0 or (co.group[#co.group].y > co.topY+2.5*fontSize))
   end
   function co.play()
      co = display.newImageRect(imgPath, 200, 200)
      co.x = display.contentWidth/2
      co.y = 120
      co.group = display.newGroup()
      co.topY = co.contentHeight*.5+co.y + 20
      co.botY = display.contentHeight-15
      co.midY = (co.botY+co.topY)*.5
      co.heightY = (co.botY-co.topY)
      co.isPlaying = true
      co.done = false
      function co.enterFrame(self,event)
         if done() then
            for i=#co.group,1,-1 do
               co.group[i]:removeSelf()
            end
            co:removeSelf()         
            Runtime:removeEventListener("enterFrame", co)
            co.done = true
            co.isPlaying = false
         else
            if readyForMore() then
               local newText = display.newText(items[#co.group+1], 0, co.topY, native.systemFont, fontSize)
               newText:setTextColor(255, 255, 255)
               newText.x = display.contentWidth*.5
               table.insert(co.group,newText)
            end
            for i=1, #co.group do
               local dist = math.abs(co.group[i].y-co.topY)
               local alphaMag = 1 - math.abs(dist/co.heightY)
               co.group[i].y = co.group[i].y+1
               co.group[i].alpha = alphaMag
            end
         end
      end
      Runtime:addEventListener("enterFrame", co)
      group:insert(co)
      return co
   end   
   return co
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
	group = self.view
	storyboard.removeAll()
end

-- Called immediately after scene has moved onscreen:
function sceneOpt:enterScene( event )
	group = self.view   
	function leaveOptions()
      c = nil
	   print("leaving credits")
      storyboard.gotoScene( "menu", "fade", 500 )
   end
	timer.performWithDelay(34000, leaveOptions)
   local backgroundMusicChannel = audio.play( backgroundMusic, { channel=1, loops=-1, fadein=1000 }  )  -- play the background music on channel 1, loop infinitely, and fadein over 5 seconds

   c = credits(
   {
       creditsObject("Raph.png",
      {"Group Leader", "Game Concept", "Menus & Screens", "Logos & Feel", 
      "Multi-Player Mode", "Level Select"})
      
      ,creditsObject("Alex.png",
      {"Level Designer","Kiosk Mode","Win/Loss Screens",
      "Main character","Physics Bodies","Electric Eels"
      ,"Top Scores"})
      
      ,creditsObject("Chris.png",
      {"Hostile beaver and projectiles"
      ,"Background/Foreground Scrolling Algorithm","Character Controls"
      ,"Whirlpools","Turbines","Camera","Swamps/Rapids"
      ,"Score tracking", "Ending Credits"})
   })   
   Runtime:addEventListener("enterFrame",c)


	

	
	-- INSERT code here (e.g. start timers, load audio, start listeners, etc.)
	
end

-- Called when scene is about to move offscreen:
function sceneOpt:exitScene( event )
	group = self.view
	physics.pause()
	-- INSERT code here (e.g. stop timers, remove listenets, unload sounds, etc.)
	
end

-- If scene's view is removed, scene:destroyScene() will be called just prior to:
function sceneOpt:destroyScene( event )
	group = self.view
	audio.stop(1)
--	physics.stop()
--	package.loaded[physics] = nil
--	physics = nil
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