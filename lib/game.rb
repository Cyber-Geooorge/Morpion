class Game


    def check_rows(array)
      3.times do |i|
        if array[i] == array[i+1] && array[i] == array[i+2] && array[i] != "_"
         return true
        end
        i += 2
      end
    end
  
  
    def check_cols(array)
      3.times do |i|
        if array[i] == array[i+3] && array[i] == array[i+6] && array[i] != "_"
          return true
        end
      end
    end
  
  
    def check_diags(array)
      if ((array[0] == array[4] && array[0] == array[8] && array[0] != "_" ) || (array[2] == array[4] && array[2] == array[6] && array[2] != "_"))
        return true
      end
    end
  
  
    def all_cells_filled?(array)
      if !array.include? '_'
        return true
      end
    end
  
  
    def end_game(array, count_rounds, player1, player2)
      if all_cells_filled?(array) == true || check_cols(array) == false || check_diags(array) == false || check_rows(array) == false
        puts "Egalité !"
        return true
      elsif all_cells_filled?(array) == true || check_cols(array) == true || check_diags(array) == true || check_rows(array) == true
        puts "Fin de la partie !"
        if count_rounds.even?
          puts "#{player2.name} a gagné !"
        elsif !count_rounds.even?
          puts "#{player1.name} a gagné !"
        end
        return true
      else
        return false
      end 
    end
  end