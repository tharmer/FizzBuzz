require 'benchmark'

=begin
  class Fizz
    puts "Enter a number to FizzBuzz"
    i = gets
    1.upto(i.to_i) do |i|
      if (i % 5 == 0) && (i % 3 == 0)
          puts 'FizzBuzz'
      elsif
          (i % 3 == 0)
          puts "Fizz"
      elsif
          (i % 5 == 0)
          puts "Buzz"
      else
          puts i
      end
    end  
  end  
=end
 
 class Buzz
  1.upto(100) do |i|
     if (i % 5 == 0) and (i % 3 == 0)
       puts "FizzBuzz"
     elsif i % 5 == 0
       puts "Buzz"
     elsif i % 3 == 0
       puts "Fizz"
     else
       puts i
     end
   end
end
  
 
  Benchmark.bm do |x|
    x.report { Buzz.new }
  end
  
  #FizzBuzz is not complex to register a result for CPU
  #this inline calculation is just enough to register a blip
  #puts Benchmark.measure { 1987650.times { 3.14159 * 3.14159 } }