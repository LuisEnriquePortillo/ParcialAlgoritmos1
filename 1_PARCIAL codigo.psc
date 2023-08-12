Algoritmo PARCIAL_1
	//Datos de entrada:
	//Ingresar la cantidad de dinero
	//Proceso: calcular si es <= a 100,000 entonces 80% es para la empresa y 20% para socios
	//si es > 100,000 y < 120,000 se distribuyen los primeros 100,000 y el resto se dividen para socios
	//si es > 120,000 se reparten 100,000 luego 20,000 y el resto es para un socio especial
	//Salida:
	//Mostrar las cantidades repartidas para cada entidad
		Definir seguro, socios, especial, cantidad, resto como Real
		
		Escribir "[Ingrese la cantidad por favor:] "
		Leer cantidad
		
		Si cantidad <= 100000 Entonces
			seguro = cantidad * 0.8
			socios = cantidad * 0.2 / 2
		Sino
			Si cantidad > 100000 y cantidad < 120000 Entonces
				seguro = 100000 * 0.8
				socios = 100000 * 0.2 / 2
				resto = (cantidad - 100000) / 2
				socios = socios + resto
			Sino
				seguro = 100000 * 0.8
				seguro = seguro_pro + 20000 * 0.8
				resto = cantidad - 120000
				especial = resto
			Fin Si
		Fin Si
		
		Escribir "[========Monto para la empresa===============]" 
		Escribir seguro
		Escribir "[==========Monto para socios=================]" 
		Escribir socios
		Si cantidad > 120000 Entonces
			Escribir "[========Monto para contrato especial========]" 
			Escribir especial
		Fin Si
		
FinAlgoritmo
