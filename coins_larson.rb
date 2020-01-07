############################################################
#
# Name:        Craig Larson
# Assignment:  Coins
# Date:        2/26/17
# Class:       CIS 282
# Description: Add up someone's coins for them.
#
############################################################

puts "Please enter the number of Quarters"
quarter = gets.chomp.to_i
puts "Please enter the number of Dimes"
dime = gets.chomp.to_i
puts "Please enter the number of Nickels"
nickel = gets.chomp.to_i
puts "Please enter the number of Pennies"
penny = gets.chomp.to_i
total = 0.0
quarter_value = (quarter * 0.25)
dime_value = (dime * 0.10)
nickel_value = (nickel * 0.05)
penny_value = (penny * 0.01)
total = (quarter_value + dime_value + nickel_value + penny_value)
puts "You have #{quarter} quarters, #{dime} dimes, #{nickel} nickels and #{penny} pennies for a total of $#{total}."
