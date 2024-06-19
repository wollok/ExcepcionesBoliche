class ExceptionBolicheLleno inherits Exception (message = "no hay lugar"){
	
}

class Boliche {
	
	const capacidadMaxima = 1000
	var cantidadGente 
	
	method entrar(cantidad) {
		if(self.lugarDisponible() < cantidad)
			throw new ExceptionBolicheLleno()
//			throw new Exception(message = "no hay lugar")			
		cantidadGente = cantidadGente + cantidad
	}
	
	method lugarDisponible() = capacidadMaxima - cantidadGente
}


