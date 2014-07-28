require 'patron'
require 'uri'

module HttpShootingParty
  class Patron
    attr_accessor :session, :uri

    def initialize(url)
      self.uri = URI.parse(url)
      self.session = ::Patron::Session.new
      session.base_url = "#{uri.scheme}://#{uri.host}"
    end

    def name
      "Patron"
    end

    def get
      session.get(uri.path).body
    end
  end
  UNDER_TEST = Patron
end

