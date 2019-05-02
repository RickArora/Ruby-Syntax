class GuessingGame

    def initialize(min, max)
        @secret_num = rand(min..max)
        self.rand()
        @num_attempts = 0
        @game_over = false
    end

    def num_attempts()
    end

    def secret_num()
    end

    def game_over()
    end

    def num_attempts()
        return @num_attempts
    end

end
