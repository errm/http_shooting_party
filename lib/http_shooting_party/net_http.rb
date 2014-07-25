require 'uri'
require 'net/http'

module HttpShootingParty
  class NetHTTP
    attr_accessor :client, :uri

    def initialize(url)
      self.uri = URI.parse(url)
      self.client = Net::HTTP.new(uri.host, uri.port)
    end

    def name
      "Net::HTTP"
    end

    def get
      client.request(Net::HTTP::Get.new(uri.request_uri)).body
    end
  end
  UNDER_TEST = NetHTTP
end

