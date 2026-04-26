import castillo.*
import capos.*


object bendicion {
  method poder(_personaje) {
    return 4
  }
}

object invisibilidad {
  method poder(_personaje) {
    return _personaje.poderBase()
  }
}

object invocacion {
  method poder(_personaje) {
    return _personaje.artefactoMasPoderosoDe(castillo).poder(_personaje)
  }
}
