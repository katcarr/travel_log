require('rspec')
require('travelog')

describe(Travelog) do

  before() do
    Travelog.clear()
  end

  describe('#place') do
    it("lets you read the place out") do
      test_log = Travelog.new("Austin")
      expect(test_log.place()).to(eq("Austin"))
    end
  end

  describe('.all') do
    it("is empty at first") do
      expect(Travelog.all()).to(eq([]))

    it("lists all the plcaes in the Travellog") do
      test_log = Travelog.new("Austin")
      test2_log = Travelog.new("Baltimore")
      test_log.store_place()
      test2_log.store_place()
      expect(Travelog.all()).to(eq([test_log,test2_log]))
    end
  end

  describe('#store_place') do
    it('stores the place in a list') do
      test_log = Travelog.new("Baltimore")
      test_log.store_place()
      expect(Travelog.all()).to(eq([test_log]))
    end
  end

  describe('.clear') do
    it('clears the saved list') do
      test_log = Travelog.new("Tanzinia")
      test_log.store_place()
      Travelog.clear()
      expect(Travelog.all()).to(eq([]))
    end
  end
end
