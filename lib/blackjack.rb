def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand 1..11
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first_draw = deal_card
  second_draw = deal_card
  card_total = first_draw + second_draw
  display_card_total(card_total)
  return card_total
end


def hit?(card_total)
  prompt_user 
  user_input = get_user_input 
  if user_input == "h"
    card_total += deal_card
  elsif user_input == "s"
    card_total
    invalid_command
  end
end

def invalid_command
   puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  hit?
  
end
    
