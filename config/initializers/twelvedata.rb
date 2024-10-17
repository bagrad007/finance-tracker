require "twelvedata_ruby"

TwelvedataRuby.client do |config|
  config.apikey = ENV["TWELVEDATA_API_KEY"]
  config.connect_timeout = 300
  Rails.logger.info "TwelveData API Key: #{config.apikey}"
end
