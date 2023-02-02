balance = 100

# 1. Print welcome and the horses names
puts 'Welcome to the horse race!'
puts '--------------------------'

horses = %w[Clip Clap Clop Brett]
puts 'These are our horses of the day:'
horses.each_with_index do |horse, index|
  puts "#{index + 1} - #{horse}"
end

# 2. Get user's bet
# 2.a. Ask the user for the horse they want to win
puts 'Which horse do you want to put a bet on?'
choice = gets.chomp.to_i
horse_chosen = horses[choice - 1]

# Display the name of the horse that the user bet on

# 3. Run the race 🐴
winning_horse = horses.sample

# Print results

if horse_chosen == winning_horse
  # If the user won, increase £50
  puts 'You won'
else
  # If the user lost, decrease £10
  puts 'You lost'
end

# Make it loop until the balance is inferior than £10