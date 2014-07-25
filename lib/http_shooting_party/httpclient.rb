require 'httpclient'

module HttpShootingParty
  class HTTPClient
    attr_accessor :client, :url

    def initialize(url)
      self.client = ::HTTPClient.new
      self.url = url
    end

    def name
      "HTTPClient"
    end

    def get
      client.get_content(url)
    end
  end
  UNDER_TEST = HTTPClient
end

