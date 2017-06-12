class Game

def initialize(player_1,player_2)
  @player_1 = player_1
  @player_2 = player_2
end

def run

  rules ={
    'rock' =>'paper',
    'paper' => 'scissors',
    'scissors' => 'rock'
  }

  if @player_1 == rules[@player_2]
    return @player_1 + " wins!"
  end

  if @player_2 == rules[@player_1]
    return @player_2 + " wins!"
  end
  return "Draw!"
end
end
