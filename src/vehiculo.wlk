import destinos.*
import mensajeros.*


object bici {
	
	const peso = 5
	
	method pesoVehiculo(){
		return peso
	}
	
}

object camion{
	
	var acoplados = 0
	const peso = acoplados * 500
	
	method cantAcoplados(cant){
		
		acoplados = cant
	}
	
	method pesoVehiculo(){
		
		return peso
	}
}
