require 'typhoeus'

module HttpShootingParty
  class Typhoeus
    attr_accessor :url

    def initialize(url)
      self.url = url
    end

    def name
      "Typhoeus"
    end

    def get
      ::Typhoeus::Request.get(url).body
    end
  end
  UNDER_TEST = Typhoeus
end

