numbers=[*1..20]

numbers.each do |number|
  if number %15==0
    puts "FizzBuzz"
  elsif number %5 == 0
    puts "Buzz"
  elsif number %3 ==0
     puts "Fizz"
  else
    puts number
  end
end

