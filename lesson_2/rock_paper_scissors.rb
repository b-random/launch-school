VALID_CHOICES = %w(rock paper scissors lizard spock)
                     # this is another way to write an array
$player_score = 0
$computer_score = 0

def prompt(message)
  Kernel.puts(message.to_s)
end


def win?(first, second) 
  (first == 'rock' && second == 'scissors') || (first == 'rock' && second == 'lizard') ||
  (first == 'paper' && second == 'rock') || (first == 'paper' && second == 'spock') ||
  (first == 'scissors' && second == 'paper') || (first == 'scissors' && second == 'lizard') ||
  (first == 'lizard' && second == 'paper') || (first == 'lizard' && second == 'spock') ||
  (first == 'spock' && second == 'scissors') || (first == 'spock' && second == 'rock')
end



def display_results(player, computer)
  if win?(player, computer)
    prompt('You win this round!')  
    $player_score = $player_score + 1
    prompt("You have won #{$player_score} match(s)")
  elsif win?(computer, player)
    prompt('The computer wins this round!')
    $computer_score = $computer_score + 1
    prompt("Computer has won #{$computer_score} match(s)")
  else
    prompt('Looks like a tie')
    end
end 

def winner(p_s, c_s)
  if p_s == 5
    $player_score = 0
    $computer_score = 0
    prompt('YOU WON THE BEST OF 5 MATCHES!  YOU ARE THE GRAND CHAMPION OF THE UNIVERSE!!!')
    prompt("YOU COULD PLAY AGAIN... OR, YOU CAN QUIT WHILE YOU'RE ON TOP- LIKE A BITCH!")
  elsif c_s == 5
    $player_score = 0
    $computer_score = 0
    prompt('LOSER! WTF?  YOU LET A COMPUTER BEAT YOU FIVE TIMES... SAD DAY FOR HUMANS.')
    prompt('TRY AGAIN?... VENGEANCE IS A POWERFUL MOTIVATOR!')
  end
end
    
    
Kernel.puts(); Kernel.puts("IT'S TIME TO PLAY ROCK-PAPER-SCISSORS-LIZARD-SPOCK"); Kernel.puts()   
  

loop do  
  choice = ' '
  loop do
    prompt("Choose 'r' for rock, 'p' for paper, 'sc' for scissors, 'l' for lizard or 'sp' for spock...")
    choice = Kernel.gets().chomp()
    # choose one prompt could be replaced with the constnt
    # example: prompt("choose one: #{VALID_CHOICES.join(', '}")
    if choice == "r"
      choice = "rock"
      break
    elsif choice == "p"
      choice = "paper"
      break
    elsif choice == "sc"
      choice = "scissors"
      break
    elsif choice == "l"
      choice = "lizard"
      break
    elsif choice == "sp"
      choice = "spock"
      break
    else
      prompt("That's not a valid choice.")
    end
  end
  
  computer_choice = VALID_CHOICES.sample
  
  puts '_________________________________________'
  
  prompt("You chose '#{choice}' and the COMPUTER chose '#{computer_choice}' ")
    
  display_results(choice, computer_choice)
  puts '_________________________________________'

  winner($player_score, $computer_score) 
  
  prompt("Do you want to play again? Y or N")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end


