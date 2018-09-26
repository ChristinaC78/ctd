def is_float?(s)
  if s.to_i.to_s == s
    return true
  end
  s == s.to_f.to_s
end

def main
 int_array = []
 string_array = []
 
 loop do
     #continue to ask for a number
     puts "Please enter a number or string"
     value= gets.chomp
     
#if value.to_i.to_s == input || value.to_f.to_s == value
    #int_array << value.to_f

     if value == ''

         break
     end
     if is_float?(value)

       int_array << value
       string_array << value
     end

   break if value == '' 
   #this ends the loop if input is empty
 end
 # output data

 puts "The count equals " + int_array.length.to_s
 sum = 0.0
 int_array.each {|value| sum+=value.to_f }
 puts "The string is " + string_array.length.to_s
 puts "Your array is " + string_array.join('-')
 puts "The sum equals " + sum.to_s
 puts "The average equals " + (sum/int_array.length).to_s
end

main if __FILE__ == $PROGRAM_NAME
