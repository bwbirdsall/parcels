require './lib/parcels'

@parcel

def main_menu
  puts "Press 'a' to add a package"
  puts "Press 'x' to quit"

  main_choice = gets.chomp
  if main_choice == 'a'
    add_parcel
  elsif main_choice == 'x'
    puts "Good-bye!"
  else
    puts "Sorry, wrong button."
    main_menu
  end
end

def add_parcel
  puts "What is the parcel's length?"
  length = gets.chomp.to_i
  puts "What is the parcel's width?"
  width = gets.chomp.to_i
  puts "What is the parcel's height?"
  height = gets.chomp.to_i
  puts "What is the parcel's weight?"
  weight = gets.chomp.to_i
  @parcel = Parcel.new(length, width, height, weight)
  parcel_menu
end

def parcel_menu
  puts "Choose an option. Press 'v' for Volume and 'c' for Cost to Ship and 'n' for New Parcel and 'q' for Quit"

  parcel_choice = gets.chomp
  if parcel_choice == 'v'
    puts @parcel.volume
    parcel_menu
  elsif parcel_choice == 'c'
    puts @parcel.cost_to_ship
    parcel_menu
  elsif parcel_choice == 'n'
    add_parcel
  elsif parcel_choice == 'q'
    puts "Done!"
  else
    puts "Wrong Button"
    parcel_menu
  end
end

main_menu
