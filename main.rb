require './game'
require './player'
require './question'

game = Game.new

while game.player_one.lives > 0 && game.player_two.lives > 0 do
  puts "----- NEW TURN -----"
  question_in_game = Question.new
  puts "Player #{game.current_player_index}: #{question_in_game.question_asked}"
  answer = question_in_game.answer

  input = gets.chomp.to_i

  if input != answer 
    puts "Player #{game.current_player_index}: Seriously? No!"
    game.current_stats
    game.lose_life
  else 
    puts "YES! You are correct."
    game.current_stats
  end

  game.switch_turn
end