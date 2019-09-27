import wollok.game.*
import hector.*

class Maiz {
	
		var foto = "corn_baby.png"
		var adulto = false	
			
			method image() {return foto}
			
			method regar()  {adulto = true ; foto="corn_adult.png"}

			method listaParaCosecha()	{return adulto}
			
			
			method valor()	{return 150}										
}

class Trigo {
		
		
		var foto = "wheat_0.png"
		var evolucion = 0
		
			method image()	{return foto}
			
			method regar()	{if(evolucion==0){foto = "wheat_1.png";evolucion+=1}
							 else if(evolucion==1){foto = "wheat_2.png";evolucion+=1}
							 else if(evolucion==2){foto = "wheat_3.png";evolucion+=1}	
							}

			method listaParaCosecha(){
				return evolucion >=2 
			}
			
			method valor()	{return (evolucion-1)*100}

}
class Tomaco{
	
		var property position = null
			
			method image(){return "tomaco.png"}
			
			method regar(){position.up(1)}

			method listaParaCosecha(){return true}
			
			method valor() {return 80}
}





// getObjectsIn(posicion)