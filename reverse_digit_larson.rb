############################################################
#
# Name:        Craig Larson
# Assignment:  Reverse Digits
# Date:        2/25/17
# Class:       CIS 282
# Description: Have a user enter a number and return the reverse digits
#
############################################################


puts "Pick a number and I'll return the digits in reverse."
choice = gets.chomp.to_i
y = 0
while choice > 0 do
  y = y * 10
  y = y + (choice % 10)
  choice = choice / 10
end
puts y
