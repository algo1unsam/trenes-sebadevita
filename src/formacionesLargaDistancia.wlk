import formaciones.*


class FormacionLargaDistancia inherits Formacion{
	
	const origen = null
	const destino = null
	
	method estaBienArmada(){
		
	return self.capacidadPasajeros()/50 >= self.cantidadDeBanos()	
		
	}
			
	override method velMaxPermitida(){
		if (self.uneDosCiudadesGrandes())
		return 200
		else
		return 150
	}
	
	method uneDosCiudadesGrandes(){
		return origen.esGrande() and destino.esGrande()
		 
	}
		

}
class FormacionAltaVelocidad inherits FormacionLargaDistancia {

	override method estaBienArmada() {
		return super() and self.siTodosSonLivianos() and self.velMax() >= 250
	}

	override method velMaxPermitida() {
		return 400
	}

}