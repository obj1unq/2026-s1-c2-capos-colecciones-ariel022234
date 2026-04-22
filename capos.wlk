import artefactos.*
import castillo.*



object rolando {
 const mochila = #{}
 var capacidad = 0
 var historialArtefactos = []

//Consultas

method cantArtefactos() {
  return mochila.size()
}

method mochila() {
    return mochila
}

method tieneElArtefacto(_artefacto) {
  return mochila.contains(_artefacto)
}

method posesiones() {
  return mochila + castillo.inventario()
}

method artefactosDe(lugar) {
  lugar.inventario()
}

method historialArtefactos() {
  return historialArtefactos
}


//Ordenes
method recolectar(_artefacto) {
 if(self.cantArtefactos() < capacidad) {
  mochila.add(_artefacto)
 }
}

method llegarA(lugar) {
  lugar.inventario().addAll(mochila)
  mochila.clear()
}

method encuentraArtefacto(_artefacto) {
  self.recolectar(_artefacto)
  historialArtefactos =  historialArtefactos + [_artefacto]
}

}