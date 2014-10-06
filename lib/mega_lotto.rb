require "mega_lotto/version"
require "mega_lotto/drawing"
require "mega_lotto/core_ext"
require "mega_lotto/configuration"

begin
  require "pry"
rescue LoadError
end

module MegaLotto
  class << self
    attr_accessor :congiguration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.reset
    @configuration = Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
