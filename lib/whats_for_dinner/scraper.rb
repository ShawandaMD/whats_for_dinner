class WhatsForDinner::Scraper

#1st level scrape would be just getting the meal name and if its vegetarian or # NOTE:
  def self.scrap_meals
    #html = File.read("https://www.blueapron.com/pages/sample-recipes")
    doc = Nokogiri::HTML(open("https://www.blueapron.com/pages/sample-recipes"))
binding.pry

  end

#2nd level would be getting the time, calories, desciption, wine pair
  def self.scrap_meal_details(url)

  end


end
