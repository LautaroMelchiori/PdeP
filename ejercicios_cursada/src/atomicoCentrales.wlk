
object centralHidroelectrica {
    method produccion(caudalRio) = 2 * 1000000 * caudalRio
}
object burns {
    var cantidadDeVarillasDeUranio = 1

    method setVarillas(cantidad) {
        cantidadDeVarillasDeUranio = cantidad
    }

    method produccion(ciudadDondeSeUbica) = 0.1 * 1000000 * cantidadDeVarillasDeUranio

    method esContaminante() = cantidadDeVarillasDeUranio > 20
}
object exbosque{
    var capacidadEnToneladas = 1

    method setCapacidad(cantidad) {
        capacidadEnToneladas = cantidad
    }

    method produccion(ciudadDondeSeUbica) = (0.5 + capacidadEnToneladas * ciudadDondeSeUbica.riquezaDelSuelo()) * 1000000

    method esContaminante() = true
}
object elSuspiro{
    var turbinas = #{turbina}

    method produccion(ciudadDondeSeUbica) = turbinas.sum({turbina => turbina.produccion(ciudadDondeSeUbica.velocidadDelViento())})

    method esContaminante() = false
}

object turbina {
    method produccion(velocidadDelViento) = 0.2 * 1000000 * velocidadDelViento
}