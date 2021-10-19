# (2) Write a program called sorted_words.rb.
# It should prompt the user for words and add each to an array.
# The user should be able to add as many words as they like,
# until they just hit enter to return a blank word.
# Then sort the array using the sort method and print it out.

def sorted_words
  puts "Type as many words as you wish.\nSeparate each word with a space.\nHit enter when you have finished."
  words = gets.chomp.scan(/\w+/)
  puts 'Here are your words:'
  puts words.sort
end

sorted_words
