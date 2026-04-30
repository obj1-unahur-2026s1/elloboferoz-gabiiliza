import feroz.* 
import cazador.*


object caperucita {
    const pesoPropio = 60
    method peso() {
        return pesoPropio + canasta.peso ()
    }
}

object abuelita {
  method peso() = 50
}

object canasta {
    var cantidadManzanas = 6
    method cantidadManzanas () = cantidadManzanas
    const pesoManzana = 0.2
    var peso = (cantidadManzanas * pesoManzana)
    method agregarManzanas (cantidad) {
        cantidadManzanas = cantidadManzanas + cantidad
        self.actualizarPeso ()
    }
    method perderManzanas (cantidad) {
        cantidadManzanas = cantidadManzanas - cantidad
        self.actualizarPeso ()
    }
    method actualizarPeso () {
        peso = (cantidadManzanas * pesoManzana)
    }
    method peso () = peso
    
}

object historia {
    method contarHistoria () {
        feroz.corre ()
        feroz.come(abuelita)
        canasta.perderManzanas(1) 
        feroz.come(caperucita)
        feroz.come (cazador)
    }
}