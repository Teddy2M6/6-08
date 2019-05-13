-----------------------------------------------------------------------------------------
--
-- Created by: Teddy Sannan
-- Created on: April 15, 2019
--
-- This program lets the user enter two integers and it multiplies it using only addtion and loops.
-- 
-----------------------------------------------------------------------------------------

-- Hides status bar
--------------
display.setStatusBar( display.HiddenStatusBar )
--------------

-- Background colour and two text fields
---------------------------
display.setDefault( "background", 100/255, 0/255, 250/255 )

input1Field = native.newTextField( 75, display.contentCenterY + 100, 125, 40 )
input1Field.id = "Input1 textField"

input2Field = native.newTextField( 250, display.contentCenterY + 100, 125, 40 )
input2Field.id = "Input2 textField"
----------------------------

-- Answer text where the answer would get shown and multiplication text
------------------------
responseText = display.newText( "Answer:", 160, 425, native.systemFont, 35 )
responseText:setFillColor( 255/255, 255/255, 255/255 )

multiplicationText = display.newText( "X", 163, 340, native.systemFont, 50 )
multiplicationText:setFillColor( 255/255, 255/255, 255/255 )
------------------------

-- Calculate button
----------------------
local calculateButton = display.newImageRect( "assets/button.PNG", 200, 75 )
calculateButton.x = 160
calculateButton.y = 100
calculateButton.id = "calculate button"
----------------------

local function calculateButtonTouch (event) -- Calculate button touch event
	number1 = tonumber(input1Field.text)
	number2 = tonumber(input2Field.text)
	addFunction = 1
	answer = number1

-- While loop

	repeat 
		while addFunction < number2 do
			addFunction = addFunction + 1
			answer = answer + number1
		end

	until
	addFunction == number2
		print (answer)
		responseText.text = "The answer is " .. answer

	end

calculateButton:addEventListener( "touch", calculateButtonTouch )
