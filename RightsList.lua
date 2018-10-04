local composer = require( "composer" )
 
local scene = composer.newScene()
 
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
 
 
 
 
-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------
 
 --adding a button which brings back user from myDetails to Home.
local function Home ()	
composer.gotoScene("FirstScene",{effect = "slideLeft", time = 500})

end
local function LR1 ()	
composer.gotoScene("LR1",{effect = "slideLeft", time = 500})
end

local function LR2 ()	
composer.gotoScene("LR2",{effect = "slideLeft", time = 500})
end

local function LR3 ()	
composer.gotoScene("LR3",{effect = "slideLeft", time = 500})
end

local function LR4 ()	
composer.gotoScene("LR4",{effect = "slideLeft", time = 500})
end

local function LR5 ()	
composer.gotoScene("LR5",{effect = "slideLeft", time = 500})
end

local function LR6 ()	
composer.gotoScene("LR6",{effect = "slideLeft", time = 500})
end

local function LR7 ()	
composer.gotoScene("LR7",{effect = "slideLeft", time = 500})
end

local function LR8 ()	
composer.gotoScene("LR8",{effect = "slideLeft", time = 500})
end

local function LR9 ()	
composer.gotoScene("LR9",{effect = "slideLeft", time = 500})
end

local function LR10 ()	
composer.gotoScene("LR10",{effect = "slideLeft", time = 500})
end

local widget = require ("widget")
local Privacy
local Telecommunication
local WA
local ACT
local NSW
local NT
local Qld
local SA
local Tas
local Vic
 
-- create()
function scene:create( event )
 
    local sceneGroup = self.view
	
	background = display.newImage( "background3.png", display.contentCenterX, display.contentCenterY )
	sceneGroup:insert(background)
	
	HomeImage = display.newImage("HomeIcon.png", 280, 20 )
	--myImage:translate(140,450)
	sceneGroup:insert(HomeImage)
	HomeImage:addEventListener("tap", Home)
	
    -- Code here runs when the scene is first created but has not yet appeared on screen
	head = display.newText("Legal Rights Information", display.contentCenterX*0.90,display.contentCenterY*0.10,"Arial",20)
	head:setFillColor(1,0,0)
	sceneGroup:insert(head)
	--creating buttons for all legal rights
	
	Privacy = widget.newButton(
	{
		id = "Privacy",
		label = "Privacy Act - Privacy Act 1988 (Cth)",
		onEvent = myeventListener,
		emboss = false,
		left = 20,
		top = 80,
	}
	)
	sceneGroup:insert(Privacy)
	Privacy:addEventListener ("touch", LR1)
	
	Telecommunication = widget.newButton(
	{
		id = "Telecommunication",
		label = "Telecommunication(interception and access) act 1979",
		onEvent = myeventListener,
		emboss = false,
		left = 20,
		top = 120,
	}
	)
	sceneGroup:insert(Telecommunication)
	Telecommunication:addEventListener ("touch", LR2)	
	
	WA = widget.newButton(
	{
		id = "WA",
		label = "The Surveillance Device Act 1998 (WA)",
		onEvent = myeventListener,
		emboss = false,
		left = 20,
		top = 160,
	}
	)
	sceneGroup:insert(WA)
	WA:addEventListener ("touch", LR3)
	
	ACT = widget.newButton(
	{
		id = "ACT",
		label = "The Listening Devices Act 1992 (ACT)",
		onEvent = myeventListener,
		emboss = false,
		left = 20,
		top = 200,
	}
	)
	sceneGroup:insert(ACT)
	ACT:addEventListener ("touch", LR4)

	NSW = widget.newButton(
	{
		id = "NSW",
		label = "The Surveillance Devices Act 2007 (NSW)",
		onEvent = myeventListener,
		emboss = false,
		left = 20,
		top = 240,
	}
	)
	sceneGroup:insert(NSW)
	NSW:addEventListener ("touch", LR5)
	
	NT = widget.newButton(
	{
		id = "NT",
		label = "The Surveillance Devices Act 2007 (NT)",
		onEvent = myeventListener,
		emboss = false,
		left = 20,
		top = 280,
	}
	)
	sceneGroup:insert(NT)
	NT:addEventListener ("touch", LR6)
	
	Qld = widget.newButton(
	{
		id = "Qld",
		label = "The Invasion of Privacy Act 1971 (Qld)",
		onEvent = myeventListener,
		emboss = false,
		left = 20,
		top = 320,
	}
	)
	sceneGroup:insert(Qld)
	Qld:addEventListener ("touch", LR7)
		
	SA = widget.newButton(
	{
		id = "SA",
		label = "The Listening and Surveillance Devices Act 1972 (SA)",
		onEvent = myeventListener,
		emboss = false,
		left = 20,
		top = 360,
	}
	)
	sceneGroup:insert(SA)
	SA:addEventListener ("touch", LR8)
			
	Tas = widget.newButton(
	{
		id = "Tas",
		label = "The Surveillance Devices Act 1991 (Tas)",
		onEvent = myeventListener,
		emboss = false,
		left = 20,
		top = 400,
	}
	)
	sceneGroup:insert(Tas)
	Tas:addEventListener ("touch", LR9)
		
	Vic = widget.newButton(
	{
		id = "Vic",
		label = "The Surveillance Devices Act 1991 (Vic)",
		onEvent = myeventListener,
		emboss = false,
		left = 20,
		top = 440,
	}
	)
	sceneGroup:insert(Vic)
	Vic:addEventListener ("touch", LR10)
				
end
	--[[Path for the file to read
	local path = system.pathForFile( "file.txt", system.ResourceDirectory )
	 
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
			   fontSize = 24,
			   width = 280,
			   height = 220,
			   align = "left"
			}
	 
			local textBox = display.newText( options )
			textBox:setFillColor( 0, 0, 0 )
			sceneGroup:insert(textBox)
			
		end
		-- Close the file handle
		io.close( file )
	end--]]

 
 
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

