require 'excon'

module HttpShootingParty
  class Excon
    attr_accessor :client

    def initialize(url)
      self.client = ::Excon.new(url)
    end

    def name
      "Excon"
    end

    def get
      client.get.body
    end
  end
  UNDER_TEST = Excon
end

