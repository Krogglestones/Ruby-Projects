############################################################
#
# Name:        Craig Larson
# Assignment:  Books Class
# Date:        5/26/17
# Class:       CIS 283
# Description: Manage a book store's files
#
############################################################


class Book_store


  def initialize()
    @books = []
  end


  def add_book(new_book)
    @books << new_book
  end


  def display_books
    book_str = ""
    @books.each do |a_book|
      book_str += a_book.to_s + "\n"
    end
    return book_str
  end


  def write_data
    book_writer = ""
    @books.each do |book|
      book_writer += book.to_tab + "\n"
    end
    return book_writer
  end


  def display_selections
    book_str = ""
    @books.each_with_index do |book, index|
      book_str += "#{index + 1}. #{book.title}\n"
    end
    return book_str
  end


  def find_shortest_book
    short_book_array = []
    @books.each do |book|
      short_book_array << book.pages + " PAGES" + "\t" + "TITLE: " + book.title + "\t" + "AUTHOR: " + book.author
    end
    short_book_array.sort_by(&:to_i)[0]
  end


  def find_longest_book
    long_book_array = []
    @books.each do |book|
      long_book_array << book.pages + " PAGES" + "\t" + "TITLE: " + book.title + "\t" + "AUTHOR: " + book.author
    end
    long_book_array.sort_by(&:to_i)[-1]
  end


  def get_book(item_number)
    return @books[item_number - 1]
  end


  def remove_book(old_book)
    @books.delete(old_book)
  end


  def find_book_length_over_1000
    over_1000_array = []
    @books.each do |a_book|
      if(a_book.pages.to_i >= 1000)
        over_1000_array << a_book
      end
    end
    return over_1000_array
  end


  def find_book_length_under_1000
    under_1000_array = []
    @books.each do |a_book|
      if(a_book.pages.to_i < 1000)
        under_1000_array << a_book
      end
    end
    return under_1000_array
  end


  def find_length_500_to_1000
    the_500_to_1000_array = []
    @books.each do |a_book|
      if(a_book.pages.to_i >= 500) && (a_book.pages.to_i <= 1000)
        the_500_to_1000_array << a_book
      end
    end
    return the_500_to_1000_array
  end


  def to_s
    return "#{@books}"
  end

end


class Book < Book_store


  attr_accessor :title, :author, :pages


  def initialize(title, author, pages)
    @title = title
    @author = author
    @pages = pages
    @@publisher = "Geeks Publishing, Inc."
  end


  def to_s
    return "TITLE:  #{@title}\t\tAUTHOR:  #{@author}\t\tPAGES:  #{@pages}"
  end


  def to_tab
    return "#{@title}\t#{@author}\t#{@pages}"
  end

end
