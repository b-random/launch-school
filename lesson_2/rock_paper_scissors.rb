VALID_CHOICES = %w(rock paper scissors lizard spock).freeze
ABBREVIATED_CHOICES = %w(ro pa sc li sp).freeze

def prompt(message)
  puts(message)
end

def change_initial(convert)
  case convert
  when 'ro' then 'rock'
  when 'pa' then 'paper'  
  when 'sc' then 'scissors'  
  when 'li' then 'lizard'
  when 'sp' then 'spock'  
  end
end

def players_choice_display(player_one, player_two)
  prompt("You chose #{player_one} and the computer chose #{player_two}")
end

def choose_your_weapon
  choice = ' '
  loop do
    
    prompt("Choose your weapon: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp
    
    if VALID_CHOICES.include?(choice)
      return choice
    elsif ABBREVIATED_CHOICES.include?(choice)
      choice = change_initial(choice)
      return choice
    else
      prompt("Whatever you just did, didn't work.  Give it another shot, genius.")
    end
  end
end

def winner?(first, second)
  (first == 'rock' && second == 'scissors') || (first == 'rock' && second == 'lizard') ||
  (first == 'paper' && second == 'rock') || (first == 'paper' && second == 'spock') ||
  (first == 'scissors' && second == 'paper') || (first == 'scissors' && second == 'lizard') ||
  (first == 'lizard' && second == 'paper') || (first == 'lizard' && second == 'spock') ||
  (first == 'spock' && second == 'rock') || (first == 'spock' && second == 'scissors')
end

def results(player, computer)
  if winner?(player, computer)
    'Boom! You won this round!'
  elsif winner?(computer, player)
    'Ouch! You lost this round.'
  else
    "It's a tie...\nNo points awarded."
  end
end

def display_results(result, score_keeper)
  if result == 'Boom! You won this round!'
    score_keeper[:player] += 1
  elsif result == 'Ouch! You lost this round.'
    score_keeper[:computer] += 1
  end
end

def output_score(score_keeper)
  prompt("You have #{score_keeper[:player]} point(s) and the evil machine has #{score_keeper[:computer]} point(s)")
  if score_keeper[:player] == 5
    prompt("WINNER! WINNER! CHICKEN DINNER! YOU BEAT THE EVIL COMPUTER!\nIf I were you, I would quit while I was ahead...")
  elsif score_keeper[:computer] == 5
    prompt("LOSER! WTF? You lost to a damn computer!\n Vengeance is one hell of a motivator...")
  end
end

prompt("It's time to play ROCK, PAPER, SCISSOR, LIZARD, SPOCK!!!!!!!!!")
prompt('The best out of five rounds, WINS!!')
prompt('You can type out the full name, or just the first two letters.')

loop do
  
  scores = { player:  0, computer:  0 }
  until scores.value?(5)
    player_choice = choose_your_weapon
    
    computer_choice = VALID_CHOICES.sample
    
    players_choice_display(player_choice, computer_choice)
    
    winner = results(player_choice, computer_choice)
    
    prompt("#{winner}")
    
    display_results(winner, scores)
    
    output_score(scores)
  end
 
  prompt('Play another round? Enter Y or N...')
  play_again = gets.chomp
  break unless play_again.downcase.start_with?('y')
end

