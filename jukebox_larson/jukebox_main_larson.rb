############################################################
#
# Name:        Craig Larson
# Assignment:  Jukebox
# Date:        4/29/17
# Class:       CIS 283
# Description: Program a jukebox
#
############################################################
require_relative("songs_larson")
require_relative("jukebox_larson")
jukebox = Jukebox.new
song_file = File.open("songs.txt")

while !song_file.eof?
  a_song = song_file.gets.chomp.split("\t")
  songobj =  Songs.new(a_song[0], a_song[1], a_song[2], a_song[3], a_song[4], a_song[5])
  jukebox.add_song( songobj )
end
song_file.close

options = [
    '3.  Play a specific song',
    '4.  Add a new song',
    '5.  Delete a song',
    '6.  Update a song in the jukebox',
    '7.  List all songs',
    '8.  Quit'
]

puts options
choice = 0
while choice != 8
  choice = gets.chomp.to_i


#------------------------------------------------------------------------------

  elsif choice == 3
    puts 'Which song would you like to hear?'
    puts jukebox.display_selections
    play_selection = gets.chomp.to_i
    puts "Now Playing:  "
    puts jukebox.get_song(play_selection)
    puts
    puts options

#------------------------------------------------------------------------------

  elsif choice == 4

    puts "New song title:  "
    new_name = gets.chomp
    puts "Artist Name:  "
    new_artist = gets.chomp
    puts "Album title:  "
    new_album = gets.chomp
    puts "What year was it released?  "
    new_year = gets.chomp
    puts "Add any comments?  "
    new_comments = gets.chomp
    puts "How many seconds is the song?"
    new_length = gets.chomp.to_i

    new_song = Songs.new( new_name, new_artist, new_album, new_year, new_comments, new_length)
    jukebox.add_song(new_song)

    puts "SONG ADDED"
    puts

    puts options

#------------------------------------------------------------------------------

  elsif choice == 5

    puts "Enter the number of your song selection to remove it:"
    puts jukebox.display_selections
    user_selection = gets.chomp.to_i
    removal = jukebox.get_song(user_selection)
    jukebox.remove_song(removal)
    puts
    puts "Song Removed"
    puts
    puts options

#------------------------------------------------------------------------------

  elsif choice == 6

    puts "Which song would you like to update?"
    puts jukebox.display_selections
    puts
    update_selection = gets.chomp.to_i
    remove_first = jukebox.get_song(update_selection)
    jukebox.remove_song(remove_first)

    puts "Now lets re-enter all the info for that song:"
    puts
    puts "New song title:  "
    new_name = gets.chomp
    puts "Artist Name:  "
    new_artist = gets.chomp
    puts "Album title:  "
    new_album = gets.chomp
    puts "What year was it released?  "
    new_year = gets.chomp
    puts "Add any comments?  "
    new_comments = gets.chomp
    puts "How many seconds is the song?"
    new_length = gets.chomp.to_i

    new_song = Songs.new( new_name, new_artist, new_album, new_year, new_comments, new_length)
    jukebox.add_song(new_song)
    puts
    puts options
    puts

#------------------------------------------------------------------------------

  elsif choice == 7
    puts jukebox.display_songs
    puts
    puts options
    puts

#------------------------------------------------------------------------------

  elsif (choice < 1) || (choice > 8)
    puts "That is not a valid selection"
    puts options
  end
end

#----------------------------------------------------------------------------

song_file = File.open("songs.txt", "w")
song_file.puts jukebox.get_tabbed_data
song_file.close
