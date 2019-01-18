require 'rubygems'
require 'nokogiri'
require 'open-uri'

@page = Nokogiri::HTML(open("https://coinmarketcap.com/"))

def crazy_scraper
    key = []
    value = []
  @page.xpath('//td[2]/a').each do |name|
    key << name.content
    end
  @page.xpath('//a[@class="price"]/@data-usd').each do |price|
    value << price.content
    end

  array = key.zip(value).map{|k, v| {key:k, value:v}}

end

def crazy_scraper2
    key = []
    value = []
  @page.xpath('//td[2]/a').each do |name|
    key << name.content
    end
  @page.xpath('//a[@class="price"]/@data-usd').each do |price|
    value << price.content
    end

  puts array = key.zip(value).to_h

end


crazy_scraper
