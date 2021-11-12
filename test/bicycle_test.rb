require 'minitest/autorun'
require_relative '../lib/bicycle'
require_relative '../lib/parts'
require_relative '../lib/road_bike_parts'
require_relative '../lib/mountain_bike_parts'

class BicycleTest < Minitest::Test
  def test_road_bike_size
    road_bike = Bicycle.new(size: 'L', parts: RoadBikeParts.new(tape_color: 'red'))
    assert_equal('L', road_bike.size)
  end

  def test_road_bike_spares
    road_bike = Bicycle.new(size: 'L', parts: RoadBikeParts.new(tape_color: 'red'))
    assert_equal({ tire_size: '23', chain: '10-speed', tape_color: 'red' }, road_bike.spares)
  end

  def test_mountain_bike_size
    mountain_bike = Bicycle.new(size: 'L', parts: MountainBikeParts.new(rear_shock: 'Fox'))
    assert_equal('L', mountain_bike.size)
  end

  def test_mountain_bike_spares
    mountain_bike = Bicycle.new(size: 'L', parts: MountainBikeParts.new(rear_shock: 'Fox'))
    assert_equal({ tire_size: '2.1', chain: '10-speed', rear_shock: 'Fox' }, mountain_bike.spares)
  end
end
