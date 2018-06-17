local background = display.newRect( display.contentCenterX, display.contentCenterY, 1000, 1000)
background.fill = {0, 0, 0.2}

local leftVerticalLine = display.newRect( display.contentCenterX - 50, display.contentCenterY, 5, 300 )
local rightVerticalLine = display.newRect( display.contentCenterX + 50, display.contentCenterY, 5, 300 )
local topHorzontalLine = display.newRect( display.contentCenterX, display.contentCenterY - 50, 300, 5 )
local bottomHorizontalLine = display.newRect( display.contentCenterX, display.contentCenterY + 50, 300, 5 )

local leftTopBox = display.newRect( display.contentCenterX - 101, display.contentCenterY - 101, 80, 80 )
local leftMiddleBox = display.newRect( display.contentCenterX - 101, display.contentCenterY, 80, 80 )
local leftBottomBox = display.newRect( display.contentCenterX - 101, display.contentCenterY + 101, 80, 80 )

local middleTopBox = display.newRect( display.contentCenterX, display.contentCenterY - 101, 80, 80 )
local middleMiddleBox = display.newRect( display.contentCenterX, display.contentCenterY, 80, 80 )
local middleBottomBox = display.newRect( display.contentCenterX, display.contentCenterY + 101, 80, 80 )

local rightTopBox = display.newRect( display.contentCenterX + 101, display.contentCenterY - 101, 80, 80 )
local rightMiddleBox = display.newRect( display.contentCenterX + 101, display.contentCenterY, 80, 80 )
local rightBottomBox = display.newRect( display.contentCenterX + 101, display.contentCenterY + 101, 80, 80 )


local function colorLTB()
	leftTopBox.fill = {math.random(3,9)/10, math.random(3,9)/10, math.random(3,9)/10}
end

local function colorLMB()
leftMiddleBox.fill = {math.random(3,9)/10, math.random(3,9)/10, math.random(3,9)/10}
end

local function colorLBB()
leftBottomBox.fill = {math.random(3,9)/10, math.random(3,9)/10, math.random(3,9)/10}
end


local function colorMTB()
middleTopBox.fill = {math.random(3,9)/10, math.random(3,9)/10, math.random(3,9)/10}
end

local function colorMMB()
middleMiddleBox.fill = {math.random(3,9)/10, math.random(3,9)/10, math.random(3,9)/10}
end

local function colorMBB()
middleBottomBox.fill = {math.random(3,9)/10, math.random(3,9)/10, math.random(3,9)/10}
end


local function colorRTB()
rightTopBox.fill = {math.random(3,9)/10, math.random(3,9)/10, math.random(3,9)/10}
end

local function colorRMB()
rightMiddleBox.fill = {math.random(3,9)/10, math.random(3,9)/10, math.random(3,9)/10}
end

local function colorRBB()
rightBottomBox.fill = {math.random(3,9)/10, math.random(3,9)/10, math.random(3,9)/10}
end

local sleepTime = 3
local clock = os.clock
function sleep(sleepTime)
	local t0 = clock()
	while clock() - t0 <= sleepTime do end
end


local oneIsFilled = 1
local twoIsFilled = 1
local threeIsFilled = 1
local fourIsFilled = 1
local fiveIsFilled = 1
local sixIsFilled = 1
local sevenIsFilled = 1
local eightIsFilled = 1
local nineIsFilled = 1


local squaresFilled = (oneIsFilled + twoIsFilled + threeIsFilled + fourIsFilled + fiveIsFilled + sixIsFilled + sevenIsFilled + eightIsFilled + nineIsFilled)

for squaresFilled = 9,9,0 do

	local randomNum = math.random(1,9)
	
	if randomNum == 1 then
		oneIsFilled = 0
		colorLTB()
		
	elseif randomNum == 2 then
		twoIsFilled = 0
		colorMTB()
		
	elseif randomNum == 3 then
		threeIsFilled = 0
		colorRTB()
		
	elseif randomNum == 4 then
		fourIsFilled = 0
		colorLMB()
	elseif randomNum == 5 then
		fiveIsFilled = 0
		colorMMB()
	elseif randomNum == 6 then
		sixIsFilled = 0
		colorRMB()
	elseif randomNum == 7 then
		sevenIsFilled = 0
		colorLBB()
	elseif randomNum == 8 then
		eightIsFilled = 0
		colorMBB()
	elseif randomNum == 9 then
		nineIsFilled = 0
		colorRBB()
	end
	
	sleep()
end


local function fillLTB()
	leftTopBox.fill = {1,1,1}
end

local function fillLMB()
	leftMiddleBox.fill = {1,1,1}
end

local function fillLBB()
	leftBottomBox.fill = {1,1,1}
end


local function fillMTB()
	middleTopBox.fill = {1,1,1}
end

local function fillMMB()
	middleMiddleBox.fill = {1,1,1}
end

local function fillMBB()
	middleBottomBox.fill = {1,1,1}
end


local function fillRTB()
	rightTopBox.fill = {1,1,1}
end

local function fillRMB()
	rightMiddleBox.fill = {1,1,1}
end

local function fillRBB()
	rightBottomBox.fill = {1,1,1}
end




leftTopBox:addEventListener("touch", fillLTB)

leftMiddleBox:addEventListener("touch", fillLMB)

leftBottomBox:addEventListener("touch", fillLBB)


middleTopBox:addEventListener("touch", fillMTB)

middleMiddleBox:addEventListener("touch", fillMMB)

middleBottomBox:addEventListener("touch", fillMBB)



rightTopBox:addEventListener("touch", fillRTB)

rightMiddleBox:addEventListener("touch", fillRMB)

rightBottomBox:addEventListener("touch", fillRBB)




