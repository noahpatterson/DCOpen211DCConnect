stack = Faraday::Builder.new do |builder|
  builder.use Faraday::HttpCache
  builder.use Ohanakapa::Response::RaiseError
  builder.adapter Faraday.default_adapter
end
Ohanakapa.configure do |config|
  #config.api_token = ENV["OHANA_API_TOKEN"]
  config.api_endpoint = "http://quiet-springs-1693.herokuapp.com/api"
  config.middleware = stack
end