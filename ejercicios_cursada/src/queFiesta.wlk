object manic {
    var estrellas = 0
    const globos = 55

    method globos() = globos

    method encontrarEstrellas() {
        estrellas += 8
    }

    method regalarEstrellas() {
        estrellas -= 1
    }

    method tieneTodoListoParaLaFiesta() = estrellas >= 4
}

object fiesta {
    const anfitrion = chuy

    method estaPreparada() = anfitrion.tieneTodoListoParaLaFiesta() && anfitrion.globos() > 50
}

object chuy {
    const globos = 100
    method globos() = globos
    method tieneTodoListoParaLaFiesta() = true
}

object capy {
    var latas = 0
    const globos = 50
    method globos() = globos

    method recolectarLata() {
        latas += 1
    }

    method reciclarLatas() {
        latas -= 5
    }

    method tieneTodoListoParaLaFiesta() = latas % 2 == 0
}