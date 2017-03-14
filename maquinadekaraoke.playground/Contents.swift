//: Playground - noun: a place where people can play

import UIKit

class MaquinaDeKaraoke {
    var musicas : [String]
    
    init () {
        self.musicas = []
    }
    
    func insereMusica(musica : String) {
        musicas.append(musica)
    }
    
    func removeMusica(index : Int) {
        musicas.remove(at: index)
    }
    
    
}