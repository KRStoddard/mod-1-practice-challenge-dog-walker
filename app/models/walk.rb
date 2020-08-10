class Walk
    #initializes a walk with a length of time, dog instance, and dog_walker instance
    #puts all instances of walk into an array
    #this is the single source of truth for the many-to-may dog/dog_walker relationship
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
    #shows whether the dog walker is walking their favorite breed
    def happy_walker?
        @dog_walker.favorite_breed == @dog.breed 
    end
    #prints the details of a walk instance
    def print_details
        puts "#{@dog_walker.name} walked #{@dog.name} for #{length_in_minutes} minutes."
    end
end
