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

def hit?(number)
  prompt_user
  get_user_input
    if get_user_input == "h"
      deal_card
    if get_user_input == "s"
      break
    else
      invalid_command
    end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
