require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(open("https://flatironschool.com/"))
selections = doc.css(".title-oE5vT4")

selections.each do |selection|
  puts selection.text.strip
end
