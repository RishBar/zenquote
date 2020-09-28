require 'nokogiri'
require 'open-uri'



document = Nokogiri::HTML.parse(open("https://www.goodreads.com/quotes/tag/mindfulness?page=#{rand(87)}"))

document.css('script').remove

# class_name = "quoteText"

# parsed_data = document.xpath("//*[@class=\"#{class_name}\"]")
# puts parsed_data


quotes = document.css("div[class=quoteText]")

rand_quote_num = rand(quotes.length)

one_quote = quotes[rand_quote_num]


puts one_quote
