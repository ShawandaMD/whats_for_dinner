class WhatsForDinner::CLI

  def start
    puts "~~~~~~~~~~~~~~~~~~~ Welcome! ~~~~~~~~~~~~~~~~~~~~"
    puts " "
    user
  end

  def user
    puts "Would you like to know whats for dinner this week?"
    puts "Enter yes or no"
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
    select_meal_input
  end

  def details_page(link)
      hash = WhatsForDinner::Scraper.scrap_meal_details(link)
      meal.add_meal_details(hash)
      #binding.pry
    #binding.pry WhatsForDinner::Meals.all <<
  end


  def select_meal_input
    puts "What meal would you like to know more about?"
    puts ""
    puts "Please input corresponding meal number."
    input = gets.strip
    index = input.to_i - 1
binding.pry
      if index.between?(0,18)

      details_page(WhatsForDinner::Meals.all[index].link)
#binding.pry
    else
      select_meal_input
    end
  end

  def print_meal(meal)
    puts ""
    puts ""
    puts "#{meal.name}"
    puts "#{meal.subtitle}"
    puts ""
    puts "Chef : #{meal.chef}"
    puts ""
    puts "Time : #{meal.time}"
    puts ""
    puts "Difficulty : #{meal.difficulty}"
    puts ""
    puts "Calories : #{meal.calorie}"
    puts ""
    puts "Spice: #{meal.spice}"
    puts ""
    puts "Description:"
    puts "#{meal.description}"
    puts ""
  end

end
