-----------------------------------------------------------------------------------------

--

-- main.lua

--

-- Created by: Mr. Coxall

-- Created on: Jan 2018

-- 

-- This file makes an object scroll across the screen

-----------------------------------------------------------------------------------------



-- hide the status bar

display.setStatusBar(display.HiddenStatusBar)



-- local variables to this entire file

local scrollSpeed = 1



-- background image with width and height

local backgroundImage = display.newImageRect("./assets/textures/icyforrest.jpg", 2048, 1536)

backgroundImage.x = display.contentCenterX

backgroundImage.y = display.contentCenterY

backgroundImage.ID = "winter background image"



-- character image with width and height

local snowman = display.newImageRect("./assets/images/snowman12.png", 193, 210)

snowman.x = 12

snowman.y = display.contentHeight - 200 -- note I am using not the center but the height of the diaplay

snowman.ID = "snowman"



local function MoveImage(event)

snowman.x = snowman.x + scrollSpeed
    

    print( display.fps )  -- note this displays how fast the current refresh is

end

Runtime: addEventListener("enterFrame", MoveImage) 


-- MoveSnowman will be called at program start over and over (60 frames or times per second)-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code heres 