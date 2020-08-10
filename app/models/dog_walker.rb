class DogWalker
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

  def walks
    Walk.all.select {|walk_instance| walk_instance.dog_walker == self}
  end

  def dogs 
    dogs = self.walks.map {|walk| walk.dog}
    dogs.uniq
  end

  def give_walk(length_in_minutes, dog)
    Walk.new(length_in_minutes, dog, self)
  end

  def length_of_all_walks
    self.walks.sum {|walk| walk.length_in_minutes}
  end

  def self.most_walks
    self.all.max_by {|dogwalker_instance| dogwalker_instance.walks.count}
  end 

end
