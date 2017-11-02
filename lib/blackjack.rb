def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
    puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(card_total)
  prompt_user
  move = get_user_input
  until move == "h" || move == "s"
      invalid_command
      prompt_user
      move = get_user_input
  end
  if move == "h"
      card_total += deal_card
  elsif move == "s"
      card_total
  end
end

def invalid_command
  puts "Please enter valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  new_total = hit?(total)
  display_card_total(new_total)
  new_total >  21 ? end_game(new_total) : hit?(new_total)
end
    
