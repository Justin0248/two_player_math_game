class Game
attr_accessor :question, :winner
   def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    end

    def prompt()
        first = rand(0..20)
        second = rand(0..20)
      answer = first + second
    puts "What does #{first} plus #{second} equal? #{answer}"
    playerAnswer = gets.chomp.to_i
    if (playerAnswer != answer)
        puts "bad"
    else
        puts "nice"
    end
    end
end