def addpoint(player)
  player[:score] += 1
end

def loselife(player)
  player[:lives] -= 1
end




def generate_question
  num_1 = rand(20)
  num_2 = rand(20)
  operations = ["+", "-", "*", "/"]
  operation = rand(operations.length)
  answer = num_1.method(operation).(num_2)
  return [num_1, num_2, answer, operation]
end


def prompt_players_answer(player)
  ask_player = "#{player[:name]}:   #{problem[0]} #{problem[4]} #{problem[1]} ="
  player_answer = gets.chomp.to_i 
  if player_answer == problem[3]
    player.addpoint
    puts "#{player[:name]} score +1"
  else
    player.loselife
    puts "#{player[:name]} life -1, Correct Answer is #{correct}"
  end
  check_game_over?
end

def check_game_over?
  if @p1[:lives] == 0
    puts "GAME OVER     #{@p2[:name]} wins!"
    @game_over = true
  elsif @p2[:lives] == 0
    puts "GAME OVER     #{@p1[:name]} wins!"
    @game_over = true
  end
end

# def display_score
#   return "#{@p1[:name]}           " <<
#        "| lives: #{@p1[:lives]} " <<
#        "| score: #{@p1[:score]} " <<
#        "#{@p2[:name]}           " <<
#        "| lives: #{@p2[:lives]} " <<
#        "| score: #{@p2[:score]} "
# end

def display_score
  return players.to_s
end