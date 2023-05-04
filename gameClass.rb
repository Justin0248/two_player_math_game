class Game
attr_accessor :question, :winner, :player1, :player2, :count
   def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @player = player1
    end
    def swapPlayer()
        if (@player == player1)
            @player = player2
        else
            @player = player1
        end
    end

   def loop()
    while (player1.life != 0 && player2.life != 0)
        prompt()
        puts "p1: #{player1.life}/3 vs p2: #{player2.life}/3"
    end
    puts "#{@player.name} wins with a score of #{@player.life}/3"
    puts "---------- Game over ----------"
end
    def prompt()
        first = rand(0..20)
        second = rand(0..20)
        answer = first + second 
    puts "What does #{first} plus #{second} equal? #{answer}"
    playerAnswer = gets.chomp.to_i
    if (playerAnswer != answer)
        puts "#{@player.name}: Wrong answer"
        puts "---------- New turn ----------"
        @player.life -= 1
        swapPlayer()
    else
        puts "#{@player.name}: Nice job"
        puts "---------- New turn ----------"
        swapPlayer()
    end
end
end