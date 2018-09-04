object gimenez {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var sueldo = 15000
	var sumasueldos=0
	
	// (DEBY) acá no debería devolver sueldo? 
	method sueldo() { return  15000 }
    
    method cambiosueldo(nuevosueldo){sueldo=nuevosueldo }
    // (DEBY) mostrar?!?!!? jajaajja, mostrar no mostramos nada, nada mas
    // llamameos a un método que devuelve un valor
    // perdón por la sutileza pero es importante entender la diferencia
    method mostrarsueldo(nuevosueldo){return nuevosueldo}
    method	cobrarSueldo(){sumasueldos+=sueldo}
    method totalcobrado(){return sumasueldos}
}
object baigorria {
	var cantidadEmpanadasVendidas = 1000
	var montoPorEmpanada = 15
	var deuda=0
	var saldo=0
	method venderEmpanada() {cantidadEmpanadasVendidas += 1	}
	method sueldo()=cantidadEmpanadasVendidas * montoPorEmpanada
	/*method saldarDeuda(){
		if(saldo>=deuda){saldo= saldo-deuda 
			deuda=0	}
		else 
		deuda= saldo - deuda  
		deuda=0	}*/
	method cambiomontoempanada(nuevomonto)	{montoPorEmpanada=nuevomonto}
	method cobrarSueldo(){saldo+=self.sueldo()}	
   	method gastar(cuanto){
   		deuda= 0.min (saldo - cuanto)
   		saldo = 0.max (saldo -cuanto)
   	}
	method totalDeuda(){return deuda}
	method totalDinero(){return saldo}
}
object galvan {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) { dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
}
