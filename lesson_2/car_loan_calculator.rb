# Car loan calculator assignment

# GET Loan amount
# GET Annual Percentage RAte
# GET Loan duration (years?)

# SET monthly interest rate from APR
# SET Loan duration in months

def prompt(message)
  puts "=>#{message}"
end

def valid_number?(num)
  num.to_i.to_s == num
end

def valid_float?(num)
  Float(num) rescue false
end

prompt 'Welcome to the car loan calculator!'

loop do # main loop
  loan_amount = ''
  loop do
    prompt 'Please enter the loan amount.'
    loan_amount = gets.chomp
    if valid_number?(loan_amount)
      break
    else
      prompt 'Please return a valid amount.'
    end
  end

  annual_percentage_rate = ""
  loop do
    prompt 'What is your APR?'
    annual_percentage_rate = gets.chomp
    if valid_float?(annual_percentage_rate)
      break
    else
      prompt 'Please enter a valid rate.'
    end
  end

  loan_duration_years = ""
  loop do
    prompt 'What is you term length in year?'
    loan_duration_years = gets.chomp
    if valid_number?(loan_duration_years)
      break
    else
      prompt 'Please enter a valid duration.'
    end
  end

  monthly_apr = ((annual_percentage_rate.to_f / 100) / 12)
  loan_duration_months = loan_duration_years.to_i * 12

  # puts monthly_apr
  # puts loan_duration_months

  monthly_payment = (loan_amount.to_i * (monthly_apr.to_f / (1 - (1 + monthly_apr.to_f)**(-loan_duration_months.to_i))))

  puts monthly_payment

  prompt "Your monthly payment will be #{monthly_payment}"

  prompt 'Would you like to calculate again? "y" to continue.'
  go_again = gets.chomp
  if go_again.downcase != "y"
    break
  end
end
