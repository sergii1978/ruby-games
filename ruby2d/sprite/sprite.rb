require 'ruby2d'

coin = Sprite.new(
    'coin.png',
    clip_width: 84,
    time: 300,
    loop: true,
    x: 320, 
    y: 200
    )

coin.play


song = Music.new('song.mp3')

# Play the music
song.play
song.volume = 30
# song.loop = true


show