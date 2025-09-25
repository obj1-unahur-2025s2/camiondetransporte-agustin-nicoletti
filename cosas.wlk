object knightrider {
    method peso() {
      return 500
    }
    method Peligrosidad() {
      10
    }
        method esPesoPar() {
      self.peso().even()
    }
}

object bumbledee {
    var esAuto = true

    method peso() {
      return 800
    }
    method transformateEnAuto() {
      esAuto = true
    }
    method transformateEnRobot() {
      esAuto = false
    }

    method Peligrosidad() {
      if(esAuto) 15 else 30
    }
        method esPesoPar() {
      self.peso().even()
    }
}
object ladrillos {
  var cantida = 10

  method cantidad(nuevaCantidad) {
    cantida = nuevaCantidad
  }
  method peso() {
    return 2 * cantida
  }
  method peligrosida() {
    return 2
  }
      method esPesoPar() {
      self.peso().even()
    }
}
object arena {
    var peso = 0
    method peso(nuevoPeso) {
      peso = nuevoPeso
    }
    method peligrosidad() {
      return 1
    }
    method peso() {
      return peso 
    }
        method esPesoPar() {
      self.peso().even()
    }
}
object bateriaAntiaeria {
  var estaConMisiles = false
  method cargarMisiles() {
    estaConMisiles = true
  }
  method descargarMisiles() {
    estaConMisiles = false
  }
  method peso() { 
    if(estaConMisiles)300 else 200
  }
  method peligrosidad() {
    if(estaConMisiles)100 else 0
  }
  method esPesoPar() {
    self.peso().even()
  }  
  
}
object contenedeor {
    const cosasAdentro = []
    method agregarElemento(unElemento) {
        cosasAdentro.add(unElemento)
    }
    method agregarVarias(variuasCosas) {
      cosasAdentro.addAll(variuasCosas)
    }
    method quitarCosa(unElemento) {
      cosasAdentro.remove(unElemento)
    }
    method peso() {
        return 100 + cosasAdentro.sum({cosa => cosa.peso()})
  }
  method peligrosidad() {
    return if(cosasAdentro.isEmpty()) 0 else cosasAdentro.map({cosa => cosa.peligrosida()}).Peligrosidad()
  }
      method esPesoPar() {
      self.peso().even()
    }
}
object residuos {
  var property peso = 0

  method peligrosidad() {
    return 200
  }   
      method esPesoPar() {
      self.peso().even()
    }                    
}
object embalaje{
    var cosa = residuos
    method envolderCosa(unaCosa) {
      cosa = unaCosa
    }
    method peso() {
      return cosa.peso()
    }
    method peligrosidad() {
      return cosa.peligrosida()/2
    }
    method esPesoPar() {
      self.peso().even()
    }
}