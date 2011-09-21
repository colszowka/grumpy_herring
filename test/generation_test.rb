require 'test_helper'

class GenerationTest < Test::Unit::TestCase
  def test_generation
    while name = GrumpyHerring.next
      assert name.instance_of?(String)
      assert_equal 2, name.split(' ').length
      if name == 'Grumpy Herring'
        puts name.upcase
        break
      else
        puts name
      end
    end
  end
  
  def test_combinations
    assert GrumpyHerring.combinations > 100_000
  end
end