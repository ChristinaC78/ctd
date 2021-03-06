def play
    9.times { |n| @cells[n+1]=" "}
    draw_board
    9.times do |n|
      loop do
        letter = n.even? ? 'X' : 'O'
        puts "#{n.even? ? 'Player 1' : 'Player 2'} => Where do you want to place your #{letter}"
        move = gets.chomp.to_i
        if (1..9).include? move
          if "XO".include? @cells[move]
            puts "That space is already taken, please try again..."
          else
            @cells[move] = letter 
            draw_board
            puts "Player #{letter == 'X'? '1' : '2' } won!" if won? == "win"
            break
          end
        else
          puts "To play, please enter a number 0 through 9"
        end
      end
      break if won? == "win"
    end
    puts "It's a tie!" if won? == "no winner yet"
  end
  
  def won?
    winning_numbers = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]
    xs = @cells.select { |k,v| v == "X"}.keys
    os = @cells.select { |k,v| v == "O"}.keys
    winning_numbers.each do |nums|
      return "win" if (nums - xs).empty?
      return "win" if (nums - os).empty?
    end
    "no winner yet"  
  end
end