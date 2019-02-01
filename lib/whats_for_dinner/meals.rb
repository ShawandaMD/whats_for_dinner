class WhatsForDinner::Meals
  attr_accessor :title, :link, :subtitle, :time, :difficulty,
   :spice, :description, :chef, :calories

   @@all = []

   def initialize()

     @@all << self
   end

   def self.create_by_array(array_of_meals) #self because it's creating an instance
     array_of_meals.each do |hash|
       WhatsForDinner::Meals.new(hash)
     end
   end

   def add_meal_details(hash)

   end

   def self.all
     @@all
   end


end
