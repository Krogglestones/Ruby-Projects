############################################################
#
# Name:        Craig Larson
# Assignment:  Deaf Grandma Extended
# Date:        2/3/17
# Class:       CIS 282
# Description: Communicate with deaf granny.
#
############################################################

=begin
  PSEUDOCODE:
    - Print prompt to talk to granny.
      -- get, chomp
	- If small letters are typed, HUH?!  SPEAK UP, SONNY!
	- If large letters are typed, NO, NOT SINCE (random number 1930-1950).
	- If BYE is typed (shouted).
	  -- once or twice, its ignored
	  -- third time in a row, end
	  -- if not three consecutive, continue
=end


print "Say something to granny?"
bye_counter = 0
while bye_counter < 3
  response = gets.chomp
  if (response == response.upcase) && (response != "BYE")
    puts "NO, NOT SINCE " + rand(1930..1950).to_s + "."
    bye_counter = 0
  elsif (response == response.upcase) && (response == "BYE")
    puts " "
    bye_counter += 1
  else
    puts "HUH?!  SPEAK UP, SONNY!"
	bye_counter = 0
  end
  if bye_counter == 3
    puts "OK.  BYE BYE THEN, SONNY."
  end
end
