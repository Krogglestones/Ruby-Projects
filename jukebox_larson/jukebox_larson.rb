############################################################
#
# Name:        Craig Larson
# Assignment:  Jukebox
# Date:        4/29/17
# Class:       CIS 283
# Description: Program a jukebox
#
############################################################


class Jukebox

  def initialize( )
    @songs = []
  end

  def find_song_length( song_length )
    temp_array_of_songs = []
    @songs.each do | song |
      if song_length > song.length
        temp_array_of_songs << song
      end
    end
    return temp_array_of_songs
  end

  def add_song(new_song)
    @songs << new_song
  end

  def remove_song(old_song)
    @songs.delete(old_song)
  end

  def get_song(item_number)
    return @songs[item_number - 1]
  end

  def display_songs
    song_str = ""
     @songs.each do |song|
       song_str += song.to_s + "\n"
     end
     return song_str
  end

  def display_selections
    song_str= ""
    @songs.each_with_index do |song, index|
      song_str += "#{index + 1}. #{song.title}\n"
    end
    return song_str
  end

  def get_tabbed_data
    song_str = ""
    @songs.each do |song|
      song_str += song.to_tab + "\n"
    end
    return song_str
  end

  def to_s
    return "#{@songs}"
  end
end
