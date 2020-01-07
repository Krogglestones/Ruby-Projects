############################################################
#
# Name:        Craig Larson
# Assignment:  Leap Years
# Date:        2/26/17
# Class:       CIS 282
# Description: User enters 2 years and the program prints the leap years.
#
############################################################

puts "Enter 2 years and I'll print every leap year between those 2 years."
puts "What is the first year?"
first_year = gets.chomp.to_i
puts "What is the second year?"
second_year = gets.chomp.to_i
year_array = []
individual_years = 0
start_point = ((first_year / 4) * 4) + 4
if (start_point - first_year) == 4
  start_point = first_year
end
leap_years = start_point
while (leap_years <= second_year)
  year_array.push(leap_years)
  leap_years +=4
#    every 100 years, if leap years is divisible by 100 but not 400
#    remove that leap year "pop?"
#    end
#    if ((leap_years / 400) * 400) != leap_years
#      year_array.pop(leap_years)
#    end  
end
 
puts
print year_array.to_s + ", "
puts
