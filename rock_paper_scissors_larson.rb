############################################################
#
# Name:        Craig Larson
# Assignment:  Rock, Paper, Scissors
# Date:        1/29/17
# Class:       CIS 282
# Description: Create a rock, paper, scissors game.
#
############################################################

puts "This is a Rock, Paper, Scissors game, you versus the computer."
puts "Would you like to play?"
puts "1 = YES"
puts "2 = NO"
puts
response = gets.to_i

if response == 1
  win_total = 0
  loss_total = 0
  tie_total = 0
  menu = [
    "1 = Rock",
	"2 = Paper",
	"3 = Scissors",
	"4 = Quit"
]
  user_choice = 0
  while user_choice !=4
    menu.each do | item |
      puts item
   end
	puts "What is your choice?"
	computer_choice = rand (1..3)
    user_choice = gets.to_i
      if (user_choice == 1) && (computer_choice == 1)
	    puts "The computer chose Rock.  It's a tie."
        tie_total += 1
      elsif (user_choice == 1) && (computer_choice == 2)
        puts "The computer chose Paper.  You lose."
        loss_total += 1
      elsif (user_choice == 1) && (computer_choice == 3)
        puts "The computer chose Scissors.  You win!!"
        win_total += 1
	  elsif (user_choice == 2) && (computer_choice == 1)
        puts "The computer chose Rock.  You win!!"
        win_total += 1
  	  elsif (user_choice == 2) && (computer_choice == 2)
        puts "The computer chose Paper.  Its a tie."
        tie_total += 1
      elsif (user_choice == 2) && (computer_choice == 3)
        puts "The computer chose Scissors.  You lose."
        loss_total += 1
      elsif (user_choice == 3) && (computer_choice == 1)
        puts "The computer chose Rock.  You lose."
        loss_total += 1
      elsif (user_choice == 3) && (computer_choice == 2)
        puts "The computer chose Paper.  You win!!"
        win_total += 1
      elsif (user_choice == 3) && (computer_choice == 3)
        puts "The computer chose Scissors.  It's a tie."
        tie_total += 1
	  elsif user_choice == 4
        puts "Had enough?  Here's the final score:"
	    final_score = "Wins: " + win_total.to_s + " Losses: " + loss_total.to_s + " Ties: " + tie_total.to_s
	    puts final_score
      else
	    puts "Thats not a valid choice.  Please choose 1 thru 4."
	  end
  end
end
