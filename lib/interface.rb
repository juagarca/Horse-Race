balance = 100

puts 'Welcome to the horse race!'
puts '--------------------------'

horses = %w[Clip Clap Clop Brett]

while balance >= 10
  # 1. Print the horses names
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
  puts "You chose #{horse_chosen}"

  # 3. Run the race 🐴
  winning_horse = horses.sample

  # Print results
  puts "The winning horse is #{winning_horse}"

  if horse_chosen == winning_horse
    # If the user won, increase £50
    balance += 50
    puts "You won, your new balance is £#{balance}"
  else
    # If the user lost, decrease £10
    balance -= 10
    puts "You lost, your new balance is £#{balance}"
  end
end
# Make it loop until the balance is inferior than £10