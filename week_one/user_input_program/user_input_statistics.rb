#comment
ages = ['32', '15', '40']
puts ages
puts ages [0]
puts ages [1]
puts ages [2]
puts

puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'
if name == 'Jaden'
    puts 'What a lovely name!'
else 
    puts "What\'s good homie?!"
end
puts
command = ''
while command != 'bye'
puts command
command = gets.chomp
end
