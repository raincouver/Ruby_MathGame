class Player
  attr_accessor :name, :lives

   @@number_of_players = 0

  def initialize
    @@number_of_players += 1
    @name = "Player #{@@number_of_players}"
    @lives = 3
  end

  def lose_life
    @lives -= 1
    puts "#{self.name} loses 1 life, #{self.lives} left"
  end

  def alive?
    @lives != 0
  end

end


puts a = Player.new
puts a.name
a.lose_life
a.alive?
a.lose_life
a.alive?
a.lose_life
a.alive?
puts b = Player.new
puts b.name