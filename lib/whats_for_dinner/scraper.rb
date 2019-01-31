class WhatsForDinner::Scraper
#WhatsForDinner::Scraper.scrap_meals

  def self.scrap_meals #make this an argument for url for doc
    #html = File.read("")
    doc = Nokogiri::HTML(open("https://www.homechef.com/our-menus/25-feb-2019/standard"))
    meals = []

    doc.css("div.cards article#meal").each  do |meal|
      title = meal.css("h6.text--body").text
      link = meal.css("a.card__panel").attribute("href").value
      meals << {title: title, link: link }
    end
    meals
  end

  def self.scrap_meal_details
    #Second level
    #title in link: level.css("header.meal__header.order--1.group span").text
    #time to cook: level.css("p.margin--1bottom span.is--block--bpDown2")[1].text
    #spice level: level.css("span.is--block--bpDown2 span.is--block--bpDown2.margin--1bottom--bpDown2")[1].text
    #difficulty: level.css("span.is--block--bpDown2 span.is--block--bpDown2.margin--1bottom--bpDown2")[0].text
    #calories: level.css("li.margin--2bottom.size--xs--bpDown2")[0].text.split("\n")[-1] #537
    #chef: level.css("h4.h--serif.size--xs.size--sm--bpDown2.no--margin").text
    #description: level.css("div.flexGrid__item.padding--6left--bpUp3.margin--3top--bpDown2.size--xs--bpDown2").text

  end


end
