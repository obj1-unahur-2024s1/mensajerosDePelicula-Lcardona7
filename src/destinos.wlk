import mensajeros.*
import vehiculo.*

object puenteDeBrooklyn {
	
	method puedePasar(mensajero){
		return mensajero.pesoTotal() < 1000
	}
}

object laMatrix {
	
	method puedePasar(mensajero){
		
		return mensajero.puedeLLamar()
	}
}
