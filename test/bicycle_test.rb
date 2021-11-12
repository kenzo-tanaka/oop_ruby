require 'minitest/autorun'
require_relative '../lib/bicycle'
require_relative '../lib/part'
require_relative '../lib/parts'
require_relative '../lib/road_bike_parts'
require_relative '../lib/mountain_bike_parts'

class BicycleTest < Minitest::Test
  def setup
    @chain = Part.new(name: 'chain', description: '10-speed')
    @road_tire = Part.new(name: 'tire_size', description: '23')
    @tape = Part.new(name: 'tape_color', description: 'red')
    @mountain_tire = Part.new(name: 'tire_size', description: '2.1')
    @rear_shock = Part.new(name: 'rear_shock', description: 'Fox')
    @front_shock = Part.new(name: 'front_shock', description: 'Manitou', needs_spare: false)
  end

  def test_road_bike_size
    road_bike_parts = Parts.new([@chain, @road_tire, @tape])
    road_bike = Bicycle.new(size: 'L', parts: road_bike_parts)
    assert_equal('L', road_bike.size)
  end

  def test_road_bike_spares
    road_bike_parts = Parts.new([@chain, @road_tire, @tape])
    road_bike = Bicycle.new(size: 'L', parts: road_bike_parts)
    assert_equal([@chain, @road_tire, @tape], road_bike.spares)
  end

  def test_mountain_bike_size
    mountain_bike_parts = Parts.new([@chain, @mountain_tire, @front_shock, @rear_shock])
    mountain_bike = Bicycle.new(size: 'L', parts: mountain_bike_parts)
    assert_equal('L', mountain_bike.size)
  end

  def test_mountain_bike_spares
    mountain_bike_parts = Parts.new([@chain, @mountain_tire, @front_shock, @rear_shock])
    mountain_bike = Bicycle.new(size: 'L', parts: mountain_bike_parts)
    assert_equal([@chain, @mountain_tire, @front_shock, @rear_shock], mountain_bike.spares)
  end
end
