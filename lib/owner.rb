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
    {:cats => [], :dogs => [], :fishes => []}
  end
  
  def buy_fish(fish)
  end
    
  
end