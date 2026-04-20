import artefactos.*
import castillo.*



object rolando {
 const mochila = []
 var capacidad = 0
 const artefactosEncima = {(mochila.size())}



//Consultas

method validarCapacidad() {
  if (artefactosEncima.apply() >= capacidad) {
    self.error("No hay capacidad" + artefactosEncima.apply())
    }
}

method mochila() {
    return mochila
}

method artsEnPosesion() {
  return mochila + castillo.salaArtefactos()
}


//Ordenes
method recolectar(_artefacto) {
  self.validarCapacidad()
  mochila.add(_artefacto)
}

method alCastillo() {
  castillo.salaArtefactos().addAll(mochila)
  mochila.clear()
}

method encuentraArtefacto(_artefacto) {
  self.recolectar(_artefacto)
}

method setCapacidad(_capacidad) {
  capacidad = _capacidad
}




}