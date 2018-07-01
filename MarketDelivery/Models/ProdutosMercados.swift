
import UIKit

class ProdutosMercados: NSObject {
    let nome: String
    let produto: String
    let valor: Decimal
    
    init(nome:String, produto:String, valor:Decimal){
        self.nome = nome
        self.produto = produto
        self.valor = valor
    }
    
}
