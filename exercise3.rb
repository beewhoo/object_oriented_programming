class Player
  def initialize
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  def level_up
    @lives += 1
  end


  def collect_treasure
    @gold_coins += 1
    if @gold_coins % 10 == 0
     level_up
    end
end

  def do_battle(damage)
    @health_points -= damage
    if @health_points < 1
      @lives -= 1
    end
    if @lives < 0
      restart
    end
  end

  def restart
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

end
#
#
bibek = Player.new
p bibek.level_up
p bibek.collect_treasure
p bibek
p bibek.do_battle(100)
p bibek
