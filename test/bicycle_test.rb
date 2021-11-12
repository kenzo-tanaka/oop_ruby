require 'minitest/autorun'
require_relative '../lib/bicycle'
require_relative '../lib/parts'
require_relative '../lib/road_bike_parts'

class BicycleTest < Minitest::Test
  def test_road_bike_size
    road_bike = Bicycle.new(size: 'L', parts: RoadBikeParts.new(tape_color: 'red'))
    assert_equal('L', road_bike.size)
  end
end
