require 'test_helper'

class GenerationTest < Test::Unit::TestCase
  def test_generation
    10_000.times do
      name = GrumpyHerring.next
      assert name.instance_of?(String)
      assert_equal 2, name.split(' ').length
      puts name
    end
  end
end