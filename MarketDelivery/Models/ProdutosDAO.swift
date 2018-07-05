
import UIKit

class ProdutosDAO: NSObject {
    
    func retornaTodosProdutos() -> Array<Produto>{
        let arroz = Produto(item: "Arroz", quantidade: 0)
        let farinha = Produto(item: "Farinha", quantidade: 0)
        let macarrao = Produto(item: "Macarrão", quantidade: 0)
        let azeite = Produto(item: "Azeite", quantidade: 0)
        let melao = Produto(item: "Melão", quantidade: 0)
        let biscoito = Produto(item: "Biscoito", quantidade: 0)
        let pao = Produto(item: "Pão", quantidade: 0)
        let peixe = Produto(item: "Peixe", quantidade: 0)
        let leite = Produto(item: "Leite",  quantidade: 0)
        let carneBovina = Produto(item: "Carne Bovina",  quantidade: 0)
        let camarao = Produto(item: "Camarão",  quantidade: 0)
        
        let listaProduto = [arroz, farinha, macarrao, azeite, melao, biscoito, pao, peixe, leite, carneBovina, camarao]
        
        return listaProduto
        
    }
}
