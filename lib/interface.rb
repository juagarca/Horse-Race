balance = 100

# 1. Print welcome and the horses names
puts 'Welcome to the horse race!'
puts '--------------------------'

horses = %w[Clip Clap Clop]
puts 'These are our horses of the day:'
horses.each_with_index do |horse, index|
  puts "#{index + 1} - #{horse}"
end

# 2. Get user's bet
# 2.a. Ask the user for the horse they want to win
puts 'Which horse do you want to put a bet on?'
choice = gets.chomp.to_i
horse_chosen = horses[choice - 1]

# 3. Run the race 🐴
winning_horse = horses.sample

if horse_chosen == winning_horse
  puts 'You won'
else
  puts 'You lost'
end

# 3.a If the user won, increase £50
# 3.b If the user lost, decrease £10

# 4. Print results
