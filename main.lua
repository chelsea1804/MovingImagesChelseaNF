-- Title: MovingImages
-- Name: Chelsea NF
-- Course: ICS2O/3C
-- This program displays a beetleship moving
--across the screen as well as another object moving in a different direction.

-----------------------------------------------------------------------------
-- create local variables
local bensoundBuddy = audio.loadSound( "Sounds/BoingSoundEffect.mp3")
local bensoundBuddyChannel

print("***Testing beetleship!")

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- global variables
scrollSpeed1 = 3

--background image with width and height
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)

-- character image with width and height
local beetleship = display.newImageRect("Images/beetleship.png", 200, 200)

-- change the direction of the beetleship to move from the right to the left
beetleship:scale(-1,1)

-- set the image to be transparent
beetleship.alpha = 0

--set the initial x and y position of beetleship
beetleship.x = 0
beetleship.y = display.contentHeight/3

-- Function: MoveShip
-- Input: this funtion accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed to the x-value of the ship
local function MoveShip(event)
	-- add the scroll speed to the x-value of the ship
	beetleship.x = beetleship.x + scrollSpeed1
	-- change the transparency of the ship every time it moves so that it fades out
	beetleship.alpha = beetleship.alpha + 0.01
end

-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveShip)


-- Add sound to the program
bensoundBuddy = audio.play(BoingSoundEffect)

------------------------------------------------------------------------------------

-- global variables
scrollSpeed2 = 5

-- character image with width and height
local octopus = display.newImageRect("Images/octopus.png", 200, 200)




--Flip the image vertically and horizontally
octopus:scale(1, -1)


--set the initial x and y position of octopus
octopus.x = 10
octopus.y = display.contentHeight/1

--Function: MoveOctopus
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed to the x-value of the octopus
local function MoveOctopus(event)
	-- add the scroll speed to the x-value of the octopus
	octopus.y = octopus.y - scrollSpeed2
	-- change the transparency of the octopus every time it moves so that it fades out
	-- and then fades in
	octopus.alpha = octopus.alpha - 0.01
	-- rotate the octopus 45 degrees again and again
	octopus:rotate(45)
	-- scale the image by 200% (x) and 50% (y)
	octopus:scale(1, 1)
end

-- MoveOctopus will be called over and over again
Runtime:addEventListener("enterFrame", MoveOctopus)