class Player
    attr_reader :name, :hp

    def initialize(name)
        @name = name
        @hp = 100
    end

    def receive_damage 
      @hp -= 10
    end
    def is_loser?
        if @hp == 0
           true
        end
      end
end