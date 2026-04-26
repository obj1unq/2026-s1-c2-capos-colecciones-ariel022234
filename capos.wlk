import artefactos.*
import castillo.*
import enemigos.*




object rolando {
 const mochila = #{}
 var capacidad = 0
 var historialArtefactos = []
 var poderBase = 0



//Consultas

method esPoderoso(_enemigos) {
  return _enemigos.all({enemigo => enemigo.poder() < self.poderDePelea()})
}

method tieneArtefactoFatal(enemigos) {
  return mochila.any({artefacto => self.oneShotAlEnemigo(artefacto,enemigos) })
}

method artefactoFatal(enemigos) {
  return mochila.filter({artefacto => self.oneShotAlEnemigo(artefacto,enemigos) })
}

method oneShotAlEnemigo(artefacto,enemigos) {
  return enemigos.any({enemigo => enemigo.poder() < artefacto.poder(self) })
}


 method artefactoMasPoderosoDe(vivienda) {
        return vivienda.inventario().max({artefacto => artefacto.poder(self)})
      }

method poderDePelea() {
  return poderBase + mochila.sum({artefacto => artefacto.poder(self)})
}

method puedeVencerA(_listaEnemigos) {
  return _listaEnemigos.filter({enemigo => enemigo.poder() < self.poderDePelea()})
}

method moradasConquistables(_enemigos) {
  return self.puedeVencerA(_enemigos).map({enemigo => enemigo.morada()})
}


method poderBase() {
  return poderBase
}

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
  //Agregar funcion esta en uso que es un interruptor para decir si el artefacto esta en uso
  //para resetear el contador de uso
 }
}

method llegarA(lugar) {
  lugar.inventario().addAll(mochila)
  mochila.clear()
}

method setCapacidad(_capacidad) {
  capacidad = _capacidad
}

method encuentraArtefacto(_artefacto) {
  self.recolectar(_artefacto)
  historialArtefactos =  historialArtefactos + [_artefacto]
}

method setPoderBase(_poder) {
  poderBase = _poder
}

method batalla() {
  if (mochila != []) {
      mochila.forEach({artefacto => artefacto.usar()})
  }
}


}