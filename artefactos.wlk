object espadaDelDestino {
  var usos = 0  
  method poderEn(_personaje) {
    if(usos < 0) {
      return _personaje.poderBase()
    }
    else {
        return 
    }
  }

  method usar() {
    usos = usos + 1

  }
}

object libroDeHechizos {
  
}

object collarDivino {
  
}

object armaduraDeAceroValkyrio {
  
}