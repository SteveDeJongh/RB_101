# Command line calculator.

# Ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output result

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
LANGUAGE = 'en'

def messages(message, lang="en")
  MESSAGES[lang][message]
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def integer?(num)
  num.to_i.to_s == num
  # Integer(num) rescue false
end

def float?(num)
  # num.to_f.to_s == num #=> doesn't work for "1."
  Float(num) rescue false
end

def number?(input)
  integer?(input) || float?(input)  
end

def operation_to_message(op)
  word = case op
            when '1'
             "Adding"
            when '2'
             "Subtracting"
            when '3'
             "Multiplying"
            when '4'
             "Dividing"
          end
    x = "code not to be returned"
    word
end

prompt messages('welcome')
# parentheses can be removed around method calls, even when passing arguments.
name = ''
loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt (messages('valid_name'))
  else
    break
  end
end

prompt("Hi #{name}!")

loop do # main loop
  number1 = ''
  loop do
    prompt(messages('first_num'))
    number1 = Kernel.gets().chomp()
    if number?(number1)
      break
    else
      prompt(messages('not_valid_num'))
    end
  end

  number2 = ''
  loop do
    prompt(messages('second_num'))
    number2 = Kernel.gets().chomp()
    if number?(number2)
      break
    else
      prompt(MESSAGES['en']['not_valid_num'])
    end
  end
  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) Add
    2) Subtract
    3) Multiply
    4) Divide
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES['en']['operator_input_error'])
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")
  # operator = Kernel.gets().chomp()
  result = case operator
           when "1"
             number1.to_i() + number2.to_i()
           when "2"
             number1.to_i() - number2.to_i()
           when "3"
             number1.to_i() * number2.to_i()
           when "4"
             number1.to_f() / number2.to_f()
           end

  prompt("The result is #{result}!")

  prompt(MESSAGES['en']['play_again?'])
  answer = gets().chomp()
  break unless answer.downcase.start_with?('y')
end

prompt(MESSAGES['en']['thank_you_bye'])
