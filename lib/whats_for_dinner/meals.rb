class WhatsForDinner::Meals
  attr_accessor :title, :link, :subtitle, :time, :difficulty,
   :spice, :description, :chef, :calories

   @@all = []

   def initialize(hash)
     @title = hash[:title]
     @link = hash[:link]
     @@all << self
   end

   def self.create_by_array(array_of_meals)
     array_of_meals.each do |hash|
       WhatsForDinner::Meals.new(hash)
     end

   end

   def add_meal_details(hash)
     hash.each do |attr, value|
       self.send("#{attr}=", value)
     end
     self
   end

   def self.all
     @@all
   end


end
