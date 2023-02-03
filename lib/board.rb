require 'pry'

class Board
  
  def display_board(array)
    puts "  1 2 3"
    puts "A|#{array[0]}|#{array[1]}|#{array[2]}|"
    puts "B|#{array[3]}|#{array[4]}|#{array[5]}|"
    puts "C|#{array[6]}|#{array[7]}|#{array[8]}|"
    puts
  end

 
  def modify_cell(cell, symbol, array)
    case cell
    when 'A1'
      array[0] = symbol
    when 'A2'
      array[1] = symbol
    when 'A3'
      array[2] = symbol
    when 'B1'
      array[3] = symbol
    when 'B2'
      array[4] = symbol
    when 'B3'
      array[5] = symbol
    when 'C1'
      array[6] = symbol
    when 'C2'
      array[7] = symbol
    when 'C3'
      array[8] = symbol
    end
    display_board(array)
    return array
  end
end
