local getInitialBoard = require("board")
local board = {}

function love.load()
  board = getInitialBoard()
  local Font = love.graphics.newFont(16)
  love.graphics.setFont(Font)
end

function love.draw()
  for indexrow,row in ipairs(board) do
    for indexcolumn,letter in ipairs(row) do
      love.graphics.print(letter.get(), (indexcolumn - 1) * board.xspacing + board.x, (indexrow - 1) * board.yspacing + board.y)
    end
  end

  love.graphics.rectangle("fill", 50, 50, 1, 1)
  love.graphics.rectangle("fill", 350, 350, 1, 1)
end

local count = 0
function love.mousepressed( x, y, button, istouch, presses )
  if (x >= board.x and x <= board.xend and y >= board.y and y <= board.yend ) then
    count = count + 1
    print("letter clicked is " .. board.getLetter(x, y).get() .." " .. count)
  end
end
