object gimenez {

	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var property sueldo = 15000
	var totalAcumulado = 0

	//method sueldo(){
		//return sueldo
	//}
	
	method cobrarSueldo() {
		totalAcumulado = totalAcumulado + self.sueldo()
	}

	method totalCobrado() {
		return totalAcumulado
	}

}

object baigorria {

	var property sueldo = 15000
	var  deuda = 0
	var  dinero = 0

	method cobrarSueldo() {
		dinero = self.totalDinero() + sueldo
		self.tratarDePagarDeuda()
	}
	
	method tratarDePagarDeuda() {
		if(self.totalDinero() <= self.totalDeuda()){
			deuda = self.totalDeuda() - self.totalDinero()
			self.totalDinero(0)
		}
		else{
			self.pagarDeuda()
			self.totalDeuda(0)
			}
	}
	method pagarDeuda(){
		dinero = self.totalDinero() - self.totalDeuda()
	}

	method gasto(unValor) {
		deuda = self.totalDeuda() + unValor
		self.tratarDePagarDeuda()
	}

	method totalDeuda() {
		return deuda
	}
	method totalDinero() {
		return dinero
	}
	method totalDinero(unValor) {
		dinero = unValor
	}
	method totalDeuda(unValor) {
		deuda = unValor
	}
	

}

object galvan {

	var dinero = 300000

	method dinero() {
		return dinero
	}

	method pagarA(empleado) {
		dinero = dinero - empleado.sueldo()
		empleado.cobrarSueldo()
	}

}

