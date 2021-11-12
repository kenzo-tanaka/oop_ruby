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

  def default_tire_size
    raise NotImplementedError
  end

  def default_chain
    '10-speed'
  end

  # Subclass may override
  def post_initialize(args)
    nil
  end
end
