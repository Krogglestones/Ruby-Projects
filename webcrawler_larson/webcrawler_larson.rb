############################################################
#
# Name:        Craig Larson
# Assignment:  Form Search
# Date:        5/21/17
# Class:       CIS 283
# Description: Crawl through the web, copying links.
#
############################################################

require 'net/https'
require 'prawn'
require_relative("link_and_checker_larson")

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

website = ARGV[0]
response = Net::HTTP.get_response(website, '/')

full_anchor = response.body.scan(/<a .*?\/a>/)

puts "# of links: #{full_anchor.count}"
puts
puts "The program is running, please wait........."

link_checker = LinkChecker.new( website )


full_anchor.each do |href|
  href.scan(/<a .*?href="(.+?)".*?>(.+?)<\/a>/)
  if( $1 != nil )
    new_link = Link.new($1, $2)
    link_checker.add_link(new_link)
  end
end

pdf_array = []
pdf_array << link_checker.display_all_links

puts link_checker.display_all_links
puts
puts "==================================================================================="
puts  "SUCCESS!!!"

Prawn::Font::AFM.hide_m17n_warning = true
Prawn::Document.generate("hello_webcrawler.pdf") do |pdf|
  pdf_array.each do | url |
    pdf.text url.encode("Windows-1252", "UTF-8", invalid: :replace, undef: :replace) + "\n\n"
  end
end
puts response.code
