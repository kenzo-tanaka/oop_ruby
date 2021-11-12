class Bicycle
  attr_reader :size, :chain, :tire_size

  def initialize(args={})
    @size = args[:size]
    @chain = args[:chain]
    @tire_size = args[:tire_size]
    post_initialize(args)
  end

  # Subclass may override
  def post_initialize(args)
    nil
  end

  def spares
    {
      tire_size: tire_size,
      chain: chain
    }.merge(local_spares)
  end

  def local_spares
    {}
  end

  def default_chain
    '10-speed'
  end
end
