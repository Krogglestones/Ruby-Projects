############################################################
#
# Name:        Craig Larson
# Assignment:  Jukebox
# Date:        4/29/17
# Class:       CIS 283
# Description: Program a jukebox
#
############################################################

class Songs

  attr_accessor :title, :artist, :album, :year, :comments, :length
  def initialize(title, artist, album, year, comments, length)
    @title = title
    @artist = artist
    @album = album
    @year = year
    @comments = comments
    @length = length
  end

  def display
    return "#{@title} #{@artist} #{@album} #{@year} #{@comments} #{@length}"
  end

  def to_tab
    return "#{@title}\t#{@artist}\t#{@album}\t#{@year}\t#{@comments}\t#{@length}"
  end

  def to_s
    return "#{@title} #{@artist} #{@album} #{@year} #{@comments} #{@length}"
  end

end
