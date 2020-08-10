# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
walker1 = DogWalker.new("Harry", "Great Dane")
walker2 = DogWalker.new("Hermione", "Cat")

dog1 = Dog.new("Sirius", "Great Dane", "True")
dog2 = Dog.new("Crookshanks", "Cat", "True")
dog3 = Dog.new("Clifford", "Big Red", "False")

walk1 = Walk.new(60, dog1, walker1)
walk2 = Walk.new(15, dog2, walker2)
walk3 = Walk.new(30, dog3, walker1)
walk4 = Walk.new(10, dog1, walker1)




# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
