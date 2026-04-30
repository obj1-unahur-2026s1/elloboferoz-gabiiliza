object feroz {
  const pesoInicial = 10
  var peso = 10
  method estaSaludable () {
    return peso.between(20, 150) }
  method come (comida) {
    peso = peso + (comida.peso()/10)
  }
  method corre () {
    peso = peso-1
  }
  method aumentarPeso (cantidad) {
    peso = peso + cantidad
  }
  method bajarPeso (cantidad) {
    peso = peso - cantidad
  }
  method crisis () {
    peso = pesoInicial
  }
}