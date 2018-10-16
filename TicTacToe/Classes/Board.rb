class Board


  
  include Enumerable
  #TO DO : la classe a 1 attr_accessor, une array qui contient les BoardCases

    attr_accessor :cells, :choice


  def initialize
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans une array qui est l'attr_accessor de la classe

    
    # En ajoutant les cases 0 , la case 1 a pour index 1 et la 9 a pour index 9

    cell_0 = BoardCase.new(0, "nil")
    cell_1 = BoardCase.new(1, "1")
    cell_2 = BoardCase.new(2, "2")
    cell_3 = BoardCase.new(3, "3")
    cell_4 = BoardCase.new(4, "4")
    cell_5 = BoardCase.new(5, "5")
    cell_6 = BoardCase.new(6, "6")
    cell_7 = BoardCase.new(7, "7")
    cell_8 = BoardCase.new(8, "8")
    cell_9 = BoardCase.new(9, "9")
    
    @cells = [cell_0, cell_1, cell_2, cell_3, cell_4, cell_5, cell_6, cell_7, cell_8, cell_9, ]



  end

  def show
  #TO DO : afficher le plateau

    puts "\n\n\n\n"
    puts "\n       |     |     "
    puts "    #{cells[1].value}  |  #{cells[2].value}  |  #{cells[3].value}  "
    puts "  _____|_____|_____"
    puts "       |     |     "
    puts "    #{cells[4].value}  |  #{cells[5].value}  |  #{cells[6].value}  "
    puts "  _____|_____|_____"
    puts "       |     |     "
    puts "    #{cells[7].value}  |  #{cells[8].value}  |  #{cells[9].value}  "
    puts "       |     |     "
    puts "  \n\n"

  end

  def play(choice, team, current_player)
    #TO DO : une méthode qui change la BoardCase jouée en fonction de la valeur du joueur (X, ou O)
        
        @choice = choice.to_i

        # verifie que la case est libre, renvoi un boolean
        def cell_playable?(choice)                                                            
                  if cells[choice].value == "X" || cells[choice].value == "O"
                    return false
                    else
                    return true
                  end
        end


            def change_cell_value(choice, team, current_player)
              # Si la case est jouable
                if cell_playable?(choice)
                      # dans la methode turn, je défini que team = current_player.player_team (assigné X ou O)
                      # on incrémente la valeur de team dans la case choisie
                      # Si current_player.player_team = X -> Jouer X sur la case choisie 
                    if team == "X"
                         @cells[choice].value = team
                    else # sinon jouer O 
                        @cells[choice].value = team  
                    end 
                  
                  
                else # Si la case n'est pas jouable
                  puts "La place est prise choisis en une autre stlp "
                  choice = gets.chomp.to_i
                  
                end
            end


            # Lance la méthode
            change_cell_value(choice, team, current_player)

 




  end

  def victory?
# Défini toutes les conditions de victoires possible, si la valeur de 3 cellules déterminées sont égales -> victoire

    if cells[1].value == cells[2].value && cells[2].value == cells[3].value
        
      return true 

    elsif cells[4].value == cells[5].value && cells[5].value == cells[6].value
        
      return true

    elsif cells[7].value == cells[8].value && cells[8].value == cells[9].value 
        
      return true

    elsif cells[1].value == cells[4].value && cells[4].value == cells[7].value
        
      return true

    elsif cells[2].value == cells[5].value && cells[5].value == cells[8].value
        
      return true

    elsif cells[3].value == cells[6].value && cells[6].value == cells[9].value
        
      return true

    elsif cells[3].value == cells[5].value && cells[5].value == cells[7].value
        
      return true

    elsif cells[1].value == cells[5].value && cells[5].value == cells[9].value
        
      return true

    end
  end

end