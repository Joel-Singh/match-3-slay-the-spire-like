local board = {}

local function getInitialBoard()
  local function create10letters()
    return {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j"}
  end
  local board = {
    create10letters(),
    create10letters(),
    create10letters(),
    create10letters(),
    create10letters(),
    create10letters(),
    create10letters(),
    create10letters(),
    create10letters(),
    create10letters(),
    x = 50,
    y = 50,
    width = 300,
    height = 300,
    ycount = 10,
    xcount = 10,
  }

  board.xspacing = board.width / board.xcount
  board.yspacing = board.height / board.ycount
  board.xend = board.x + board.width
  board.yend = board.x + board.height

  return board
end

function love.load()
  board = getInitialBoard()
  local Font = love.graphics.newFont(16)
  love.graphics.setFont(Font)

end

function love.draw()
  for indexrow,row in ipairs(board) do
    for indexcolumn,letter in ipairs(row) do
      love.graphics.print(letter, (indexcolumn - 1) * board.xspacing + board.x, (indexrow - 1) * board.yspacing + board.y)
    end
  end

  love.graphics.rectangle("fill", 50, 50, 1, 1)
  love.graphics.rectangle("fill", 350, 350, 1, 1)
end

local count = 0
function love.mousepressed( x, y, button, istouch, presses )
  if (x >= board.x and x <= board.xend and y >= board.y and y <= board.yend ) then
    count = count + 1
    print("board pressed " .. count)
  end
end
