############################################################
#
# Name:        Craig Larson
# Assignment:  99 Bottles of Beer
# Date:        1/26/17
# Class:       CIS 282
# Description: Print out all the lyrics from 99 bottles to none.
#
############################################################

bottles = 100

counter = 99
  while counter > 1
    bottles -= 1
    puts bottles.to_s + " bottles of beer on the wall, " + bottles.to_s + " bottles of beer."
    counter -= 1
    puts "Take one down, pass it around. " + (bottles - 1).to_s + " bottles of beer on the wall."
    puts
  end
  if counter == 1
    puts "1 bottle of beer on the wall, 1 bottle of beer."
    puts "Take it down, pass it around."
    puts "No more bottles of beer on the wall."
  end
