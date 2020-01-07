############################################################
#
# Name:        Craig Larson
# Assignment:  Acronym
# Date:        2/26/17
# Class:       CIS 282
# Description: User enters a sentence and gets back an acronym of the first letters.
#
############################################################

puts "Enter a sentence and I'll write an acronym of all the first letters."
sentence = gets.chomp
words = sentence.split(" ")
words.each do |word|
  word.upcase!
  print word[0]
end
