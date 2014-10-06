require_relative "configuration"
module MegaLotto
  class Drawing
    attr_accessor :config

    def initialize(config = MegaLotto::Configuration.new)
      @config = config
    end

    def draw
      config.drawing_count.times.map { single_draw }
    end

    private
    def single_draw
      rand(0..60)
    end
  end
end
