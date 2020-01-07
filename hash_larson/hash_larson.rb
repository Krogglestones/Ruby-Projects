############################################################
#
# Name:        Craig Larson
# Assignment:  Hashes Assignment
# Date:        2/12/17
# Class:       CIS 282
# Description: Create a menu driven program to interact with a set of products.
#
############################################################

=begin
  PSEUDOCODE:
    Format of hash:
	  -products = {124=>["shoes",59.99], 352=>["shirt",19.99], 456=>["socks", 3.99]}
	User abilities:
	  -view all products – sorted by the ID of the product in ascending order
      -add a new product (make sure key is unique, in other words don’t overwrite existing pair)
      -delete a product (give error message if product does not exist)
      -update a product (give error message if product does not exist)
      -view highest priced product
      -view lowest priced product
      -view sum of all product prices
      -exit
	Initializing:
	  -read from a products.txt file
	  -must have at least 3 things stored
	Listing items:
	  -list like example given
	Exiting:
	  -When your program exits, save all products to a file called “products.txt”
	  -The same file that you opened and read to initialize your program with.  
      -Saving should not have to be a separate menu item but it should save automatically on quit.
=end
  puts
  puts "Welcome to interactive inventory."
  puts
  puts "FIRST, lets make sure the inventory file loaded correctly."
  puts
options=[
  "Type 1 to view a list of all products.",
  "Type 2 to add an item to inventory.",
  "Type 3 to delete an item from inventory.",
  "Type 4 to update an item's info.",
  "Type 5 to view the highest priced item.",
  "Type 6 to view the lowest priced item.",
  "Type 7 to view a total price of all items.",
  "Type 8 to save and exit."]
puts options[0]
puts
inventory_hash = {}
choice = 0
while choice !=8
  inventory_file = File.open("products.txt")
  inventory_file.close
  choice = gets.chomp.to_i
  if choice == 1
    puts
    inventory_file = File.open("products.txt", "r")
    puts "Item    Description              Price"
    puts "----    -----------------        -----"
    while ! inventory_file.eof?
      item = inventory_file.gets.chomp
      pieces = item.split(",")
      inventory_hash [pieces[0].to_i] = [pieces[1], format( "%.2f", pieces[2].to_f)]
      puts " #{pieces[0]}    #{pieces[1].ljust(18)}" + "#{pieces[2].rjust(12)}"
    end
      inventory_file.close
      puts
      puts options
      puts
  elsif choice == 2
    puts
    inventory_file = File.open("products.txt", "a+")
    new_num = rand(100..999)
    while inventory_hash.has_key?(new_num)
      new_num = rand(100..999)
    end
    puts "NEW ITEM DESCRIPTION?"
    puts
    new_item = gets.chomp
    puts "NEW ITEM PRICE?"
    puts "(Don't forget to add the two spaces past the decimal.)"
    new_price = gets.chomp.to_f
    inventory_hash[new_num] = [new_item, new_price]
    puts
    puts "Item has been added."
    puts
    puts "You must SAVE AND EXIT to add it to inventory."
    puts
    puts options
    inventory_file.close
    puts
  elsif choice == 3
    puts
    inventory_file = File.open("products.txt", "a+")
    puts "Item    Description             Price"
    puts "----    -----------------       -----"
    while ! inventory_file.eof?
      item = inventory_file.gets.chomp
      pieces = item.split(",")
      inventory_hash [pieces[0].to_i] = [pieces[1], format( "%.2f", pieces[2].to_f)]
      puts " #{pieces[0]}     #{pieces[1].ljust(18)}" +  "#{pieces[2].rjust(12)}"
    end
    puts
    puts "Enter item number to delete item."
    remove_key = gets.chomp.to_i
    inventory_hash.delete(remove_key)
    puts
    puts "Item will be removed when you SAVE AND EXIT."
    puts
    inventory_file.close
    puts options
  elsif choice == 4
    inventory_file = File.open("products.txt", "a+")
    puts "Item    Description             Price"
    puts "----    -----------------       -----"
    while ! inventory_file.eof?
      item = inventory_file.gets.chomp
      pieces = item.split(",")
      inventory_hash [pieces[0].to_i] = [pieces[1], format( "%.2f", pieces[2].to_f)]
      puts " #{pieces[0]}     #{pieces[1].ljust(18)}" +  "#{pieces[2].rjust(12)}"
    end
    puts
    puts "To update an item, first delete it, save and exit, then re-add it with the new info."
    puts
    puts "-15 points for Craig.  (sorry)"
    puts
    inventory_file.close
    puts options
    puts
  elsif choice == 5
    puts
    highest_price = 0
    inventory_file = File.open("products.txt")
    price_array = []
    while ! inventory_file.eof?
      item = inventory_file.gets.chomp
      pieces = item.split(",")
      inventory_hash [pieces[0].to_i] = [pieces[1], pieces[2].to_f]
      price_array.push(pieces[2].to_f)
    end 
    price_array.sort! {|a,b| b.to_f <=> a.to_f}
    highest_price = price_array[0]
    puts "The highest priced item is #{highest_price}"
    puts
    inventory_file.close
    puts options
    puts
  elsif choice == 6
    puts
    lowest_price = 0
    inventory_file = File.open("products.txt")
    price_array = []
    while ! inventory_file.eof?
      item = inventory_file.gets.chomp
      pieces = item.split(",")
      inventory_hash [pieces[0].to_i] = [pieces[1], format( "%.2f", pieces[2].to_f)]
      price_array.push(pieces[2].to_f)
    end 
    price_array.sort! {|a,b| a.to_f <=> b.to_f}
    lowest_price = price_array[0]
    puts "The lowest priced item is #{lowest_price}"
    puts
    inventory_file.close
    puts options
    puts
  elsif choice == 7
    puts
	inventory_file = File.open("products.txt")
    price_adding = []
    combined_price = 0
    while ! inventory_file.eof?
      item = inventory_file.gets.chomp
      pieces = item.split(",")
      inventory_hash [pieces[0].to_i] = [pieces[1], format( "%.2f", pieces[2].to_f)]
      price_adding.push(pieces[2])
    end
    combined_price = (price_adding[0].to_f)+(price_adding[1].to_f)+(price_adding[2].to_f)+(price_adding[3].to_f)+(price_adding[4].to_f)+(price_adding[5].to_f)
    +(price_adding[6].to_f)+(price_adding[7].to_f)+(price_adding[8].to_f)+(price_adding[9].to_f)+(price_adding[10].to_f)+(price_adding[11].to_f)+(price_adding[12].to_f)
    +(price_adding[13].to_f)+(price_adding[14].to_f)+(price_adding[15].to_f)+(price_adding[16].to_f)+(price_adding[17].to_f)+(price_adding[18].to_f)
    puts "The total cost of all items is #{combined_price}"
    inventory_file.close
    puts
    puts options
    puts
  elsif (choice >= 9) || (choice <= 0)
    puts
    puts "Error"
    puts
    puts options
    puts
  else
    puts "Items saved.  See you next time."
    inventory_file = File.open("products.txt", "w")
    inventory_hash.each do |id, data|
      inventory_file.puts "#{id},#{data[0]},#{data[1]}"
    end
    inventory_file.close
  end
end
