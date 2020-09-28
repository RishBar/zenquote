require 'nokogiri'
require 'open-uri'

parsed_data = Nokogiri::HTML.parse(open('https://www.goodreads.com/quotes/tag/mindfulness?page=1')).title
puts parsed_data
