object cazador {
    const pesoPropio = 70
    method peso() {
      return pesoPropio + pistolaCaza.peso ()
    }
}

object pistolaCaza {
    var cantidadBalas = 6
    method cantidadBalas () = cantidadBalas
    const pesoBala = 0.5
    var peso = (cantidadBalas * pesoBala)
    method agregarBalas (cantidad) {
        cantidadBalas = cantidadBalas + cantidad
        self.actualizarPeso ()
    }
    method disparar (cantidad) {
        cantidadBalas = cantidadBalas - cantidad
        self.actualizarPeso ()
    }
    method actualizarPeso () {
        peso = (cantidadBalas * pesoBala)
    }
    method peso () = peso
}