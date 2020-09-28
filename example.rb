require 'nokogiri'
require 'open-uri'




document = Nokogiri::HTML.parse(open("https://www.goodreads.com/quotes/tag/mindfulness?page=#{rand(87)}"))

document.css('script').remove

quotes = document.css("div[class=quoteText]")

one_quote = quotes[rand(quotes.length)]

puts one_quote.text