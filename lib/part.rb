class Part
  attr_reader :name, :description, :need_spare

  def initialize(args)
    @name = args[:name]
    @description = args[:description]
    @need_spare = args.fetch(:need_spare, true)
  end
end
