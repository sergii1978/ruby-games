require 'ruby2d'

set background:'blue'
set title: "Reaction Game"
set width: 1000
set height: 800

message = Text.new('Click to begin')
game_started = false
square = nil
start_time = nil
duration = nil

on :mouse_down do |event|
puts event.x, event.y
    if game_started
        if square.contains?(event.x, event.y)
            duration = ((Time.now - start_time) * 1000).round
            message = Text.new("Well done! You took: #{duration} milliseconds. Click to begin", x: 150, y: 250)
            square.remove
            game_started = false
        end
    else
    message.remove

    square = Square.new(
    x: rand(get(:width) - 25), y: rand(get(:height) - 25),
    size: rand(10..80),
    color: 'yellow'
    ) 
    
    start_time = Time.now
    game_started = true
    end
end

show