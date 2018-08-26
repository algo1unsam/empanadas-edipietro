object gimenez {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var sueldo = 15000
	var sumasueldos=0
	
	method sueldo() { return 15000 }
    method sueldo(nuevoValor) { sueldo = nuevoValor.sueldo()}
    method cambiosueldo(nuevosueldo){sueldo=nuevosueldo }
    method mostrarsueldo(nuevosueldo){return nuevosueldo}
    method	cobrarSueldo(){sumasueldos+=sueldo}
    method totalcobrado(){return sumasueldos}
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var deuda=0
	var dinerorestante
	var sueldo=0

	method venderEmpanada() {cantidadEmpanadasVendidas += 1	}
	method sueldo(){ sueldo= cantidadEmpanadasVendidas * montoPorEmpanada self.saldarDeuda()}
	method cambiomontoempanada(nuevomonto)	{montoPorEmpanada=nuevomonto}
	method cobrarSueldo(){return sueldo}
    method saldarDeuda(){if(sueldo>=deuda) self.cubrirDeuda()}
    method cubrirDeuda(){deuda=0}
    method setearDeuda(){return deuda}
   	method gastar(cuanto){deuda+=cuanto		dinerorestante= sueldo - deuda}
	method totalDeuda(){return deuda}
	method totalDinero(){return dinerorestante}
}

object galvan {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) { dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
}
