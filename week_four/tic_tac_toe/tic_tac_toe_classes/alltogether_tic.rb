    @cells = Hash.new
    9.times do |n| 
      @cells[n += 1] = n += 0
    end
    
def draw_board
    puts "... TIC TAC TOE ..."
    puts "_#{@cells[1]}_|_#{@cells[2]}_|_#{@cells[3]}_"
    puts "_#{@cells[4]}_|_#{@cells[5]}_|_#{@cells[6]}_"
    puts " #{@cells[7]} | #{@cells[8]} | #{@cells[9]} "
end

draw_board