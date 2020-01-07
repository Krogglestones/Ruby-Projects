############################################################
#
# Name:        Craig Larson
# Assignment:  Maze
# Date:        2/27/17
# Class:       CIS 282
# Description: Get through the mazes, get through the quarter.
#
############################################################


options = [
    "1  = maze 1",
    "2  = maze 2",
    "3  = maze 3",
    "4  = maze 4",
    "5  = maze 5",
    "6  = maze 6",
    "7  = maze 7",
    "8  = maze 8",
    "9  = maze 9",
    "10 = maze 10",
    "11 = QUIT"
]
maze = []
choice = 0
puts options
while choice != 11
  maze = []
  choice = gets.chomp.to_i

  if choice == 1
    mz_file = File.open("maze1.mz")
    while !mz_file.eof?
      row = mz_file.gets.chomp.split('')
      maze << row
    end
    mz_file.close

    row = 0
    maze.each do |row|
      row.each do |cell|
        print cell
      end
      puts
    end
    puts
    # Look for F

    row = 0
    while row < maze.count
      col = 0
      while col < maze[row].count
        if maze[row][col] == 'F'
          f_row = row
          f_col = col
        end
        col += 1
      end
      row += 1
    end

    # Put 0's

    if maze[f_row - 1][f_col] == ' '
      maze[f_row - 1][f_col] = 0
    end
    if maze[f_row + 1][f_col] == ' '
      maze[f_row + 1][f_col] = 0
    end
    if maze[f_row][f_col - 1] == ' '
      maze[f_row][f_col - 1] = 0
    end
    if maze[f_row][f_col + 1] == ' '
      maze[f_row][f_col + 1] = 0
    end

    # Start triple loop
    # Look for 0, put 1's

    found_s = false
    look_for = 0
    while !found_s
      row = 0
      while row < maze.count
        col = 0
        while col < maze[row].count
          if maze[row][col] == look_for

            # Put a 1 around NSEW IF it is a space

            if maze[row - 1][col] == ' '
              maze[row - 1][col] = look_for + 1
            end
            if maze[row + 1][col] == ' '
              maze[row + 1][col] = look_for + 1
            end
            if maze[row][col - 1] == ' '
              maze[row][col - 1] = look_for + 1
            end
            if maze[row][col + 1] == ' '
              maze[row][col + 1] = look_for + 1
            end
            if maze[row - 1][col] == 'S'
              found_s = true
              s_row = row - 1
              s_col = col
            end
            if maze[row + 1][col] == 'S'
              found_s = true
              s_row = row + 1
              s_col = col
            end
            if maze[row][col - 1] == 'S'
              found_s = true
              s_row = row
              s_col = col - 1
            end
            if maze[row][col + 1] == 'S'
              found_s = true
              s_row = row
              s_col = col + 1
            end

            # if North is an S
            #  found_s = true

          end
          col += 1
        end
        row += 1
      end
      look_for += 1
    end


    puts "Steps: #{look_for}"
    while look_for >= 0
      if maze[s_row - 1][s_col] == look_for
        maze[s_row - 1][s_col] = '*'
        s_row -= 1
      elsif maze[s_row + 1][s_col] == look_for
        maze[s_row + 1][s_col] = '*'
        s_row += 1
      elsif maze[s_row][s_col - 1] == look_for
        maze[s_row][s_col - 1] = '*'
        s_col -= 1
      elsif maze[s_row][s_col + 1] == look_for
        maze[s_row][s_col + 1] = '*'
        s_col += 1
      end
      look_for -= 1
    end



    row = 0
    while row < maze.count
      col = 0
      while col < maze[row].count
        if maze[row][col].is_a?(Fixnum)
          maze[row][col] = " "
        end
        col += 1
      end
      row += 1
    end

    maze.each do |row|
      row.each do |cell|
        print cell
      end
      puts
    end


    puts options


  elsif choice == 2
    mz_file = File.open("maze2.mz")
    while !mz_file.eof?
      row = mz_file.gets.chomp.split('')
      maze << row
    end
    mz_file.close

    row = 0
    maze.each do |row|
      row.each do |cell|
        print cell
      end
      puts
    end
    puts
    # Look for F

    row = 0
    while row < maze.count
      col = 0
      while col < maze[row].count
        if maze[row][col] == 'F'
          f_row = row
          f_col = col
        end
        col += 1
      end
      row += 1
    end

    # Put 0's

    if maze[f_row - 1][f_col] == ' '
      maze[f_row - 1][f_col] = 0
    end
    if maze[f_row + 1][f_col] == ' '
      maze[f_row + 1][f_col] = 0
    end
    if maze[f_row][f_col - 1] == ' '
      maze[f_row][f_col - 1] = 0
    end
    if maze[f_row][f_col + 1] == ' '
      maze[f_row][f_col + 1] = 0
    end

    found_s = false
    look_for = 0
    while !found_s
      row = 0
      while row < maze.count
        col = 0
        while col < maze[row].count
          if maze[row][col] == look_for

            # Put a 1 around NSEW IF it is a space

            if maze[row - 1][col] == ' '
              maze[row - 1][col] = look_for + 1
            end
            if maze[row + 1][col] == ' '
              maze[row + 1][col] = look_for + 1
            end
            if maze[row][col - 1] == ' '
              maze[row][col - 1] = look_for + 1
            end
            if maze[row][col + 1] == ' '
              maze[row][col + 1] = look_for + 1
            end
            if maze[row - 1][col] == 'S'
              found_s = true
              s_row = row - 1
              s_col = col
            end
            if maze[row + 1][col] == 'S'
              found_s = true
              s_row = row + 1
              s_col = col
            end
            if maze[row][col - 1] == 'S'
              found_s = true
              s_row = row
              s_col = col - 1
            end
            if maze[row][col + 1] == 'S'
              found_s = true
              s_row = row
              s_col = col + 1
            end


          end
          col += 1
        end
        row += 1
      end
      look_for += 1
    end


    puts "Steps: #{look_for}"
    while look_for >= 0
      if maze[s_row - 1][s_col] == look_for
        maze[s_row - 1][s_col] = '*'
        s_row -= 1
      elsif maze[s_row + 1][s_col] == look_for
        maze[s_row + 1][s_col] = '*'
        s_row += 1
      elsif maze[s_row][s_col - 1] == look_for
        maze[s_row][s_col - 1] = '*'
        s_col -= 1
      elsif maze[s_row][s_col + 1] == look_for
        maze[s_row][s_col + 1] = '*'
        s_col += 1
      end
      look_for -= 1
    end

    row = 0
    while row < maze.count
      col = 0
      while col < maze[row].count
        if maze[row][col].is_a?(Fixnum)
          maze[row][col] = " "
        end
        col += 1
      end
      row += 1
    end

    maze.each do |row|
      row.each do |cell|
        print cell
      end
      puts
    end

    puts
    puts options

  elsif choice == 3
    mz_file = File.open("maze3.mz")
    while !mz_file.eof?
      row = mz_file.gets.chomp.split('')
      maze << row
    end
    row = 0
    mz_file.close

    maze.each do |row|
      row.each do |cell|
        print cell
      end
      puts
    end
    puts

    row = 0
    while row < maze.count
      col = 0
      while col < maze[row].count
        if maze[row][col] == 'F'
          f_row = row
          f_col = col
        end
        col += 1
      end
      row += 1
    end

    if maze[f_row - 1][f_col] == ' '
      maze[f_row - 1][f_col] = 0
    end
    if maze[f_row + 1][f_col] == ' '
      maze[f_row + 1][f_col] = 0
    end
    if maze[f_row][f_col - 1] == ' '
      maze[f_row][f_col - 1] = 0
    end
    if maze[f_row][f_col + 1] == ' '
      maze[f_row][f_col + 1] = 0
    end

    found_s = false
    look_for = 0
    while !found_s
      row = 0
      while row < maze.count
        col = 0
        while col < maze[row].count
          if maze[row][col] == look_for
            if maze[row - 1][col] == ' '
              maze[row - 1][col] = look_for + 1
            end
            if maze[row + 1][col] == ' '
              maze[row + 1][col] = look_for + 1
            end
            if maze[row][col - 1] == ' '
              maze[row][col - 1] = look_for + 1
            end
            if maze[row][col + 1] == ' '
              maze[row][col + 1] = look_for + 1
            end
            if maze[row - 1][col] == 'S'
              found_s = true
              s_row = row - 1
              s_col = col
            end
            if maze[row + 1][col] == 'S'
              found_s = true
              s_row = row + 1
              s_col = col
            end
            if maze[row][col - 1] == 'S'
              found_s = true
              s_row = row
              s_col = col - 1
            end
            if maze[row][col + 1] == 'S'
              found_s = true
              s_row = row
              s_col = col + 1
            end
          end
          col += 1
        end
        row += 1
      end
      look_for += 1
    end

    puts "Steps: #{look_for}"
    while look_for >= 0
      if maze[s_row - 1][s_col] == look_for
        maze[s_row - 1][s_col] = '*'
        s_row -= 1
      elsif maze[s_row + 1][s_col] == look_for
        maze[s_row + 1][s_col] = '*'
        s_row += 1
      elsif maze[s_row][s_col - 1] == look_for
        maze[s_row][s_col - 1] = '*'
        s_col -= 1
      elsif maze[s_row][s_col + 1] == look_for
        maze[s_row][s_col + 1] = '*'
        s_col += 1
      end
      look_for -= 1
    end

    row = 0
    while row < maze.count
      col = 0
      while col < maze[row].count
        if maze[row][col].is_a?(Fixnum)
          maze[row][col] = " "
        end
        col += 1
      end
      row += 1
    end

    maze.each do |row|
      row.each do |cell|
        print cell
      end
      puts
    end
    puts
    puts options


  elsif choice == 4
    mz_file = File.open("maze4.mz")
    while !mz_file.eof?
      row = mz_file.gets.chomp.split('')
      maze << row
    end
    row = 0
    mz_file.close

    maze.each do |row|
      row.each do |cell|
        print cell
      end
      puts
    end
    puts

