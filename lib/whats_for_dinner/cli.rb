class WhatsForDinner::CLI

  def start
    puts "~~~~~~~~~~~~~~~~~~~ Welcome! ~~~~~~~~~~~~~~~~~~~~"
    puts " "
    puts "Would you like to know whats for dinner this week?"
      input = gets.strip.downcase
      if input == "yes"
        puts "Here's a list"
         menu
      elsif input == "no" || input == "exit"
        puts "Thank you. Come again!"
      else
        puts "Invalid input"
        start
    end
  end

  def menu
    puts ""
    puts ""
    puts ""
    puts "~~~~~~~~~~~~~~~~~~ The Menu ~~~~~~~~~~~~~~~~~~"
    puts ""

    meal_list
  end

  def meal_list
    meals_array = WhatsForDinner::Scraper.scrap_meals
    WhatsForDinner::Meals.create_by_array(meals_array)

    WhatsForDinner::Meals.all.each.with_index(1) do |meal, i|
      puts "    #{i}.   #{meal.title}"
    end
    puts ""
  end


    #list out all of the meals by index
  #  WhatsForDinner::Meals.all.each_with_index(1) do |meal, index|
  #    puts "#{index}. #{meal.name}"

  #  end
  #  select_meal_input


  def select_meal_input
    puts "What meal would you like to know more about?"
    input = gets a number
  end

  def select_meal(input)

  end

  #WHAT DO I WANT MY INTERFACE TO do

 #"Welcome!"
 # "Would you like to know whats for dinner?" get input of yes or no if no say "Thank you. Come again"
 # A list of meals numbered and and (v) by the vegetarian options
 # "which meal would you like to know more about" user chooses number and it goes into detail


end
