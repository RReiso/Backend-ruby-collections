# Write a program which asks for a person's first name, then middle, then last. It should store each of these parts in an array. Finally, it should greet the person using their full name. Call the program full_name.rb.

def greet
  names = []
  %w[first middle last].each do |word|
    puts "What is your #{word} name?"
    unless (user_input = gets.chomp) == ''
      names << user_input
    end
  end
  if names.empty?
    puts 'You have not entered your name!'
  else
    print 'Hello,'
    names.each { |name| print " #{name}" }
    puts '!'
  end
end

greet
