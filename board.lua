local function getInitialBoard()
  local function letter(glyph)
    return {
      get = function()
        return glyph
      end,
      set = function(newLetter)
        glyph = newLetter
      end
    }
  end
  local function create10letters()
    local l = letter
    return { l('a'), l('b'), l('c'), l('d'), l('e'), l('f'), l('g'), l('h'), l('i'), l('j') }
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
  }

  local function countnumerickeys(table)
    local count = 0
    for _,_ in ipairs(table) do
      count = count + 1
    end
    return count
  end

  board.ycount = countnumerickeys(board)
  board.xcount = countnumerickeys(board[1])

  board.xspacing = board.width / (board.xcount - 1)

  board.yspacing = board.height / (board.ycount - 1)

  local letterHeight = 32
  board.yspacing = board.yspacing - (letterHeight / board.ycount - 1)

  board.xend = board.x + board.width
  board.yend = board.x + board.height

  -- just on the x for now
  board.getLetter = function (xclick, yclick)
    return board[math.floor(yclick / board.yspacing)][math.floor(xclick / board.xspacing)]
  end

  return board
end

return getInitialBoard
