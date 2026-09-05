object tito {
  var peso = 70
  var bebidaActual = terere
  var dosis = 10  
  
  method consumir(cantidad, bebida) {
    bebidaActual = bebida
    dosis = cantidad
  }

  method bebidaActual() = bebidaActual
  method velocidad() {return bebidaActual.rendimiento(dosis, self) * 490 / peso}
  method potencia() {2.max(3)}
  method peso() = peso
  method cambiarPeso(unNumero) {peso = unNumero}
  
  method esFeliz() = self.velocidad() >= 7
}

object whisky {

  method rendimiento(dosis, unDeportista) {
    return 0.9 ** dosis
  }
}

object terere {
  
  method rendimiento(dosis, unDeportista) {
    return (0.1 * dosis).max(1)
  }

}

object cianuro {

  method rendimiento(dosis, unDeportista) {
    return if (unDeportista.peso() > 70) unDeportista.peso() * 0.01 + dosis else 0 
  }
}

object pepe {
  var peso = 80
  var bebidaActual = whisky
  var dosis = 10
  var edad = 30  
  
  method consumir(cantidad, bebida) {
    bebidaActual = bebida
    dosis = cantidad
  }

  method bebidaActual() = bebidaActual
  method velocidad() {return bebidaActual.rendimiento(dosis, self) * 490 / peso - if(edad>30) 10 else 0}
  method potencia() {2.max(3)}
  method peso() = peso
  method cambiarPeso(unNumero) {peso = unNumero}
  method cumplirAnios() {edad += 1}
}