import armas.*

object gandalf {
    var vida = 100
    var armas = #{baculo, glamdring}

    method setVida(cantidad) {
        vida = cantidad
    }

    method vida() = vida

    method setArmas(conjuntoDeArmas) {
        armas = conjuntoDeArmas
    }
    
    method poder() {
        if (vida > 10) 
            return vida * 15 + self.poderDeArmas() * 2
        else
            return vida * 300 + self.poderDeArmas() * 2
    }

    method poderDeArmas() = armas.sum({arma => arma.poder()})

    method puedeAtravesarMinasTirith() = not armas.isEmpty()
    method puedeAtravesarLossarnach() = true
    method puedeAtravesarLebennin() = self.poder() > 1500
    method puedeAtravesarCaminoDeGondor() = self.puedeAtravesarLebennin() and self.puedeAtravesarMinasTirith()

    method recorrerMinasTirith() {
        vida -= 10
    }

    method recorrerLossarnach() {
        vida += 1
    }

    method recorrerLebennin() {}
   
}

object tomBombadil {
    method puedeAtravesarMinasTirith() = true 
    method puedeAtravesarLossarnach() = true
    method puedeAtravesarLebennin() = true
    method puedeAtravesarCaminoDeGondor() = true

    method recorrerMinasTirith() {}
    method recorrerLossarnach() {}
    method recorrerLebennin() {}
}