require 'curb'

module HttpShootingParty
  class Curb
    attr_accessor :client, :url

    def initialize(url)
      self.client = Curl::Easy.new
      client.url = url
    end

    def name
      "Curb"
    end

    def get
      client.perform
      client.body_str
    end
  end
  UNDER_TEST = Curb
end

