class Game

  def initialize(player, opponent_player)
    @player = player
    @opponent_player = opponent_player
  end

  def attack(victim)
    victim.receive_damage
  end

end
