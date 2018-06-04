require 'minitest/autorun'
require_relative '../models/game'

class TestGame < Minitest::Test

  def setup
    @game = Game.new("rock")
  end

  # def test_play
  #   assert_equal("rock wins", @game.play())
  # end

end
