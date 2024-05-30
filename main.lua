local board = {"a", "b", "c", "d", "e", "f"}

function love.load()
  local SpaceMono = love.graphics.newFont("SpaceMono-Regular.ttf")
  love.graphics.setFont(SpaceMono)
end

function love.draw()
  love.graphics.print("Hello World!", 100, 200)
end
