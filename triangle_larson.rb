############################################################
#
# Name:        Craig Larson
# Assignment:  Right Triangle
# Date:        1/23/17
# Class:       CIS 282
# Description: Create Pseudocode, right, number and reverse triangles.
#
############################################################

=begin
  PSEUDOCODE for right triangle:
    - create .rb file
    - ask user for the size of the triangle
    - make sure the input is a positive integer
    - convert input into an integer
    - puts the top two lines and the bottom line manually
	- create a while statement and a counter
	- concatenate a math equation that will add gaps based on the counter
	- test thoroughly
=end

# Right Triangle

print 'What is the size of the triangle? '
size = gets.to_i
if size <= 0
  puts 'Start over with a positive number.'
elsif size == 1
  puts '*'
elsif size == 2
  puts '*'
  puts '**'
else 
  counter = 3
  puts '*'
  puts '**'
  while counter < size
    counter += 1
    puts '*' + (' ' * (counter - 3)) + '*'
  end
  puts '*' * size
end

=begin
  PSEUDOCODE for number triangle:
    - ask user for the size of the triangle
    - make sure the input is a positive integer
    - convert input into an integer
	- create a while statement and a counter
	- figure out how to write the while statement's math equation
    - create a third variable so you can have a loop within a loop
    - keep trying to write different variations until something works
	- test thoroughly
=end

# Number Triangle

print 'What is the size of the number triangle? '
size = gets.to_i
if size <= 0
  puts 'Start over with a positive number.'
else
  row = 1
  while row <= size
    counter = 1
    while counter <= row
      print counter
	  counter += 1
    end
    puts
    row += 1
  end
end
=begin
  PSEUDOCODE for reverse triangle:
    - ask user for the size of the triangle
    - make sure the input is a positive integer
    - convert input into an integer
    - puts the top two lines and the bottom line manually
	- create a while statement and a counter
    - concatenate a math equation so, first, it compensates for the blanks, then
	- concatenate a math equation that will add gaps based on the counter
	- test thoroughly
=end

# Reverse Triangle


print 'What is the size of the reverse triangle? '
size = gets.to_i
if size <= 0
  puts 'Start over with a positive number.'
elsif size == 1
  puts '*'
elsif size == 2
  puts ' *'
  puts '**'
else 
  counter = 3
  puts ' ' * (size - (counter - 1))  + ' *'
  puts ' ' * (size - (counter - 1))  + '**'
  while counter < size
    counter += 1
    puts (' ' * (size - counter + 1)) + '*' +(' ' * (counter - 3)) + '*'
  end
  puts '*' * size
end
