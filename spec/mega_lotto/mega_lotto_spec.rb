require 'spec_helper'

describe MegaLotto do
  describe ".reset" do
    before :each do
      MegaLotto.configure do |config|
        config.drawing_count = 10
      end
    end

    it "resets the configuration" do
      MegaLotto.reset
      config = MegaLotto.configuration
      expect(config.drawing_count).to eq(6)
    end
  end


  describe "#configure" do
    before :each do
      MegaLotto.configure do |config|
        config.drawing_count = 10
      end
    end

    it "returns an array with 10 elements" do
      draw = MegaLotto::Drawing.new.draw

      expect(draw).to be_a(Array)
      expect(draw.size).to eq(10)
    end

    after :each do
      MegaLotto.reset
    end
  end
end
