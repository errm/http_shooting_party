module HttpShootingParty
  class Fake
    def initialize(_)
    end

    def name
      "Fake"
    end

    def get
      '{"foo":"bar"}'
    end
  end
  UNDER_TEST = Fake
end

