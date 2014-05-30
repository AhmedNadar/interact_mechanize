require 'rubygems'
require 'mechanize'
require 'open-uri'
require 'logger'

agent = Mechanize.new
page = agent.get('http://store.apple.com/us/search/headphones#!')

page.links.each do |link|
  puts link.text
end

page = agent.page.links_with(text: 'Beats').herf

