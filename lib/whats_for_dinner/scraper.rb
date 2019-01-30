class WhatsForDinner::Scraper

#1st level scrape would be just getting the meal name and if its vegetarian or # NOTE:
  def self.scrap_meals
    #html = File.read("https://www.blueapron.com/pages/sample-recipes")
    meal = Nokogiri::HTML(open("https://www.homechef.com/our-menus/25-feb-2019/standard"))
    #doc = Nokogiri::HTML(open("https://www.blueapron.com/pages/sample-recipes"))
binding.pry

  end

#2nd level would be getting the time, calories, desciption, wine pair
  def self.scrap_meal_details(url)

  end


end

#meal = doc.css("div.week__products.recipe-cards") the count is 12
#title: meal.css("div.recipe-content__text").text count is 78
#link to details: meal.css("a").attribute("href").value
#time to make:
#calories:
#vegetarian:
#description:
#wine pair:

#HOMECHEF https://www.homechef.com/our-menus/25-feb-2019/standard
#meals : doc.css("div.cards article#meal")
#title: meals.css("h6.text--body") how to add the p??? how to just get the text body???
#link: meals.css("a.card__panel").attribute("href").value  href="/meals/scallops-with-lemon-caper-pasta"
#Second level = Nokogiri::HTML(open("https://www.homechef.com/meals/scallops-with-lemon-caper-pasta"))
#title in link: level.css("header.meal__header.order--1.group span").text
#time to cook: level.css("p.margin--1bottom span.is--block--bpDown2")[1].text
#spice level: level.css("span.is--block--bpDown2 span.is--block--bpDown2.margin--1bottom--bpDown2")[1].text
#difficulty: level.css("span.is--block--bpDown2 span.is--block--bpDown2.margin--1bottom--bpDown2")[0].text
#calories: level.css("li.margin--2bottom.size--xs--bpDown2")[0].text  "\nCalories\n537\n"  There is an item prop
# level.css("li.margin--2bottom.size--xs--bpDown2 strong.float--right").text "53770g15g30g"
#chef: level.css("h4.h--serif.size--xs.size--sm--bpDown2.no--margin").text
#description: level.css("div.flexGrid__item.padding--6left--bpUp3.margin--3top--bpDown2.size--xs--bpDown2").text
