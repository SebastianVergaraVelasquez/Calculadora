


Algoritmo Calculadora
	
	
	Definir cantidadNumeros Como Entero;
	
	
	Dimension numerosEscogidos[10];
	Dimension Pares[10];
	
	Repetir
		
	posicionPares =1;
	nuevoNumero ='';
	posicion = 1;
	operacionEscogida =0;
	continuarOperaciones ='';
	continuaroperando =Falso;
	
	

	
	Escribir 'Calculadora';
	Escribir '';
	Escribir 'Va a ingresar los numeros que desea operar';
	Escribir '';
	
	Mientras Completo == Falso
	
			Escribir 'Ingrese el numero ',posicion;
			Leer numerosEscogidos[posicion];
			si numerosEscogidos[posicion] MOD 2 =0 Entonces
				Pares[posicionPares] = numerosEscogidos[posicion];
				posicionPares = posicionPares +1;
			FinSi
			posicion = posicion + 1;
			
			Repetir
				
				Escribir 'Desea ingresar un nuevo numero';
				Escribir 'Escriba si o no';
				Leer nuevoNumero;
			Hasta Que nuevoNumero == 'no' o nuevoNumero == 'si' ;
		
			si nuevoNumero = 'no' Entonces
				Completo = Verdadero;
			FinSi
			
			si nuevoNumero = 'si' Entonces
				Completo = Falso;
			FinSi
			
			
	FinMientras
	
	Repetir
		Escribir 'Escoja que operación desea realizar';
		Escribir '1. Sumar';
		Escribir '2. Restar';
		Escribir '3. Multiplicar';
		Escribir '4. Dividir los numeros pares que haya ingresado';
		Escribir 'Otro valor para salir';
		Leer operacionEscogida;
		
	Hasta Que operacionEscogida >= 0;
	
	Segun operacionEscogida
		1: 
			Total = Sumar(numerosEscogidos, posicion);
			Escribir 'El resultado de la operacion es ',Total;
			
		2:
			Total = Restar(numerosEscogidos, posicion);
			Escribir 'El resultado de la operacion es ',Total;
		3: 
			Total = Multiplicacion(numerosEscogidos, posicion);
			Escribir 'El resultado de la operacion es ',Total;
		4: 
			Escribir 'Tenga en cuenta que si alguno de los valores ingresados es 0, este será tomado como 1';
			Esperar Tecla;
			Total = Division(Pares, posicionPares);
			Escribir 'El resultado de la operacion es ',Total;
	FinSegun
	
	Escribir 'Desea hacer otra operacion';
	Escribir '';
	
	Repetir
		Escribir 'Escribir si o no';
		Leer continuarOperaciones;
	Hasta Que continuarOperaciones == 'si' o continuarOperaciones == 'no'
	
	si continuarOperaciones == 'si' Entonces
		continuarOperando = Verdadero;
		Completo = Verdadero;
	SiNo
		continuaroperando = Falso
		
	FinSi
	
	Hasta Que continuaroperando = falso
	
	FinAlgoritmo

Funcion Total <-Sumar (numerosEscogidos, posicion)
	Total =0;
	Para i<-1 Hasta posicion-1 Con Paso 1 Hacer
		Total = Total + numerosEscogidos[i];
	FinPara
FinFuncion

	
Funcion Total <- Restar (numerosEscogidos, posicion)
	Total=0;
	
	Para i<-1 Hasta posicion-2 Con Paso 1 Hacer
		si i = 1 Entonces
			Total = numerosEscogidos[i]-numerosEscogidos[i+1];
			Escribir Total;
		SiNo
			Total = Total - numerosEscogidos[i+1];
			Escribir Total;
		FinSi
		
	FinPara
FinFuncion

Funcion Total <- Multiplicacion (numerosEscogidos, posicion)
	
	Para i<-1 Hasta posicion-2 Hacer
		si	i = 1 Entonces
			Total = numerosEscogidos[i]*numerosEscogidos[i+1];
		SiNo
			Total = Total*numerosEscogidos[i+1];
		FinSi
	FinPara

FinFuncion

Funcion Total <- Division (Pares, posicionPares)
	Para i<-1 Hasta posicionPares-1 Hacer
		si Pares[i] = 0 Entonces
			Pares[i] = 1;
		FinSi
	FinPara
	
	para i<-1 Hasta posicionPares-2 Hacer
		si	i = 1 Entonces
			Total = Pares[i]/Pares[i+1];
		SiNo
			Total = Total/Pares[i+1];
		FinSi
	FinPara
FinFuncion



