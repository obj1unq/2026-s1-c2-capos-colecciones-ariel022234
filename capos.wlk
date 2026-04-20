import artefactos.*
import castillo.*



object rolando {
 const mochila = #{}
 var capacidad = 0
 const artefactosEncontrados = [] 
 const cantArtefactos = {(mochila.size())}



//Consultas

method validarCapacidad() {
  if (cantArtefactos.apply() >= capacidad) {
    self.error("No hay capacidad" + cantArtefactos.apply())
    }
}

method mochila() {
    return mochila
}

method artsEnPosesion() {
  return mochila + castillo.inventario()
}

method cantArtsEnPosesion() {
  return self.artsEnPosesion().size()
}

method tieneArtefacto (_artefacto) {
  return self.artsEnPosesion().contains(_artefacto)
}


//Ordenes
method recolectar(_artefacto) {
  self.validarCapacidad()
  mochila.add(_artefacto)
}

method llegarA(casa) {
  casa.inventario().addAll(mochila)
  mochila.clear()
}

method historiaArtefactos() {
  return artefactosEncontrados
}

method encuentraArtefacto(_artefacto) {
  artefactosEncontrados.add(_artefacto)
  self.recolectar(_artefacto)
  
}

method setCapacidad(_capacidad) {
  capacidad = _capacidad
}




}