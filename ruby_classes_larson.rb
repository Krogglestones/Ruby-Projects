############################################################
#
# Name:        Craig Larson
# Assignment:  Ruby Classes
# Date:        4/21/17
# Class:       CIS 282
# Description: Implement the basics of Classes.
#
############################################################

class Person
  def initialize (first_name, last_name, age, hair_color, eye_color)
    @first_name = first_name
    @last_name = last_name
    @age = age
    @hair_color = hair_color
    @eye_color = eye_color
  end

  def first_name
    return @first_name
  end
  def first_name=(first_name)
    @first_name = first_name
  end

  def last_name
    return @last_name
  end
  def last_name=(last_name)
    @last_name = last_name
  end

  def age
    return @age
  end
  def age=(age)
    @age = age
  end

  def hair_color
    return @hair_color
  end
  def hair_color=(hair_color)
    @hair_color = hair_color
  end

  def eye_color
    return @eye_color
  end
  def eye_color=(eye_color)
    @eye_color = eye_color
  end

  def to_s
    return "I am #{@first_name} #{@last_name}, I'm #{@age} years old, my hair color is #{@hair_color} and my eye color is #{@eye_color}."
  end

end
craig = Person.new("Craig","Larson",40,"none","red")
marge = Person.new("Marge","Simpson",36,"blue","black")
puts
puts craig
puts marge
puts

###############################################################################

class Address

  def initialize(line1,line2,city,state,zip)
    @line1 = line1
    @line2 = line2
    @city = city
    @state = state
    @zip = zip
  end

  def line1
    return @line1
  end
  def line1=(line1)
    @line1 = line1
  end

  def line2
    return @line2
  end
  def line2=(line2)
    @line2 = line2
  end

  def city
    return @city
  end
  def city=(city)
    @city = city
  end

  def state
    return @state
  end
  def state=(state)
    @state = state
  end

  def zip
    return @zip
  end
  def zip=(zip)
    @zip = zip
  end

  def to_s
    return "#{@line1}\n#{@line2}\n#{@city}, #{@state}  #{@zip}"
  end

end
craig_address = Address.new("Craig Larson","6420 N. Adams", "Deer Park","WA", "99113")
marge_address = Address.new("Marge Simpson","742 Evergreen Terrace","Springfield","KY","40069")
puts
puts craig_address
puts
puts marge_address
puts

###############################################################################

class Character

  def initialize(name, race, hit_points, gold)
    @name = name
    @race = race
    @hit_points = hit_points
    @weapons = []
    @gold = gold
    @clothing = []
  end

  def new_weapon(add_weapon)
    @weapons << add_weapon
  end
  def remove_weapon(drop_weapon)
    @weapons.delete(drop_weapon)
  end

  def new_clothing(add_clothing)
    @clothing << add_clothing
  end
  def remove_clothing(drop_clothing)
    @clothing.delete(drop_clothing)
  end

  def name
    return @name
  end
  def name=(name)
    @name = name
  end

  def race
    return @race
  end
  def race=(race)
    @race = race
  end

  def hit_points
    return @hit_points
  end
  def hit_points=(hit_points)
    @hit_points = hit_points
  end

  def gold
    return @gold
  end
  def gold=(gold)
    @gold = gold
  end

  def to_s
    return " NAME: #{@name}\n RACE: #{@race}\n HIT POINTS: #{@hit_points}\n GOLD: #{@gold}\n\tWeapons:\n\t\t#{@weapons.join("\n\t\t")}\n\tClothing: \n\t\t#{@clothing.join("\n\t\t")}"
  end
end

homer = Character.new("Homer Simpson","yellow","1500","500")
homer.new_weapon("board with a nail")
homer.new_weapon("nuclear power")
homer.remove_weapon("board with a nail")
homer.new_clothing("White Shirt")
homer.new_clothing("Blue Pants")
homer.new_clothing("Tie")
homer.new_clothing("Shoes")
homer.remove_clothing("Blue Pants")
puts homer
puts
craig = Character.new("Caig Larson","white",2000,420)
craig.new_weapon("Hammer")
craig.new_weapon("Pepper Spray")
craig.new_weapon("Gun")
craig.remove_weapon("Gun")
craig.new_clothing("T-shirt")
craig.new_clothing("Blue Jeans")
craig.new_clothing("Socks")
craig.new_clothing("Shoes")
craig.remove_clothing("Blue Jeans")
puts craig
