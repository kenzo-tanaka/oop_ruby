class Parts
  attr_reader :parts

  def initialize(parts)
    @parts = parts
  end

  def spares
    parts.select(&:need_spare)
  end

  def size
    parts.size
  end
end
