import cosas.*
object camion {
    const carga = []
    method cargar(unaCosa) {
      carga.add(unaCosa)
    }
    method descargar(unaCosa) {
      carga.remove(unaCosa)
    }
    method pesoTotal() {
      return 1000 + carga.sum({cosa => cosa.peso()})
    }
    method todoPesoPar() {
      return carga.all({c => c.esPesoPar()})
    }
    method algunaCosaPesa(unValor) {
      return carga.any({c => c.peso() == unValor})
    }
    method primerCosaConPeligrosidad(unValor) {
      return carga.find({c => c.peligrosida() == unValor})
    }
    method todasConMasPeligrosidad(unValor) {
      return carga.filter({c => c.peligrosida() > unValor})
    }
    method cosasSuperanPeligrosidadDe(unaCosa) {
     return carga.filter({c => c.peligrosida() > unaCosa.peligrosida()}) 
    }
    method estaExsedido() {
      return carga.sum({c => c.peso()})  + 1000 > 2500
    }
    method puedeCircular(unValor) {
      return self.estaExsedido() and carga.any({c => c.peligrosida() > unValor})
    }

}