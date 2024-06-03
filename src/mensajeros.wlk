import vehiculo.*
import destinos.*

object roberto{
	
	var peso = 0	
	const llamar = false
	
	method puedeLLamar(){
		return llamar
	}
	
	method cuantoPesa(kg){
		
		peso = kg
	}
	
	method pesoNuevo(vehiculo){
		
		peso = peso + vehiculo.pesoVehiculo()
	}
	
	method pesoTotal(){
		
		return peso
	}
}

object chuck{
	
	const peso = 80
	const llamar = true
	
	method puedeLLamar(){
		return llamar
	}	
	
	method pesoTotal(){
		return peso
	}	
	
}

object neo{
	
	const peso = 0
	var llamar = false
	
	method cargarCredito(){
		llamar = true
	}
	method puedeLLamar(){
		return llamar
	}	
	
	method pesoTotal(){
		return peso
	}		
	
}

