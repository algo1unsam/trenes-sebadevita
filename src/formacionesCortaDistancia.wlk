import formaciones.*

class FormacionCortaDistancia inherits Formacion{
	
	method estaBienArmada(){
		return not self.compleja()
		
	}
	
	override method velMaxPermitida(){
		
		return 60
		 
		
	}
}