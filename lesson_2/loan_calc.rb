# SET loan = input loan amount
# SET apr = input apr percentage 1 - 15.5
# SET total_interest = apr / 100 * loan
# SET dur = input loan duration, 12, 24, 36, 48 or 60
  #  divide loan by months
# SET premium_per_month = loan/dur
# PRINT premium_per_month
# SET interest_per_month = total_interest/dur
# PRINT interest_per_month
# SET total_premium = premium_per_month + interest_per_month
# SET years = dur / 12
# PRINT total_premium for PRINT years

def prompt(message)
    puts "#{message}"
end

def total_apr(input_apr, loan_amount)
    input_apr / 100 * loan_amount
end

def monthly(loan_amount, duration_months)
    loan_amount / duration_months
end

def monthly_apr(total_of_apr, duration_months)
    total_of_apr / duration_months
end
    
def duration_years(duration_months)
    duration_months / 12
end

prompt('WELCOME TO THE AUTO LOAN CALCULATOR')

loop do
  loan = ' '
  loop do
    prompt('Enter loan amount:')
    loan = gets.chomp.to_f
  
    if loan > 0 && loan < 1000001
      break
    else
      prompt('Please choose the loan amount:')
    end
  end
  
  apr = ' '
  loop do
    prompt('Enter annual percentage rate (APR), between 1 and 18.5:')
    apr = gets.chomp.to_f
    
    if apr >= 0 && apr <=  18.5
      break
    else
      prompt('Please choose a valid annual percentage rate between 1 and 18.5:')
    end
  end
  
  dur = ' '
  loop do
    prompt('Enter duration of loan in months- 12, 24, 36, 48 or 60?  :')
    dur = gets.chomp.to_f
    
    if dur % 12 == 0 && dur <= 60 && dur != 0
      break
    else
      prompt('Please enter valid length of loan:')
    end
  end
  
  
  
  total_interest = total_apr(apr, loan)
  monthly_interest = monthly_apr(total_interest, dur)
  n
  if apr == 0
    prompt('You have an interest free loan!')
  else
    prompt("The total paid in interest is $#{'%.2f' % total_interest}, and the monthly interest is $#{'%.2f' % monthly_interest}")
  end
  
  premium = monthly(loan, dur) + total_interest
  duration = duration_years(dur)
  prompt("The total monthly premium is #{'%.2f' % premium} for #{duration.to_i} years") 
  puts '__________________________'
  prompt("Do you need to calculate another loan? Y or N:")
  again = Kernel.gets.chomp
  break unless again.downcase().start_with?("y")
end


