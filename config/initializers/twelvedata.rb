require "twelvedata_ruby"

TwelvedataRuby.client do |config|
  # config.apikey = ENV["TWELVEDATA_API_KEY"]
  config.apikey = Rails.application.credentials.twelvedata_client[:api_key]
  config.connect_timeout = 300
end
