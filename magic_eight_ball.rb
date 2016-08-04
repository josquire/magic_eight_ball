
#add easter egg key words that go to new set of answers
require "pry"
@answer = ['Yes', 'No', 'Ask me later', 'Go for it','haha..not on your life']
@easter_egg = ['reset_answers','add_answers','print_answers']
@answer_again = @answer.clone


def question
  puts "Type a Yes/No question to get an answer or type 'Quit' to end."
  @question = gets.strip.downcase

    if @question == "quit"
      puts "To scared to know more about your future... Goodbye then!"
      exit
    else
      the_answer
    end
end

def the_answer
  if @easter_egg.include? @question
    puts "Would you like to add a better answer? (y/n)"
    yes_no = gets.strip.downcase

    if yes_no == 'y'
    yes_answer

    else yes_no == 'n'
      puts "Its wise you know Magic eight ball already has all the answers."
      question
    end

  else
    ans_output = @answer.sample
    puts "Magic eight ball very wisely says #{ans_output}, and dont you dare question the eight ball."
    question
  end
end

def yes_answer
  puts "What answer do you want to add?"
  better_ans = gets.strip

  if @answer.include? better_ans
    puts "Magic Eight ball already has that, would you like to see a list of answers? (y/n)"
    yes_or_no = gets.strip.downcase

      if yes_or_no == 'y'
        @answer_again.each do |new_array|
          puts new_array
        end
        yes_answer
      else
        the_answer
      end

  elsif  @answer_again << better_ans
  question

  else yes_no == 'n'
    puts "Its wise you know Magic eight ball already has all the answers."
    question
  end
end

question
