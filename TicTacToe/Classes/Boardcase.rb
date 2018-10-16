class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur (X, O, ou vide), ainsi que son numéro de case)


  	attr_accessor :name, :value
  
    def initialize(name, value)
        #TO DO doit régler sa valeur, ainsi que son numéro de cell
    	@index_cell = name.to_i
    	@value = value
 	 end
  
 	 def to_s
 	   #TO DO : doit renvoyer la valeur au format string
 	 end

end
