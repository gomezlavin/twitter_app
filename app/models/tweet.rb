class Tweet < ActiveRecord::Base
  # attr_accessible :title, :body

  Twitter.configure do |config|
    config.consumer_key        = "le2YTnIWsyIaZ9z30kMXxg"
    config.consumer_secret     = "w5JBTcIGWA0atA4bA7UUN49iZpRL5zFC12J31u7BSk"
    config.oauth_token        = "217197507-gt86EcnVmRL4t2g1h5DeprV8Zw3U5Gv1fuzKsVqr"
    config.oauth_token_secret = "AYTQ8QrS1ZQq1z0gjMG7AQQfM6UMcplRnIFQr419mJZOt"
  end


end
