numberes=[*1..200]

numberes.each do |number|
  n1=number%3.0
  n2=number%5.0
  if n1==0
    if n2==0
      puts "FizzBuzz"
    else
      puts "Fizz"
    end
  elsif n2==0
      puts "Buzz"
  else
    puts number
  end
end

