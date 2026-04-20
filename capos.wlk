import artefactos.*


object rolando {
 const mochila = []
 var capacidad = 0
 const objetosEncima = {(mochila.size())}

//Consultas

method validarCapacidad() {
  if (objetosEncima.apply() >= capacidad) {
    self.error("No hay capacidad" + objetosEncima.apply())
    }
}

method artefactos() {
    return mochila
}


//Ordenes
method recolectar(_artefacto) {
  self.validarCapacidad()
  mochila.add(_artefacto)
}

method encuentraArtefacto(_artefacto) {
  self.recolectar(_artefacto)
}

method setCapacidad(_capacidad) {
  capacidad = _capacidad
}




}