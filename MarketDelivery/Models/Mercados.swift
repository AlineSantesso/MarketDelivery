
import UIKit

class Mercados: NSObject {
    let nome: String
    let valorTotal: Double
    let caminhoDaImagem: String
    
    init(nome:String, valorTotal:Double, caminhoDaImagem:String){
        self.nome = nome
        self.valorTotal = valorTotal
        self.caminhoDaImagem = caminhoDaImagem
    }
    
}
