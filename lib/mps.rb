require 'rubygems'
require 'nokogiri'
require 'open-uri'

@doc = Nokogiri::HTML(open("http://www2.assemblee-nationale.fr/deputes/liste/tableau"))

def get_mps_url
  array_of_first_and_last_name = []
  array_of_mps_firstname = []
  array_of_mps_lastname = []
  array_of_emails = []
  hash_mps_email = {}

  @doc.xpath('//td[1]/a/@href').each do |name|
  array_of_first_and_last_name <<  name.text.split.delete(1)
   array_of_mps_firstname = array_of_first_and_last_name[1]
   array_of_mps_lastname = array_of_first_and_last_name[2]
   array_of_emails = array_of_first_and_last_name +"@assemblee-nationale.com"
  end
return hash_mps_email = array_of_mps.zip(array_of_emails).to_h
end

get_mps_url
