require 'forwardable'

class Parts
  extend Forwardable
  def_delegators :@parts, :size, :each
  include Enumerable
  attr_reader :parts

  def initialize(parts)
    @parts = parts
  end

  def spares
    parts.select(&:need_spare)
  end
end
