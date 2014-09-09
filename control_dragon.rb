require "./BabyDragon.rb"

puts "Hello, what would you like to call your dragon?"
dragon_name = gets.chomp
puts "Initializing #{dragon_name}"
dragon = Dragon.new(dragon_name)

while true
  puts "Your options are: feed, toss, walk, put_to_bed, rock, quit"
  puts "What would you like to do?"
  input_str = gets.chomp.downcase

  if input_str == "quit"
    break
  else
    dragon.dispatch(input_str)
  end

end
