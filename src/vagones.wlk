class VagonPasajeros {
	const property banos = 2
	var largo = 10
	var anchoUtil = 3
	var pasajeros = 0
	
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
	const property banos = 0
	var cargaMaxima = 5000
	
	method cantidadPasajeros ()= 0
	
	method peso(){
		
		return cargaMaxima + 160
		
	}
	
}