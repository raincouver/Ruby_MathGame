require './player'
require './questions'

class Game 
  attr_accessor :loser, :player1, :player2, :current, :question

  def initialize()
    @player1 = Player.new
    @player2 = Player.new
    @current = self.player1
    @loser = nil
    @question = Question.new
  end

  def play()
    
    puts "Welcome to Ruby Math Game!"

    while !self.loser do
      puts "----- NEW TURN -----"
      print "#{self.current.name}:"
      if self.question.question
        puts "#{self.current.name}: YES! You are correct."
      else 

        puts "#{self.current.name}: Seriously? No!"
        self.current.lose_life
        if !self.current.alive?
          self.loser = self.current
        end
      end


      if self.current == self.player1
        self.current = self.player2
      else
        self.current = self.player1
      end

      if self.loser
        puts "#{self.current.name} wins with a score of #{self.current.lives}/3"
        puts "----- GAME OVER -----"
        puts "Good bye!"
      else 
        self.question = Question.new

        puts "P1:#{self.player1.lives}/3 vs P2:#{self.player2.lives}/3"
      end
    end
  end

end

a = Game.new
p a.play()
