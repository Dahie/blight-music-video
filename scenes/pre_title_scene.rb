
# Song length: 340s

class PreTitleScene < GameScene
  draws :interpret, :title, :sky, :clouds2, :mountains, :foreground

  SONG_DURATION = 340.seconds
  SPEED = 1.0
  #SPEED = 0.1

  play :theme, song: "blight/music.mp3", volume: 1.0
  # change :theme, to: { volume: 0.8 }, interval: 2.seconds

  animate :sky, to: { alpha: 255 }, interval: SONG_DURATION * 0.5

  # edges from -2450 to 2450
  #animate :clouds, to: { x: 3450 }, interval: SONG_DURATION * SPEED
  animate :clouds2, to: { y: -1200 }, interval: SONG_DURATION * SPEED

  # edges from 600 to 1200
  animate :mountains, to: { x: 1200 }, interval: SONG_DURATION * SPEED

  animate :title, to: { alpha: 255 }, interval: 5.seconds do
    animate :title, to: { alpha: 0 }, interval: 5.seconds
  end

  animate :interpret, to: { alpha: 255 }, interval: 5.seconds do
    animate :interpret, to: { alpha: 0 }, interval: 5.seconds
  end

  # edges from -4300 to 5500
  animate :foreground, to: { x: 5500 }, interval: SONG_DURATION * SPEED

  event :on_up, KbEscape do
    window.close
  end

end
