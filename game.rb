class Game 

  attr_reader :current_player_index, :player_one, :player_two

  def initialize
    @current_player_index = 1
    @player_one = Player.new("Player 1")
    @player_two = Player.new("Player 2")
  end
  
  def current_player
    if @current_player_index === 1
      @player_one
    else 
      @player_two
    end
  end

  def switch_turn
    if @current_player_index === 1
      @current_player_index = 2
    else
      @current_player_index = 1
    end
  end

  def lose_life 
    if @current_player_index === 1
      @player_two.lives -= 1
      if @player_two.lives === 0 
        puts "#{player_one.name} wins with a score of #{player_one.lives}"
        puts "----- GAME OVER -----"
        return puts "Good bye!"
      end
    else 
      @player_one.lives -= 1
      if @player_one.lives === 0 
        puts "#{player_two.name} wins with a score of #{player_two.lives}"
        puts "----- GAME OVER -----"
        return puts "Good bye!"
      end
    end
  end

  def current_stats
    puts "P1: #{player_one.lives}/3 vs P2: #{player_two.lives}/3"
  end

end