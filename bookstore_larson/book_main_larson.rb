############################################################
#
# Name:        Craig Larson
# Assignment:  Books Class
# Date:        5/26/17
# Class:       CIS 283
# Description: Manage a book store's files
#
############################################################


require_relative("book_class_larson")
book_store = Book_store.new

book_file = File.open("books_file_larson.txt")
while !book_file.eof?
  a_book = book_file.gets.chomp.split("\t")
  book = Book.new(a_book[0], a_book[1], a_book[2])
  book_store.add_book(book)
end
book_file.close

options = [
    '1.  View all books',
    '2.  Add a book',
    '3.  Update a book',
    '4.  Delete a book',
    '5.  View book with most pages',
    '6.  View book with least pages',
    '7.  View books with pages greater than or equal to 1000',
    '8.  View books with pages less than 1000',
    '9.  View books with pages between 500-1000',
    '10. Exit'
]

puts options
choice = 0
while choice != 10
  choice = gets.chomp.to_i

  # ----------------------------------------------------------------------------

  if choice == 1
    puts book_store.display_books
    puts
    puts options
    puts

  # ----------------------------------------------------------------------------

  elsif choice == 2
    puts 'New book title:'
    new_title = gets.chomp
    puts 'Author Name:'
    new_author = gets.chomp
    puts 'Number of Pages:'
    new_pages = gets.chomp.to_i
    if (new_title.length > 0) && (new_author.length > 0) && (new_pages.to_i > 0)
      new_book = Book.new(new_title, new_author, new_pages)
      book_store.add_book(new_book)
      puts 'BOOK ADDED'
      puts
      puts options
    else
      puts options
      puts
      puts 'You must fill in the BOOK TITLE, AUTHOR NAME, and the PAGES CAN NOT BE LETTERS.'
    end
    puts
  # ----------------------------------------------------------------------------

  elsif choice == 3

    puts 'Which book would you like to update?'
    puts book_store.display_selections
    puts
    update_selection = gets.chomp.to_i
    puts 'Now lets re-enter all the info for that book:'
    puts
    puts 'New book title:'
    new_name = gets.chomp
    puts 'Author name:'
    new_author = gets.chomp
    puts 'Number of pages:'
    new_pages = gets.chomp.to_i
    if (new_name.length > 0) && (new_author.length > 0) && (new_pages.to_i > 0)
      remove_first = book_store.get_book(update_selection)
      book_store.remove_book(remove_first)
      new_book = Book.new( new_name, new_author, new_pages)
      book_store.add_book(new_book)
      puts
      puts 'Book Updated'
      puts options
    else
      puts options
      puts
      puts 'You must fill in the BOOK TITLE, AUTHOR NAME, and the PAGES CAN NOT BE LETTERS.'
    end
    puts
  # ----------------------------------------------------------------------------

  elsif choice == 4

    puts 'Enter the number of your book selection to remove it:'
    puts book_store.display_selections
    user_selection = gets.chomp.to_i
    removal = book_store.get_book(user_selection)
    book_store.remove_book(removal)
    puts
    puts 'Book Removed'
    puts
    puts options

  # ----------------------------------------------------------------------------

  elsif choice == 5
    puts
    puts 'BOOK WITH THE MOST PAGES:'
    puts
    puts book_store.find_longest_book
    puts
    puts options
    puts
  # ----------------------------------------------------------------------------

  elsif choice == 6
    puts
    puts 'BOOK WITH THE FEWEST PAGES:'
    puts
    puts book_store.find_shortest_book
    puts
    puts options
    puts

  # ----------------------------------------------------------------------------

  elsif choice == 7
    puts
    puts 'BOOKS 1000 PAGES OR MORE:'
    puts
    puts book_store.find_book_length_over_1000
    puts
    puts options
    puts
  # ----------------------------------------------------------------------------

  elsif choice == 8
    puts
    puts 'BOOKS LESS THAN 1000 PAGES:'
    puts
    puts book_store.find_book_length_under_1000
    puts
    puts options
    puts

  # ----------------------------------------------------------------------------

  elsif choice == 9
    puts
    puts 'BOOKS BETWEEN 500 AND 1000 PAGES:'
    puts
    puts book_store.find_length_500_to_1000
    puts
    puts options
    puts

  # ----------------------------------------------------------------------------

  elsif (choice < 1) || (choice > 10)
    puts 'That is not a valid choice.'
  end
  # ----------------------------------------------------------------------------

end

book_file = File.open('books_file_larson.txt', 'w')
book_file.puts book_store.write_data
book_file.close
