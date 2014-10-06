require "spec_helper"

module MegaLotto
  describe Configuration do
    describe "#drawing_count" do
      it "default value is 6" do
        expect(Configuration.new.drawing_count).to eq(6)
      end
    end

    describe "#drawing_count=" do
      it "can set value" do
        config = Configuration.new
        config.drawing_count = 7
        expect(config.drawing_count).to eq(7)
      end
    end
  end
end
