local composer = require( "composer" )
 
local scene = composer.newScene()
local widget = require ("widget")
 
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
 
 
 
 
-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------
 
 --adding a button which brings back user from myDetails to Home.
local function RightsList ()	
composer.gotoScene("RightsList",{effect = "slideLeft", time = 500})

end
-- scrollView listener
  local function scrollListener( event )
    local phase = event.phase
    local direction = event.direction

    if "began" == phase then
      --print( "Began" )
    elseif "moved" == phase then
      --print( "Moved" )
    elseif "ended" == phase then
      --print( "Ended" )
    end
end
 
-- create()
function scene:create( event )
 
    local sceneGroup = self.view
	
	background = display.newImage( "background1.jpg", display.contentCenterX, display.contentCenterY )
	sceneGroup:insert(background)
	
	LRImage = display.newImage("Contact3.png", 280, -7 )
	--myImage:translate(140,450)
	sceneGroup:insert(LRImage)
	LRImage:addEventListener("tap", RightsList)
	
    -- Code here runs when the scene is first created but has not yet appeared on screen
	head = display.newText("  Privacy Act 1988(Cth)", display.contentCenterX*0.90,display.contentCenterY*0.10,"Arial",20)
	head:setFillColor(1,0,0)
	sceneGroup:insert(head)
	-- Path for the file to read
 
	local path = system.pathForFile( "file1.txt", system.ResourceDirectory )
	 
	-- Open the file handle
	local file, errorString = io.open( path, "r" )
	 
	if not file then
		-- Error occurred; output the cause
		print( "File error: " .. errorString )
	else
		-- Output lines
		for line in file:lines() do
		
			print( line )
			
			local options = {
			   text = line,
			   x = display.contentCenterX,
			   y = display.contentCenterY,
			   fontSize = 11,
			   width = 280,
			   height = 400,
			   align = "left"
			}	 
			local textBox = display.newText( options )
			textBox:setFillColor( 0, 0, 0 )
			sceneGroup:insert(textBox)
			
		end
		-- Close the file handle
		io.close( file )
	end
 
end
 
 
-- show()
function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
 
    end
end
 
 
-- hide()
function scene:hide( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is on screen (but is about to go off screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs immediately after the scene goes entirely off screen
 
    end
end
 
 
-- destroy()
function scene:destroy( event )
 
    local sceneGroup = self.view
    -- Code here runs prior to the removal of scene's view
 
end
 
 
-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------
 
return scene

