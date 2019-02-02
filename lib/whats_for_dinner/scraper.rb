class WhatsForDinner::Scraper

  def self.scrap_meals #potentially make this an argument?
    doc = Nokogiri::HTML(open("https://www.homechef.com/our-menus/25-feb-2019/standard"))
    meals = []

    doc.css("div.cards article#meal").each  do |meal|
      title = meal.css("h6.text--body").text
      link = "https://www.homechef.com" + (meal.css("a.card__panel").attribute("href").value)
      meals << {title: title, link: link }
    end
    meals

  end

  def self.scrap_meal_details(url)
    details = Nokogiri::HTML(open(url))

    meal = {}
      meal[:subtitle] = details.css("header.meal__header.order--1.group span h2").text
      meal[:time] = details.css("p.margin--1bottom span.is--block--bpDown2")[1].text
      meal[:spice] = details.css("span.is--block--bpDown2 span.is--block--bpDown2.margin--1bottom--bpDown2")[1].text
      meal[:difficulty] = details.css("span.is--block--bpDown2 span.is--block--bpDown2.margin--1bottom--bpDown2")[0].text
      meal[:calories] = details.css("li.margin--2bottom.size--xs--bpDown2")[0].text.split("\n")[-1]
      meal[:chef] = details.css("h4.h--serif.size--xs.size--sm--bpDown2.no--margin").text
      meal[:description] = details.css("div.flexGrid__item.padding--6left--bpUp3.margin--3top--bpDown2.size--xs--bpDown2 p").text
    meal
  end

end
