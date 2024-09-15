object lebennin {
    method recorrer(habitante) {
        if (habitante.puedeAtravesarLebennin()) 
            habitante.recorrerLebennin()
    }
}

object minasTirith {
    method recorrer(habitante) {
        if (habitante.puedeAtravesarMinasTirith()) 
            habitante.recorrerMinasTirith()
    }
}
object lossarnach  {
    method recorrer(habitante) {
        if (habitante.puedeAtravesarLossarnach()) 
            habitante.recorrerLossarnach()
    }
}

object caminoDeGondor {
    var zonasDelRecorrido = [lebennin, minasTirith]

    method recorrer(habitante) {
        zonasDelRecorrido.forEach({zona => zona.recorrer(habitante)})
    }
}