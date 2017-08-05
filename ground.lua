local ground = {}

function ground.initialize(world)
    ground_object = {}
    ground_object.body = love.physics.newBody(world, 650/2, 650-50/2) --remember, the shape (the rectangle we create next) anchors to the body from its center, so we have to move it to (650/2, 650-50/2)
    ground_object.shape = love.physics.newRectangleShape(650, 50) --make a rectangle with a width of 650 and a height of 50
    ground_object.fixture = love.physics.newFixture(ground_object.body, ground_object.shape) --attach shape to body

    return ground_object
end

return ground