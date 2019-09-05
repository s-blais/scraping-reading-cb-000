require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(open("https://flatironschool.com/"))
scrapes = doc.css(".title-oE5vT4")

scrapes.each do |scrape|
  puts scrape.text.strip
end
