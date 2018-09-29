import formaciones.*
import vagones.*
import locomotoras.*

class Deposito {
	var formaciones= []
	var locomotorasSueltas = []
	
	method agregarFormacion(formacion){
		
		formaciones.add(formacion)
		
	}
	
	
	method vagonMasPesado(){
		return formaciones.filter{formacion=> formacion.max{vagon=> vagon.peso()}} 
		
	}
	
	
	method conductorExperimentado(){
		
		return formaciones.any{formacion =>formacion.compleja()}
		
	}
	
	method agregarLocomotora(locomotora){
		locomotorasSueltas.add(locomotora)
	}
	
	method permitirMoverse(formacion){
		
		
	if (!formacion.puedeMoverse()){
		
		if (locomotorasSueltas.any{locomotora=>locomotora.arrastreUtil()}>= locomotora.arrastreFaltante()){
			
			locomotorasSueltas.add(locomotora)
		}
	
	}
		
	}
		
}
