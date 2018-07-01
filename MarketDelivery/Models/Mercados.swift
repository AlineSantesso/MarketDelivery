
import UIKit

class Mercados: NSObject {
    let nome: String
    let caminhoDaImagem: String
    let valorTotal: Decimal
    
    init(nome:String, caminhoDaImagem:String, valorTotal:Decimal){
        self.nome = nome
        self.caminhoDaImagem = caminhoDaImagem
        self.valorTotal = valorTotal
    }
    
}
