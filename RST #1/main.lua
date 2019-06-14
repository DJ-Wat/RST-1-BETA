-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

display.setDefault ("background", 35/255, 0/255, 80/255)

 function round(val, decimal)
  if (decimal) then
    return math.floor( (val * 10^decimal) + 0.5) / (10^decimal)
  else
    return math.floor(val+0.5)
  end
end

local keyboard = display.newImage ("assets/keyboard.png", display.contentCenterX, display.contentCenterY - 300) --keyboard layout 

local titleText = display.newText ( "Typing Game", display.contentCenterX, display.contentCenterY - 900, native.systemFont, 100) --title text on top
titleText:setFillColor (0,0,1)

--defalult square xy = -122, 650

local keyHighlight = display.newImageRect ("assets/redSquare.png", 100, 100) --translucent red square used to highlight text
keyHighlight.x = -122
keyHighlight.y = 650
keyHighlight.alpha = 0

local startButton = display.newImage ( "assets/start.png", display.contentCenterX, display.contentCenterY + 500) --starts the program

local keyValue = 0

local keysCorrect = 0
local keysPressed = 0.5

local function typeTester (event)

	keyValue = math.random (0,25)
	keyHighlight.alpha = 0.5
	if (keyValue > -1 and keyValue < 10) then
	keyHighlight.x = -122 + (126 * keyValue) 
	keyHighlight.y = 650
	elseif (keyValue > 9 and keyValue < 19) then
		keyHighlight.x = -1350 + (126 * keyValue)
		keyHighlight.y = 770
		elseif (keyValue > 18 and keyValue < 26) then 
			keyHighlight.x = -2420 + (126 * keyValue)
			keyHighlight.y = 891
	end
	display.remove(startButton)
	--print ("keyValue "..keyValue)
	--print (event.keyName)
end

