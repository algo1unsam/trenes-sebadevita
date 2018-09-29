class VagonPasajeros {
	
	var largo = 10
	var anchoUtil = 3
	var pasajeros
	
	method cantidadPasajeros(){
	
	if (anchoUtil<=2.5){
		pasajeros = largo * 8
		return pasajeros
		} else{
			pasajeros = largo * 10
			return pasajeros
		
		
	} 

	
	
	}
	
	method peso(){
		return pasajeros * 80
		
		
	}
}


class VagonCarga{
	
	var cargaMaxima = 5000
	
	method cantidadPasajeros ()= 0
	
	method peso(){
		
		return cargaMaxima + 160
		
	}
	
}