#    row = 0
#    while row < maze.count
#      col = 0
#      while col < maze[row].count
#        if maze[row][col] == 'F'
#          f_row = row
#          f_col = col
#        end
#        col += 1
#      end
#      row += 1
#    end
#
#    # Put 0's
#    if maze[f_row - 1][f_col] == ' '
#      maze[f_row - 1][f_col] = 0
#    end
#    if maze[f_row + 1][f_col] == ' '
#      maze[f_row + 1][f_col] = 0
#    end
#    if maze[f_row][f_col - 1] == ' '
#      maze[f_row][f_col - 1] = 0
#    end
#    if maze[f_row][f_col + 1] == ' '
#      maze[f_row][f_col + 1] = 0
#    end
#
#    found_s = false
#    look_for = 0
#    while !found_s
#      row = 0
#      while row < maze.count
#        col = 0
#        while col < maze[row].count
#          if maze[row][col] == look_for
#            if maze[row - 1][col] == ' '
#              maze[row - 1][col] = look_for + 1
#            end
#            if maze[row + 1][col] == ' '
#              maze[row + 1][col] = look_for + 1
#            end
#            if maze[row][col - 1] == ' '
#              maze[row][col - 1] = look_for + 1
#            end
#            if maze[row][col + 1] == ' '
#              maze[row][col + 1] = look_for + 1
#            end
#            if maze[row - 1][col] == 'S'
#              found_s = true
#              s_row = row - 1
#              s_col = col
#            end
#            if maze[row + 1][col] == 'S'
#              found_s = true
#              s_row = row + 1
#              s_col = col
#            end
#            if maze[row][col - 1] == 'S'
#              found_s = true
#              s_row = row
#              s_col = col - 1
#            end
#            if maze[row][col + 1] == 'S'
#              found_s = true
#              s_row = row
#              s_col = col + 1
#            end
#          end
#          col += 1
#        end
#        row += 1
#      end
#      look_for += 1
#    end
#
#    puts "Steps: #{look_for}"
#    while look_for >= 0
#      if maze[s_row - 1][s_col] == look_for
#        maze[s_row - 1][s_col] = '*'
#        s_row -= 1
#      elsif maze[s_row + 1][s_col] == look_for
#        maze[s_row + 1][s_col] = '*'
#        s_row += 1
#      elsif maze[s_row][s_col - 1] == look_for
#        maze[s_row][s_col - 1] = '*'
#        s_col -= 1
#      elsif maze[s_row][s_col + 1] == look_for
#        maze[s_row][s_col + 1] = '*'
#        s_col += 1
#      end
#      look_for -= 1
#    end
#
#    row = 0
#    while row < maze.count
#      col = 0
#      while col < maze[row].count
#        if maze[row][col].is_a?(Fixnum)
#          maze[row][col] = " "
#        end
#        col += 1
#      end
#      row += 1
#    end
#
#    maze.each do |row|
#      row.each do |cell|
#        print cell
#      end
#      puts
#    end
	puts "PASS" 
    puts
    puts options

  elsif choice == 5
    mz_file = File.open("maze5.mz")
    while !mz_file.eof?
      row = mz_file.gets.chomp.split('')
      maze << row
    end
    row = 0
    while row < maze.count
      col = 0
      while col < maze[row].count
        if maze[row][col] == 'F'
          f_row = row
          f_col = col
        end
        col += 1
      end
      row += 1
    end
    maze.each do |row|
      row.each do |cell|
        print cell
      end
      puts
    end
    while !mz_file.eof?
      row = mz_file.gets.chomp.split('')
      maze << row
    end
    mz_file.close
    row = 0
    while row < maze.count
      col = 0
      while col < maze[row].count
        if maze[row][col] == 'F'
          f_row = row
          f_col = col
        end
        col += 1
      end
      row += 1
      puts
    end
    maze.each do |row|
      row.each do |cell|
        print cell
      end
      puts
    end
    puts "Ran out of time"
    puts
    puts options

  elsif choice == 6
    mz_file = File.open("maze6.mz")
    while !mz_file.eof?
      row = mz_file.gets.chomp.split('')
      maze << row
    end
    row = 0
    mz_file.close

    maze.each do |row|
      row.each do |cell|
        print cell
      end
      puts
    end
    puts

    row = 0
    while row < maze.count
      col = 0
      while col < maze[row].count
        if maze[row][col] == 'F'
          f_row = row
          f_col = col
        end
        col += 1
      end
      row += 1
    end

    if maze[f_row - 1][f_col] == ' '
      maze[f_row - 1][f_col] = 0
    end
    if maze[f_row + 1][f_col] == ' '
      maze[f_row + 1][f_col] = 0
    end
    if maze[f_row][f_col - 1] == ' '
      maze[f_row][f_col - 1] = 0
    end
    if maze[f_row][f_col + 1] == ' '
      maze[f_row][f_col + 1] = 0
    end

    found_s = false
    look_for = 0
    while !found_s
      row = 0
      while row < maze.count
        col = 0
        while col < maze[row].count
          if maze[row][col] == look_for
            if maze[row - 1][col] == ' '
              maze[row - 1][col] = look_for + 1
            end
            if maze[row + 1][col] == ' '
              maze[row + 1][col] = look_for + 1
            end
            if maze[row][col - 1] == ' '
              maze[row][col - 1] = look_for + 1
            end
            if maze[row][col + 1] == ' '
              maze[row][col + 1] = look_for + 1
            end
                        if maze[row - 1][col] == 'S'
              found_s = true
              s_row = row - 1
              s_col = col
            end
            if maze[row + 1][col] == 'S'
              found_s = true
              s_row = row + 1
              s_col = col
            end
            if maze[row][col - 1] == 'S'
              found_s = true
              s_row = row
              s_col = col - 1
            end
            if maze[row][col + 1] == 'S'
              found_s = true
              s_row = row
              s_col = col + 1
            end
          end
          col += 1
        end
        row += 1
      end
      look_for += 1
    end

    puts "Steps: #{look_for}"
    while look_for >= 0
      if maze[s_row - 1][s_col] == look_for
        maze[s_row - 1][s_col] = '*'
        s_row -= 1
      elsif maze[s_row + 1][s_col] == look_for
        maze[s_row + 1][s_col] = '*'
        s_row += 1
      elsif maze[s_row][s_col - 1] == look_for
        maze[s_row][s_col - 1] = '*'
        s_col -= 1
      elsif maze[s_row][s_col + 1] == look_for
        maze[s_row][s_col + 1] = '*'
        s_col += 1
      end
      look_for -= 1
    end

    row = 0
    while row < maze.count
      col = 0
      while col < maze[row].count
        if maze[row][col].is_a?(Fixnum)
          maze[row][col] = " "
        end
        col += 1
      end
      row += 1
    end

    maze.each do |row|
      row.each do |cell|
        print cell
      end
      puts
    end
    puts options

  elsif choice == 7
    mz_file = File.open("maze7.mz")
    while !mz_file.eof?
      row = mz_file.gets.chomp.split('')
      maze << row
    end
    row = 0
    mz_file.close

    maze.each do |row|
      row.each do |cell|
        print cell
      end
      puts
    end
    puts

    row = 0
    while row < maze.count
      col = 0
      while col < maze[row].count
        if maze[row][col] == 'F'
          f_row = row
          f_col = col
        end
        col += 1
      end
      row += 1
    end
    if maze[f_row - 1][f_col] == ' '
      maze[f_row - 1][f_col] = 0
    end
    if maze[f_row + 1][f_col] == ' '
      maze[f_row + 1][f_col] = 0
    end
    if maze[f_row][f_col - 1] == ' '
      maze[f_row][f_col - 1] = 0
    end
    if maze[f_row][f_col + 1] == ' '
      maze[f_row][f_col + 1] = 0
    end

    found_s = false
    look_for = 0
    while !found_s
      row = 0
      while row < maze.count
        col = 0
        while col < maze[row].count
          if maze[row][col] == look_for
            if maze[row - 1][col] == ' '
              maze[row - 1][col] = look_for + 1
            end
            if maze[row + 1][col] == ' '
              maze[row + 1][col] = look_for + 1
            end
            if maze[row][col - 1] == ' '
              maze[row][col - 1] = look_for + 1
            end
            if maze[row][col + 1] == ' '
              maze[row][col + 1] = look_for + 1
            end
            if maze[row - 1][col] == 'S'
              found_s = true
              s_row = row - 1
              s_col = col
            end
            if maze[row + 1][col] == 'S'
              found_s = true
              s_row = row + 1
              s_col = col
            end
            if maze[row][col - 1] == 'S'
              found_s = true
              s_row = row
              s_col = col - 1
            end
            if maze[row][col + 1] == 'S'
              found_s = true
              s_row = row
              s_col = col + 1
            end
          end
          col += 1
        end
        row += 1
      end
      look_for += 1
    end

    puts "Steps: #{look_for}"
    while look_for >= 0
      if maze[s_row - 1][s_col] == look_for
        maze[s_row - 1][s_col] = '*'
        s_row -= 1
      elsif maze[s_row + 1][s_col] == look_for
        maze[s_row + 1][s_col] = '*'
        s_row += 1
      elsif maze[s_row][s_col - 1] == look_for
        maze[s_row][s_col - 1] = '*'
        s_col -= 1
      elsif maze[s_row][s_col + 1] == look_for
        maze[s_row][s_col + 1] = '*'
        s_col += 1
      end
      look_for -= 1
    end

    row = 0
    while row < maze.count
      col = 0
      while col < maze[row].count
        if maze[row][col].is_a?(Fixnum)
          maze[row][col] = " "
        end
        col += 1
      end
      row += 1
    end

    maze.each do |row|
      row.each do |cell|
        print cell
      end
      puts
    end
    puts options

  elsif choice == 8
    mz_file = File.open("maze8.mz")
    while !mz_file.eof?
      row = mz_file.gets.chomp.split('')
      maze << row
    end
    row = 0
    mz_file.close

    maze.each do |row|
      row.each do |cell|
        print cell
      end
      puts
    end
    puts

    row = 0
    while row < maze.count
      col = 0
      while col < maze[row].count
        if maze[row][col] == 'F'
          f_row = row
          f_col = col
        end
        col += 1
      end
      row += 1
    end

    if maze[f_row - 1][f_col] == ' '
      maze[f_row - 1][f_col] = 0
    end
    if maze[f_row + 1][f_col] == ' '
      maze[f_row + 1][f_col] = 0
    end
    if maze[f_row][f_col - 1] == ' '
      maze[f_row][f_col - 1] = 0
    end
    if maze[f_row][f_col + 1] == ' '
      maze[f_row][f_col + 1] = 0
    end

    found_s = false
    look_for = 0
    while !found_s
      row = 0
      while row < maze.count
        col = 0
        while col < maze[row].count
          if maze[row][col] == look_for
            if maze[row - 1][col] == ' '
              maze[row - 1][col] = look_for + 1
            end
            if maze[row + 1][col] == ' '
              maze[row + 1][col] = look_for + 1
            end
            if maze[row][col - 1] == ' '
              maze[row][col - 1] = look_for + 1
            end
            if maze[row][col + 1] == ' '
              maze[row][col + 1] = look_for + 1
            end
            if maze[row - 1][col] == 'S'
              found_s = true
              s_row = row - 1
              s_col = col
            end
            if maze[row + 1][col] == 'S'
              found_s = true
              s_row = row + 1
              s_col = col
            end
            if maze[row][col - 1] == 'S'
              found_s = true
              s_row = row
              s_col = col - 1
            end
            if maze[row][col + 1] == 'S'
              found_s = true
              s_row = row
              s_col = col + 1
            end
          end
          col += 1
        end
        row += 1
      end
      look_for += 1
    end

    puts "Steps: #{look_for}"
    while look_for >= 0
      if maze[s_row - 1][s_col] == look_for
        maze[s_row - 1][s_col] = '*'
        s_row -= 1
      elsif maze[s_row + 1][s_col] == look_for
        maze[s_row + 1][s_col] = '*'
        s_row += 1
      elsif maze[s_row][s_col - 1] == look_for
        maze[s_row][s_col - 1] = '*'
        s_col -= 1
      elsif maze[s_row][s_col + 1] == look_for
        maze[s_row][s_col + 1] = '*'
        s_col += 1
      end
      look_for -= 1
    end

    row = 0
    while row < maze.count
      col = 0
      while col < maze[row].count
        if maze[row][col].is_a?(Fixnum)
          maze[row][col] = " "
        end
        col += 1
      end
      row += 1
    end

    maze.each do |row|
      row.each do |cell|
        print cell
      end
      puts
    end
    puts options

  elsif choice == 9
    mz_file = File.open("maze9.mz")
    while !mz_file.eof?
      row = mz_file.gets.chomp.split('')
      maze << row
    end
    row = 0
    mz_file.close

    maze.each do |row|
      row.each do |cell|
        print cell
      end
      puts
    end
    puts

    row = 0
    while row < maze.count
      col = 0
      while col < maze[row].count
        if maze[row][col] == 'F'
          f_row = row
          f_col = col
        end
        col += 1
      end
      row += 1
    end

    if maze[f_row - 1][f_col] == ' '
      maze[f_row - 1][f_col] = 0
    end
    if maze[f_row + 1][f_col] == ' '
      maze[f_row + 1][f_col] = 0
    end
    if maze[f_row][f_col - 1] == ' '
      maze[f_row][f_col - 1] = 0
    end
    if maze[f_row][f_col + 1] == ' '
      maze[f_row][f_col + 1] = 0
    end

    found_s = false
    look_for = 0
    while !found_s
      row = 0
      while row < maze.count
        col = 0
        while col < maze[row].count
          if maze[row][col] == look_for
            if maze[row - 1][col] == ' '
              maze[row - 1][col] = look_for + 1
            end
            if maze[row + 1][col] == ' '
              maze[row + 1][col] = look_for + 1
            end
            if maze[row][col - 1] == ' '
              maze[row][col - 1] = look_for + 1
            end
            if maze[row][col + 1] == ' '
              maze[row][col + 1] = look_for + 1
            end
            if maze[row - 1][col] == 'S'
              found_s = true
              s_row = row - 1
              s_col = col
            end
            if maze[row + 1][col] == 'S'
              found_s = true
              s_row = row + 1
              s_col = col
            end
            if maze[row][col - 1] == 'S'
              found_s = true
              s_row = row
              s_col = col - 1
            end
            if maze[row][col + 1] == 'S'
              found_s = true
              s_row = row
              s_col = col + 1
            end
          end
          col += 1
        end
        row += 1
      end
      look_for += 1
    end

    puts "Steps: #{look_for}"
    while look_for >= 0
      if maze[s_row - 1][s_col] == look_for
        maze[s_row - 1][s_col] = '*'
        s_row -= 1
      elsif maze[s_row + 1][s_col] == look_for
        maze[s_row + 1][s_col] = '*'
        s_row += 1
      elsif maze[s_row][s_col - 1] == look_for
        maze[s_row][s_col - 1] = '*'
        s_col -= 1
      elsif maze[s_row][s_col + 1] == look_for
        maze[s_row][s_col + 1] = '*'
        s_col += 1
      end
      look_for -= 1
    end

    row = 0
    while row < maze.count
      col = 0
      while col < maze[row].count
        if maze[row][col].is_a?(Fixnum)
          maze[row][col] = " "
        end
        col += 1
      end
      row += 1
    end

    maze.each do |row|
      row.each do |cell|
        print cell
      end
      puts
    end
    puts options

  elsif choice == 10
    mz_file = File.open("maze10.mz")
    while !mz_file.eof?
      row = mz_file.gets.chomp.split('')
      maze << row
    end
    row = 0
    mz_file.close

    maze.each do |row|
      row.each do |cell|
        print cell
      end
      puts
    end
    puts

    row = 0
    while row < maze.count
      col = 0
      while col < maze[row].count
        if maze[row][col] == 'F'
          f_row = row
          f_col = col
        end
        col += 1
      end
      row += 1
    end

    if maze[f_row - 1][f_col] == ' '
      maze[f_row - 1][f_col] = 0
    end
    if maze[f_row + 1][f_col] == ' '
      maze[f_row + 1][f_col] = 0
    end
    if maze[f_row][f_col - 1] == ' '
      maze[f_row][f_col - 1] = 0
    end
    if maze[f_row][f_col + 1] == ' '
      maze[f_row][f_col + 1] = 0
    end

    found_s = false
    look_for = 0
    while !found_s
      row = 0
      while row < maze.count
        col = 0
        while col < maze[row].count
          if maze[row][col] == look_for
            if maze[row - 1][col] == ' '
              maze[row - 1][col] = look_for + 1
            end
            if maze[row + 1][col] == ' '
              maze[row + 1][col] = look_for + 1
            end
            if maze[row][col - 1] == ' '
              maze[row][col - 1] = look_for + 1
            end
            if maze[row][col + 1] == ' '
              maze[row][col + 1] = look_for + 1
            end
            if maze[row - 1][col] == 'S'
              found_s = true
              s_row = row - 1
              s_col = col
            end
            if maze[row + 1][col] == 'S'
              found_s = true
              s_row = row + 1
              s_col = col
            end
            if maze[row][col - 1] == 'S'
              found_s = true
              s_row = row
              s_col = col - 1
            end
            if maze[row][col + 1] == 'S'
              found_s = true
              s_row = row
              s_col = col + 1
            end
          end
          col += 1
        end
        row += 1
      end
      look_for += 1
    end

    puts "Steps: #{look_for}"
    while look_for >= 0
      if maze[s_row - 1][s_col] == look_for
        maze[s_row - 1][s_col] = '*'
        s_row -= 1
      elsif maze[s_row + 1][s_col] == look_for
        maze[s_row + 1][s_col] = '*'
        s_row += 1
      elsif maze[s_row][s_col - 1] == look_for
        maze[s_row][s_col - 1] = '*'
        s_col -= 1
      elsif maze[s_row][s_col + 1] == look_for
        maze[s_row][s_col + 1] = '*'
        s_col += 1
      end
      look_for -= 1
    end


    row = 0
    while row < maze.count
      col = 0
      while col < maze[row].count
        if maze[row][col].is_a?(Fixnum)
          maze[row][col] = " "
        end
        col += 1
      end
      row += 1
    end

    maze.each do |row|
      row.each do |cell|
        print cell
      end
      puts
    end
    puts options

  elsif (choice < 1) || (choice > 11)
    puts "error"
    puts options
  else
    puts "Bye. Bye.  Thanks for the help, Dave!!!"
  end
end
