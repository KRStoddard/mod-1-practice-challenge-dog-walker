class Walk

    def initialize(length_in_minutes, dog, dog_walker)
        @length_in_minutes = length_in_minutes
        @dog = dog 
        @dog_walker = dog_walker

        self.class.all << self
    end
    
    attr_reader :length_in_minutes, :dog, :dog_walker
    @@all = []

    def self.all 
        @@all 
    end

    def happy_walker?
        if @dog_walker.favorite_breed == @dog.breed 
            true
        else
            false
        end
    end

    def print_details
        puts "#{@dog_walker.name} walked #{@dog.name} for #{length_in_minutes} minutes."
    end
end
