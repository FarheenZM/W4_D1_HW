class Game
  attr_accessor :player, :computer

  def initialize(player)
    @player = player
    @moves = ["rock", "paper", "scissors"]
    @computer = @moves.sample
  end

  def play
    if @moves.include?(@player)
      if (@player == "scissors" && @computer == "paper") ||
        (@player == "paper" && @computer == "rock") ||
        (@player == "rock" && @computer == "scissors")

        return "You win!!"

      elsif (@player == "paper" && @computer == "scissors") ||
        (@player == "rock" && @computer == "paper") ||
        (@player == "scissors" && @computer == "rock")

        return "Sorry! Computer wins!!"

      else
        return "It's a draw!!"
      end
    else
      return "Wrong input"
    end

  end

end
