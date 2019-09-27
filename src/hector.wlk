import wollok.game.*
import cultivos.*

object hector {
	
	var property position = new Position(x = 3, y = 3)
	const property image = "player.png"
	const property plantasParaVender = []
		
	
		method agregarPlantaParaVender(planta){
			if(planta.listaParaCosecha()){plantasParaVender.add(planta)}
		}
		
		method plantasParaRegar(){
			return game.getObjectsIn(position)
		}
}