require 'embedder/version'
require 'faraday_middleware'

module Embedder
  def self.parse(url)
    connection.get("/1/oembed", {
      url: url,
      maxwidth: 500,
    }).body
  end

  private

  def self.connection
    @connection ||= Faraday.new('http://api.embed.ly/') do |c|
      c.use FaradayMiddleware::ParseJson, content_type: 'application/json'
      c.params = {
        key: ENV['EMBEDLY_KEY'],
      }
      c.adapter Faraday.default_adapter
    end
  end
end
