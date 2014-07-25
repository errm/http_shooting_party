require 'benchmark'
require 'oj'

module HttpShootingParty
  class Test
    ITERATIONS = 100
    attr_accessor :implimentation, :results

    def initialize
      self.implimentation = UNDER_TEST.new('http://devops/test.json')
      self.results = []
    end

    def run
      1.upto(ITERATIONS) do |n|
        results << Benchmark.bmbm do |x|
          GC.disable
          x.report("test #{n}") do
            1.upto(1000) do
              json = implimentation.get
              raise unless Oj.load(json)["foo"] == "bar"
            end
          end
          GC.enable
          GC.start(full_mark: true, immediate_sweep: true)
        end.first
      end
    end

    def save
      require 'csv'

      CSV.open("#{implimentation.name}.csv", "wb") do |csv|
        csv << ['label', 'user CPU time', 'system CPU time', "children's user CPU time", "children's system CPU time", "wallclock time"]
        results.each do |result|
          csv << result.to_a
        end
      end
    end
  end
end
