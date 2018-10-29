def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  number = rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  user_input = gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = 0 
  2.times do 
    number = deal_card
    sum += number
  end
    display_card_total(sum)
    return sum
    
end

def hit?(sum)
  # code hit? here
  prompt_user
  user_input = get_user_input
  new_sum = 0
  if user_input == "h"
    new_sum = sum + deal_card
    return new_sum
    elsif user_input != "h" && user_input != "s"
      invalid_command
      prompt_user
      new_sum = sum
      return new_sum
    else
      new_sum = sum
      return new_sum
  end
  
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  sum = initial_round
  new_sum = hit?(sum)
  display_card_total(new_sum)
  
  until new_sum > 21
    new_sum += hit?(sum)
  end
    end_game(new_sum)
end
    
