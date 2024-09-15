object camionDeVerduras {
  var kilometraje = 700000
  var cajones = 12

  method setearCajones(cantidad) {
    cajones = cantidad
  }

  method pesoCarga() = cajones * 50

  method velocidadMaxima() = 80 - self.pesoCarga() / 500
}

object scannion5000 {
    const capacidadMaxima = 5000
    const velocidadMaxima = 140

    method pesoCarga(densidad) = capacidadMaxima * densidad
}

object cerealitas {
    const nivelDeDeterioro = 0

    method velocidadMaxima() {
        if (nivelDeDeterioro < 10)
            return 40
        else
            return 60 - nivelDeDeterioro
    }
    
}