local function highLighter (event)
	print ("my event name is : "..event.keyName)
	keysPressed = keysPressed + 0.5
	print ("keysPressed = " ..keysPressed)
	if (keyValue == 0 and event.keyName == "q") then
		typeTester(event)
		keysCorrect = keysCorrect + 1
		print ("keysPressed = " ..keysPressed)
		print ("keysCorrect = " ..keysCorrect)
	elseif (keyValue == 1 and event.keyName == "w") then
		typeTester(event)
		keysCorrect = keysCorrect + 1
		print ("keysPressed = " ..keysPressed)
		print ("keysCorrect = " ..keysCorrect)
	elseif (keyValue == 2 and event.keyName == "e") then
		typeTester(event)
		keysCorrect = keysCorrect + 1
		print ("keysPressed = " ..keysPressed)
		print ("keysCorrect = " ..keysCorrect)
	elseif (keyValue == 3 and event.keyName == "r") then
		typeTester(event)
		keysCorrect = keysCorrect + 1
		print ("keysPressed = " ..keysPressed)
		print ("keysCorrect = " ..keysCorrect)
	elseif (keyValue == 4 and event.keyName == "t") then
		typeTester(event)
		keysCorrect = keysCorrect + 1
		print ("keysPressed = " ..keysPressed)
		print ("keysCorrect = " ..keysCorrect)
	elseif (keyValue == 5 and event.keyName == "y") then
		typeTester(event)
		keysCorrect = keysCorrect + 1
		print ("keysPressed = " ..keysPressed)
		print ("keysCorrect = " ..keysCorrect)
	elseif (keyValue == 6 and event.keyName == "u") then
		typeTester(event)
		keysCorrect = keysCorrect + 1
		print ("keysPressed = " ..keysPressed)
		print ("keysCorrect = " ..keysCorrect)
	elseif (keyValue == 7 and event.keyName == "i") then
		typeTester(event)
		keysCorrect = keysCorrect + 1
		print ("keysPressed = " ..keysPressed)
		print ("keysCorrect = " ..keysCorrect)
	elseif (keyValue == 8 and event.keyName == "o") then
		typeTester(event)
		keysCorrect = keysCorrect + 1
		print ("keysPressed = " ..keysPressed)
		print ("keysCorrect = " ..keysCorrect)
	elseif (keyValue == 9 and event.keyName == "p") then
		typeTester(event)
		keysCorrect = keysCorrect + 1
		print ("keysPressed = " ..keysPressed)
		print ("keysCorrect = " ..keysCorrect)
	elseif (keyValue == 10 and event.keyName == "a") then
		typeTester(event)
		keysCorrect = keysCorrect + 1
		print ("keysPressed = " ..keysPressed)
		print ("keysCorrect = " ..keysCorrect)
	elseif (keyValue == 11 and event.keyName == "s") then
		typeTester(event)
		keysCorrect = keysCorrect + 1
		print ("keysPressed = " ..keysPressed)
		print ("keysCorrect = " ..keysCorrect)
	elseif (keyValue == 12 and event.keyName == "d") then
		typeTester(event)
		keysCorrect = keysCorrect + 1
		print ("keysPressed = " ..keysPressed)
		print ("keysCorrect = " ..keysCorrect)
	elseif (keyValue == 13 and event.keyName == "f") then
		typeTester(event)
		keysCorrect = keysCorrect + 1
		print ("keysPressed = " ..keysPressed)
		print ("keysCorrect = " ..keysCorrect)
	elseif (keyValue == 14 and event.keyName == "g") then
		typeTester(event)
		keysCorrect = keysCorrect + 1
		print ("keysPressed = " ..keysPressed)
		print ("keysCorrect = " ..keysCorrect)
	elseif (keyValue == 15 and event.keyName == "h") then
		typeTester(event)
		keysCorrect = keysCorrect + 1
		print ("keysPressed = " ..keysPressed)
		print ("keysCorrect = " ..keysCorrect)
	elseif (keyValue == 16 and event.keyName == "j") then
		typeTester(event)
		keysCorrect = keysCorrect + 1
		print ("keysPressed = " ..keysPressed)
		print ("keysCorrect = " ..keysCorrect)
	elseif (keyValue == 17 and event.keyName == "k") then
		typeTester(event)
		keysCorrect = keysCorrect + 1
		print ("keysPressed = " ..keysPressed)
		print ("keysCorrect = " ..keysCorrect)
	elseif (keyValue == 18 and event.keyName == "l") then
		typeTester(event)
		keysCorrect = keysCorrect + 1
		print ("keysPressed = " ..keysPressed)
		print ("keysCorrect = " ..keysCorrect)
	elseif (keyValue == 19 and event.keyName == "z") then
		typeTester(event)
		keysCorrect = keysCorrect + 1
		print ("keysPressed = " ..keysPressed)
		print ("keysCorrect = " ..keysCorrect)
	elseif (keyValue == 20 and event.keyName == "x") then
		typeTester(event)
		keysCorrect = keysCorrect + 1
		print ("keysPressed = " ..keysPressed)
		print ("keysCorrect = " ..keysCorrect)
	elseif (keyValue == 21 and event.keyName == "c") then
		typeTester(event)
		keysCorrect = keysCorrect + 1
		print ("keysPressed = " ..keysPressed)
		print ("keysCorrect = " ..keysCorrect)
	elseif (keyValue == 22 and event.keyName == "v") then
		typeTester(event)
		keysCorrect = keysCorrect + 1
		print ("keysPressed = " ..keysPressed)
		print ("keysCorrect = " ..keysCorrect)
	elseif (keyValue == 23 and event.keyName == "b") then
		typeTester(event)
		keysCorrect = keysCorrect + 1
		print ("keysPressed = " ..keysPressed)
		print ("keysCorrect = " ..keysCorrect)
	elseif (keyValue == 24 and event.keyName == "n") then
		typeTester(event)
		keysCorrect = keysCorrect + 1
		print ("keysPressed = " ..keysPressed)
		print ("keysCorrect = " ..keysCorrect)
	elseif (keyValue == 25 and event.keyName == "m") then
		typeTester(event)
		keysCorrect = keysCorrect + 1
		print ("keysPressed = " ..keysPressed)
		print ("keysCorrect = " ..keysCorrect)
	else 
		if (keysPressed < 1) then
			typeTester(event)
			print ("keysPressed line 239 = " ..keysPressed)
			print ("keysCorrect line 240 = " ..keysCorrect)
		end
	end
	return
end


--timer

local timerCount = 0
local timerT = display.newText ( "Timer: ", display.contentCenterX + 800, display.contentCenterY + 900, native.systemFont, 90 )

local timerN = display.newText (timerCount, display.contentCenterX + 1000, display.contentCenterY + 900, native.systemFont, 90 )
function timerStart( event )
	timerCount = timerCount + 1
	timerN.text = (math.round(timerCount))
end

local function timerValue (event)
	local timerRun = timer.performWithDelay (1000, timerStart, 0)
end

local function gameStop (event)
	if keysPressed == 100 then
		local result
		Runtime:removeEventListener ("key", highLighter)
		--local timerPause = timer.pause(timerRun)
		result = (keysCorrect / keysPressed)*100
		local resultsText = display.newText("Accuracy = " ..round(result,2), display.contentCenterX, display.contentCenterY + 500, native.systemFont, 50)
	end
end


startButton:addEventListener ("touch", typeTester)
startButton:addEventListener ("touch", timerValue)
Runtime:addEventListener ("key", highLighter)
Runtime:addEventListener ("key", gameStop)