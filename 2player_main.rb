require 'pry'
require './2player_instance_variables.rb'
require './2player_methods.rb'

def set_name
  puts "Player 1 name:"
  a = gets.chomp
  puts "Player 2 name:"
  b = gets.chomp
end


def game_loop
  return if @game_over
    prompt_players_answer(@p1)
    check_game_over?
    display_score
  return if @game_over
    prompt_players_answer(@p2)
    check_game_over?
    display_score
  # Recursively loop the game until base condition
  game_loop
end

p set_name  
p game_loop
