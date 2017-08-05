local ball = {}

function ball.initialize(world)
    ball_object = {}
    ball_object.body = love.physics.newBody(world, 650/2, 650/2, "dynamic") --place the body in the center of the world and make it dynamic, so it can move around
    ball_object.shape = love.physics.newCircleShape( 20) --the ball's shape has a radius of 20
    ball_object.fixture = love.physics.newFixture(ball_object.body, ball_object.shape, 1) -- Attach fixture to body and give it a density of 1.
    ball_object.fixture:setRestitution(0.9) --let the ball bounce

    return ball_object
end

return ball