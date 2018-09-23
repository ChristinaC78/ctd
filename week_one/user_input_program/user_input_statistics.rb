def is_float?(s)
  if s.to_i.to_s == s
    return true
  end
  s == s.to_f.to_s
end

def main
 stat= []

 loop do
     puts "Please enter a number"
     value= gets.chomp

     if value == ''

         break
     end
     if is_float?(value)

       stat << value
     end

   break if value == '' 
 end
 # output data

 puts "The count equals " + stat.length.to_s
 sum = 0.0
 stat.each {|value| sum+=value.to_f }
 puts "The sum equals " + sum.to_s
 puts "The average equals " + (sum/stat.length).to_s
end

main if __FILE__ == $PROGRAM_NAME
