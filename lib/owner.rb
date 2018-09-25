require 'pry'
class Owner
  
  attr_reader :species, :name
  @@all = []
  
  def initialize(species)
    @species = species
    @@all << self
    @pets = {:cats => [], :dogs => [], :fishes => []}
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.size
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def name=(name)
    @name = name
  end
  
  def pets
    @pets
  end
  
  def buy_fish(fish_name)
    @pets[:fishes] << Fish.new(fish_name)
  end
  
  def buy_cat(cat_name)
    @pets[:cats] << Cat.new(cat_name)
  end
  
  def buy_dog(dog_name)
    @pets[:dogs] << Dog.new(dog_name)
  end
  
  def walk_dogs
    @pets.collect do |species, instances|
      if species == :dogs
        instances.each do |dog|
          dog.mood = "happy"
        end
      end
    end
  end
  
  def play_with_cats
    @pets.collect do |species, instances|
      if species == :cats
        instances.each do |cat|
          cat.mood = "happy"
        end
      end
    end
  end
  
  def feed_fish
    @pets.collect do |species, instances|
      if species == :fishes
        instances.each do |fish|
          fish.mood = "happy"
        end
      end
    end
  end
  
  def sell_pets
    @pets.collect do |species, instances|
      instances.each do |pet|
        pet.mood = "nervous"
      end
      instances.clear
    end
  end
    
  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end
  
    
  
end