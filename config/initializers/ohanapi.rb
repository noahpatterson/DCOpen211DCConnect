stack = Faraday::Builder.new do |builder|
  builder.use Faraday::HttpCache
  builder.use Ohanakapa::Response::RaiseError
  builder.adapter Faraday.default_adapter
end
Ohanakapa.configure do |config|
  config.api_token = 'hithereapptoken' #ENV["OHANA_API_TOKEN"]
  config.api_endpoint = "http://localhost:8080/api/" #ENV["OHANA_API_ENDPOINT"] || 
  config.middleware = stack
end