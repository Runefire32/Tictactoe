class Player
  #TO DO : la classe a 2 attr_accessor, son nom, sa valeur (X ou O). Elle a un attr_writer : il a gagné ?
  
    attr_accessor :player_name, :player_team
    attr_accessor :player_points
 
  
    #TO DO : doit régler son nom, sa valeur, son état de victoire

    def initialize(player_name, team)

    	@player_name = gets.chomp
    	@player_team = ""
    	player_points = 0
    	

    end

end