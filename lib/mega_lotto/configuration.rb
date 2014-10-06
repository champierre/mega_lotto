module MegaLotto
  class Configuration
    attr_accessor :drawing_count

    def initialize
      @drawing_count = 6
    end
  end
end
