import mensajeros.*
import destinos.*
import vehiculo.*

object empresa {
	
	var mensajeros = [roberto, chuck, neo]
	var facturacion = 0
	var paquetesPendientes = []
	
	method contratar(pj){
		
		mensajeros.add(pj)
	}
	
	method despedir(pj){
		
		mensajeros.remove(pj)
	}
	
	method echarATodos(){
		
		mensajeros.clear()
	}
	
	method esGrande(){
		
		return mensajeros.size() > 2
	}
	
	method puedeEntregar(paq){
		
		return paq.puedeSerEntregadoPor(mensajeros.first())
	}
	
	method pesoDelUltimo(){
		
		return mensajeros.last().peso()
	}
	
	method algunoPuedeEntregar(paq){
		
		return mensajeros.any({x => paq.puedeSerEntregadoPor(x)})
	}
	
	method quienesPuedenLLevar(paq){
		
		return mensajeros.filter({x => paq.puedeSerEntregadoPor(x)})
	}
	
	method tieneSobrepeso(){
		return mensajeros.sum({x => x.peso()}) > 500
	}
	
	method enviarPaquete(paq){
		
		if (mensajeros.any({x => paq.puedeSerEntregadoPor(x)})){
			facturacion += paq.precio()
		}else{
			self.agregarPaquetePendiente(paq)
		}
	}
	
	method agregarPaquetePendiente(paq){
		paquetesPendientes.add(paq)
	}
	
	
	
	method facturacion(){
		return facturacion
	}
	
	method enviarPendienteMasCaro() {
		const paq = paquetesPendientes.max({ paq => paq.precio() })
		if (self.algunoPuedeEntregar(paq)) {
			paquetesPendientes.remove(paq)
		}
	}	
	
	
}


object paquetito{
	
	const estaPago = true
	var destino = ""
	var precio = 50
	
	method precio(){
		return precio
	}
	
	method elegirDestino(dest){
		
		destino = dest
	}
	method puedeSerEntregadoPor(mensajero) = estaPago and destino.dejarPasar(mensajero)
	
	
}

object paqueteViajero{
	
	var destinos = []
	
	var property precio = destinos.size() * 100
	
	var estaPago = true
	
	method puedeSerEntregadoPor(mensajero) = estaPago and destinos.all({x => x.dejarPasar(mensajero)})
	
	method agregarDestinos(dest){
		
		destinos.add(dest)
	}
	
	method precio(){
		return precio
	}
}
