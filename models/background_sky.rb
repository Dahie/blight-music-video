class BackgroundSky < Metro::UI::AnimatedSprite
  property :animation, path: "blight/sky.png",
    dimensions: "256,256", tileable: true, time_per_image: 50
end
