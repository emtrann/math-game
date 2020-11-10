class Game 

  def initialize
    @player = 1
    @player_one = Player.new("Player 1")
    @player_two = Player.new("Player 2")
  end
  
  def current_player
    if @player === 1
      @player_one
    else 
      @player_two
    end
  end

  def switch_turn
    if @player === 1
      @player = 2
    else
      @player = 1
    end
  end


end