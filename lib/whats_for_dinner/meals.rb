class WhatsForDinner::Meals
  attributes :title, :link, :subtitle, :time, :difficulty,
   :spice, :description, :chef, :calories

   @@all = []

   def initialize()

   end

   def self.create_by_array(array_of_meals) #self because it's creating an instance

   end

   def add_meal_details(hash)

   end

   def self.all
     @@all
   end


end
