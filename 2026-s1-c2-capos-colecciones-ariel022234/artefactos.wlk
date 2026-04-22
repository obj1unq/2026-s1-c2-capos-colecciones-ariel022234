import capos.*

object espadaDelDestino {
    var uso = 0

      method usar() {
        uso = uso + 1
       }

      method poder(_personaje) {
        if (uso < 1) {
          return _personaje.poderBase()
        }
        else {
          return _personaje.poderBase()/2
        }
      }

      method sumarUso () {
        uso = uso + 1
      }

     



  }

object libroDeHechizos {
    var listaHechizos = []  

    method setHechizos(lista) {
    listaHechizos = lista
    }

    method usar() {
      listaHechizos = listaHechizos.remove(listaHechizos.first())
    }



    method poder(_personaje) {
    if (listaHechizos != []) {
      return listaHechizos.first().poder(_personaje)
    }
    else {
      return 0
    }
  }
}

object collarDivino {
  var uso = 0
  
  method usar() {
    uso = uso + 1
  }
 
 
 method sumarUso () {
        uso = uso + 1
      }
  
  method poder(_personaje) {
    if (_personaje.poderBase() <= 6) {
      return 3 
    }
    else {
      return 3 + uso
    }
  }


}

object armaduraDeAceroValkyrio {
  method poder(_personaje) {
    return 6
  }

  method usar() {

  }
}