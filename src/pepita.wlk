object pepita {
	var energia = 100
	
	method energia(cant){
		energia = cant
	}

	method energia(){
		return energia
	}

	method estaCansada() {
		return energia < 50
	}
	
	method estaFeliz(){
		return self.energiaEntre(500,1000)
	}
	
	method energiaEntre(limiteBajo, limiteAlto){
			return ((energia > limiteBajo) && (energia < limiteAlto))
	}
	
	method cuantoQuiereVolar(){
		var kms = energia / 5
		if(self.energiaEntre(300,400)){
			kms = kms + 10
		}
		if(energia%20 == 0){
			kms = kms + 15
		}
		return kms
	}
	
	method salirAComer(){
		self.vola(5)
		self.come(alpiste)
		self.vola(5)
	}
	
	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	
	method haceLoQueQuieras(){
		if(self.estaCansada()){
			self.come(alpiste)
		}
		if(self.estaFeliz()){
			self.vola(8)
		}
	}
	
}

object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}

object mijo {
	var mojado = false
	
	method mojarse(){
		mojado = true
	}
	
	method secarse(){
		mojado = false
	}
	
	method energiaQueOtorga(){
		var energia
		if(mojado){
			energia = 15
		}else{
			energia = 20
		}
		return energia
	}
}	
object canelones{
	var tieneSalsa = false
	var tieneQueso = false
	
	method ponerQueso(){
		tieneQueso = true
	}
	method ponerSalsa(){
		tieneSalsa = true
	}
	method sacarQueso(){
		tieneQueso = false
	}
	method sacarSalsa(){
		tieneSalsa = false
	}
	method energiaQueOtorga(){
		var energia = 5
		if(tieneSalsa){
			energia = energia + 5
		}
		if(tieneQueso){
			energia = energia + 7
		}
		return energia
	}
}
	
object roque{
	method entrenar(){
		pepita.vola(10)
		pepita.come(alpiste)
		pepita.vola(5)
		pepita.haceLoQueQuieras()
	}	
}	














