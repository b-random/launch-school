VALID_CHOICES = %w(rock paper scissors lizard spock)
                     # this is another way to write an array
ABBREVIATED_CHOICES = %w(ro pa sc li sp)

def prompt(message)
  puts("#{message}")
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

def winner?(first, second)
  (firtst == 'rock' && second == 'scissors') || (first == 'rock' && second == 'lizard') ||
  (first == 'paper' && second == 'rock') || (first == 'paper' && second == 'spock') ||
  (first == 'scissors' && second == 'paper') || (first == 'scissors' && second == 'lizard') ||
  (first == 'lizard' && second == 'paper') || (first == 'lizard' && second == 'spock') ||
  (first == 'spock' && second == 'rock') || (first == 'spock' && second == 'scissors')
end

def results(player, computer)
  if winner?(player, computer)
    prompt('Boom! You won this round!')
  if winner?(computer, player)
    prompt('Ouch! You lost this round.')
  else
    prompt("It's a tie...\nNo points awarded.")
  end
end

def score_keeper(result, score_keeper)
  if result == 'Boom! You won this round!'
    score_keeper[:player] += 1
  elsif result == 'Ouch! You lost this round.'
    score_keeper[:computer] += 1
  end
end

def score_output(score_keeper)
  prompt("Curent score: #{score_keeper}")
  if score_keeper[:player] == 5
    prompt("WINNER! WINNER! CHICKEN DINNER! YOU BEAT THE EVIL COMPUTER!\nIf I were you, I would quit while I was ahead...")
  elsif score_keeper[:computer] == 5
    prompt("LOSER! WTF? You lost to a damn computer!\n Vengeance is one hell of a motivator...")
  end
end

loop do
  prompt("It's time to play Rock, PAPER, SCISSOR, LIZARD, SPOCK!!!!!!!!! \n  The best out of five rounds, WINS!! \n  You can type out the full name, or just the first two letters.")
  
  scores = { player:  0, computer:  0 }
  until scores.value?(5)
  
    choice = ' '
    loop do
    
      prompt("Choose your weapon: #{VALID_CHOICES.join(", ")}")
      choice = gets.chomp
    
      if VALID_CHOICES.include?(choice)
        break
      elsif  ABBREVIATED_CHOICES.include?(choice)
       choice = change_initial(choice)
      else
        prompt("Whatever you just did, didn't work.  Give it another shot, genius.")
      end
    end
  
  
    computer_choice = VALID_CHOICES.sample
  
    prompt("You chose #{choice} and the computer chose #{computer_choice}w")
  
    winner = results(choice, computer_choice)
  
    prompt("#{winner}")
  
    score_keeper(winner, scores)
  
    score_output(scores)
  end
  
  prompt('Play another round? Enter Y or N...')
  again = gets.chomp
  break unless again.downcase.start_with('y')
  end
end
