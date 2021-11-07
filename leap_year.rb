# (4) Write a program, leap_year.rb. It will ask the user for a starting year and an ending year,
# and it will then print out all the leap years between them,
# including the starting or ending year if those are leap years.
# The rules for leap years are: A leap year is divisible by 4,
# except for years that are divisible by 100 -- those aren't leap years
# -- except for years that are divisible by 400, which ARE leap years.

def leap_years
  starting_year = 0
  ending_year = 0
  while ending_year <= starting_year
    puts 'Enter a starting year:'
    starting_year = valid_year
    puts 'Enter an ending year:'
    ending_year = valid_year
    puts "Ending year should be bigger than starting year!\n\n" if ending_year <= starting_year
  end
  years = filter_years(starting_year, ending_year)
  puts years == [] ? 'No leap years!' : 'Leap years:'
  years.each { |year| puts years.last == year ? "#{year}!" : "#{year}, " }
end

def valid_year
  until /\A\s*\d+\s*\z/.match?(user_input = gets.chomp)
    puts 'Enter a valid year!'
  end
  user_input.to_i
end

def filter_years(starting_year, ending_year)
  (starting_year..ending_year).filter do |year|
    next unless year % 4 == 0

    if year % 100 == 0
      year % 400 == 0 ? year : next
    end
    year
  end
end

leap_years
