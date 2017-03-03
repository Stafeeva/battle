require_relative 'player'

class Game

  def initialize(player_one, player_two)
    @players = [player_one, player_two]
  end

  def player_one
    @players.first
  end

  def player_two
    @players.last
  end

  def attack(victim)
    victim.receive_damage
  end

  def switch
    @players = @players.reverse
  end

end
