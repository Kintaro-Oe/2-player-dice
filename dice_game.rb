p1_score = 0
p2_score = 0

until p1_score == 2 || p2_score == 2 do
  p1_roll = rand(6) + rand(6) + 2
  p2_roll = rand(6) + rand(6) + 2
  
  round = "You rolled #{p1_roll}, Opponent rolled #{p2_roll}: "
  
  if p1_roll > p2_roll
    puts round + "You win!"
    p1_score += 1
  elsif p2_roll > p1_roll
    puts round + "You lose!"
    p2_score += 1
  else
    puts round + "It's a draw!"
  end
  
  score = "[#{p1_score}:#{p2_score}] "
  
  if p1_score == 2
    puts score + "Player 1 Victory"
  elsif p2_score == 2
    puts score + "Player 2 Victory"
  end
end