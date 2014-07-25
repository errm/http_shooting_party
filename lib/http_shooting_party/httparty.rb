require 'uri'
require 'httparty'

module HttpShootingParty
  class HTTParty
    include ::HTTParty
    attr_accessor :uri

    def initialize(url)
      self.uri = URI.parse(url)
      self.class.base_uri uri.host
    end

    def name
      "HTTParty"
    end

    def get
      self.class.get(uri.path).body
    end
  end
  UNDER_TEST = HTTParty
end

