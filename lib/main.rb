# To change this template, choose Tools | Templates
# and open the template in the editor.
require "rubygems"
require "nokogiri"
require "open-uri"

url = "http://www.junglee.com/b/783367031?ie=UTF8&tag=googjuhydr-21&hvadid=11585076165&hvpos=1t1&hvexid=&hvnetw=g&hvrand=18525729661750602638&hvpone=&hvptwo=&hvqmt=b&ref=pd_sl_55xgssp2hz_b"
doc = Nokogiri::HTML(open(url))
doc.css(".asinItem").each do |each_product|
  puts each_product.at_css(".title").text
end

