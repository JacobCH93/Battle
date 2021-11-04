class Player
    attr_reader :name, :hp

    def initialize(name)
        @name = name
        @hp = 100
    end

    def attack(player)
      player.recieve_damage
    end

    def recieve_damage 
      @hp -= 10
    end
end