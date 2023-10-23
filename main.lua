-- main.lua

local lume = require("lume")

local player = {
    x = 0,
    y = 0,
    z = 0,
    speed = 5,
    rotation = 0
}

function love.load()
    love.graphics.setBackgroundColor(0.5, 0.7, 0.9)
end

function love.update(dt)
    -- Player movement
    if love.keyboard.isDown("w") then
        player.z = player.z - player.speed * dt
    end
    if love.keyboard.isDown("s") then
        player.z = player.z + player.speed * dt
    end
    if love.keyboard.isDown("a") then
        player.x = player.x - player.speed * dt
    end
    if love.keyboard.isDown("d") then
        player.x = player.x + player.speed * dt
    end

    -- Player rotation
    if love.keyboard.isDown("left") then
        player.rotation = player.rotation - player.speed * dt
    end
    if love.keyboard.isDown("right") then
        player.rotation = player.rotation + player.speed * dt
    end
end

function love.draw()
    love.graphics.push()
    love.graphics.translate(love.graphics.getWidth() / 2, love.graphics.getHeight() / 2)
    love.graphics.rotate(-player.rotation)
    love.graphics.setColor(1, 1, 1)
    love.graphics.rectangle("fill", player.x - 20, player.y - 20, 40, 40)
    love.graphics.pop()
end
