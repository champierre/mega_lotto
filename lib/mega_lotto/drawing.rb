module MegaLotto
  class Drawing
    # attr_accessor :config

    # def initialize(config = Configuration.new)
    #   @config = config
    # end

    def draw
      MegaLotto.configuration.drawing_count.times.map { single_draw }
      # config.drawing_count.times.map { single_draw }
    end

    private
    def single_draw
      rand(0..60)
    end
  end
end
