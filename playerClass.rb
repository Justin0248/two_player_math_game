class Player
attr_accessor :name, :score, :life
    def initialize(name)
        @name = name
        @life = 3
    end

    # def lose=(lose)
    # @life -= lose
    # end
end