local board = {}

local function getInitialBoard()
  local function create10Letters()
    return {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j"}
  end
  return {
    create10Letters(),
    create10Letters(),
    create10Letters(),
    create10Letters(),
    create10Letters(),
    create10Letters(),
    create10Letters(),
    create10Letters(),
    create10Letters(),
    create10Letters(),
  }
end

function love.load()
  board = getInitialBoard()
  local Font = love.graphics.newFont(16)
  love.graphics.setFont(Font)

end

function love.draw()
  for indexRow,row in ipairs(board) do
    for indexColumn,letter in ipairs(row) do
      love.graphics.print(letter, indexColumn * 30, indexRow * 30)
    end
  end
end
