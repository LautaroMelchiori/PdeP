import src.atomicoCentrales.*

object region {
    var ciudades = #{springfield, albuquerque}

    method centralesMasProductoras() = ciudades.map({ciudad => ciudad.centralMasProductora()})
}

object springfield {
    var centralesEnergeticas = #{burns, exbosque, elSuspiro}
    var velocidadDelViento = 10
    var riquezaDelSuelo = 0.9
    var necesidadEnergetica = 10000000

    method velocidadDelViento() = velocidadDelViento
    method riquezaDelSuelo() = riquezaDelSuelo

    method setNecesidadEnergetica(necesidad) {
        necesidadEnergetica = necesidad
    }

    method produccionDe(unaCentral) = unaCentral.produccion(self) 

    method centralesContaminantes() = centralesEnergeticas.filter({central => central.esContaminante()})

    method produccionDeCentrales(centrales) = centrales.sum({central => self.produccionDe(central)})

    method produccionTotal() = self.produccionDeCentrales(centralesEnergeticas)
    
    method cubreSusNecesidades() = necesidadEnergetica <= self.produccionTotal()

    // esta al horno si todas son contaminantes o las contaminantes aportan mas del 50% de lo necesitado
    method estaAlHorno() = centralesEnergeticas.all({central => central.esContaminante()}) or
     self.produccionDeCentrales(self.centralesContaminantes()) > necesidadEnergetica * 0.5

    method centralMasProductora() = centralesEnergeticas.max({central => central.produccion(self)})
}

object albuquerque {
    var caudalRio = 150
    var central = centralHidroelectrica // solo tiene espacio para una central

    method centralMasProductora() = central // tiene que ser esta pues es la unica
    method produccionTotal() = central.produccion(caudalRio)
}
