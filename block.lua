local block = {}

function block.initialize(world, height, width, x, y)
    block_object = {}
    block_object.body = love.physics.newBody(world, x, y, "dynamic")
    block_object.shape = love.physics.newRectangleShape(0, 0, height, width)
    block_object.fixture = love.physics.newFixture(block_object.body, block_object.shape, 2)

    return block_object
end

return block