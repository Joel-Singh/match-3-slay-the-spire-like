local board = {}

local function getInitialBoard()
  local function create10letters()
    return {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j"}
  end
  return {
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
    spacing = 30
  }
end

function love.load()
  board = getInitialBoard()
  local Font = love.graphics.newFont(16)
  love.graphics.setFont(Font)

end

function love.draw()
  for indexrow,row in ipairs(board) do
    for indexcolumn,letter in ipairs(row) do
      love.graphics.print(letter, indexcolumn * board.spacing + board.x, indexrow * board.spacing + board.y)
    end
  end
end
