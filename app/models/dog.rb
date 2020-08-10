class Dog
  attr_reader :name, :breed
  attr_accessor :good_dog

  @@all = []

  def initialize(name, breed, good_dog)
    @name = name
    @breed = breed
    @good_dog = good_dog

    self.class.all << self
  end

  def self.all
    @@all
  end

  def walks 
    Walk.all.select {|walk_instance| walk_instance.dog == self}
  end

  def dog_walkers
    walks = self.walks.map {|walk| walk.dog_walker}
    walks.uniq
  end

  def take_walk(length_in_minutes, dog_walker)
    Walk.new(length_in_minutes, self, dog_walker)
  end

  def print_walk_details
    self.walks.each do |walk|
      puts "#{walk.dog_walker.name} walked #{walk.dog.name} for #{walk.length_in_minutes} minutes."
    end
  end

  def self.good_dogs
    self.all.select {|dog_instance| dog_instance.good_dog == "True"}
  end 
end
