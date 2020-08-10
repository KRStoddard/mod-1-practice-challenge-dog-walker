class DogWalker

  #class initialized with breed you can change and name you can't
  #puts all instances into array
  attr_reader :name
  attr_accessor :favorite_breed

  @@all = []

  def initialize(name, favorite_breed)
    @name = name
    @favorite_breed = favorite_breed

    self.class.all << self
  end

  def self.all
    @@all
  end
  #finds all walks associated with dog walker
  def walks
    Walk.all.select {|walk_instance| walk_instance.dog_walker == self}
  end
  #finds each unique dog that the walker walked
  def dogs 
    dogs = self.walks.map {|walk| walk.dog}
    dogs.uniq
  end
  #creates a new walk given a length of time and dog instance for the walker
  def give_walk(length_in_minutes, dog)
    Walk.new(length_in_minutes, dog, self)
  end
  #totals length of time the walker has spent walking dogs
  def length_of_all_walks
    self.walks.sum {|walk| walk.length_in_minutes}
  end
  #shows which dogwalker took the most walks
  def self.most_walks
    self.all.max_by {|dogwalker_instance| dogwalker_instance.walks.count}
  end 

end
