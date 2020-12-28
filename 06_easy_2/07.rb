# 07 - Pet Shelter
class Pet
  def initialize(species, name)
    @species = species
    @name = name
  end

  def to_s
    "a #{@species} named #{@name}"
  end
end

class Owner
  attr_reader :name, :number_of_pets

  def initialize(name)
    @name = name
    @number_of_pets = 0
  end

  def adopt_pet
    @number_of_pets += 1
  end
end

class Shelter
  def initialize
    @adoptions = Hash.new([])
    @unadopted_pets = []
  end

  def adopt(owner, pet)
    if owner
      owner.adopt_pet
      @adoptions[owner] += [pet]
    else
      @unadopted_pets << pet
    end
  end

  def print_adoptions
    @adoptions.each do |owner, pets|
      puts "#{owner.name} has adopted the following pets:"
      pets.each { |pet| puts pet }
      puts
    end
    puts 'The Animal Shelter has the following unadopted pets.'
    @unadopted_pets.each { |pet| puts pet }
    puts
  end

  def number_of_unadopted_pets
    @unadopted_pets.size
  end
end

butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')
asta         = Pet.new('dog', "Asta")
laddie       = Pet.new('dog', "Laddie")
fluffy       = Pet.new('cat', "Fluffy")
kat = Pet.new('cat', "Kat")
ben = Pet.new('cat', "Ben")
chatterbox = Pet.new('parakeet', "Chatterbox")
bluebell = Pet.new('parakeet', "Bluebell")

# The Animal Shelter has the following unadopted pets:
# a dog named Asta
# a dog named Laddie
# a cat named Fluffy
# a cat named Kat
# a cat named Ben
# a parakeet named Chatterbox
# a parakeet named Bluebell

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.adopt(nil, asta)
shelter.adopt(nil, laddie)
shelter.adopt(nil, kat)
shelter.adopt(nil, ben)
shelter.adopt(nil, fluffy)
shelter.adopt(nil, chatterbox)
shelter.adopt(nil, bluebell)
shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."
puts "The Animal Sheldter has has #{shelter.number_of_unadopted_pets} unadopted pets."

# P Hanson has adopted the following pets:
# a cat named Butterscotch
# a cat named Pudding
# a bearded dragon named Darwin

# B Holmes has adopted the following pets:
# a dog named Molly
# a parakeet named Sweetie Pie
# a dog named Kennedy
# a fish named Chester

# P Hanson has 3 adopted pets.
# B Holmes has 4 adopted pets.
