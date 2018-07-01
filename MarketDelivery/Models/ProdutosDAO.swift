
import UIKit

class ProdutosDAO: NSObject {
    
    func retornaTodosProdutos() -> Array<Produto>{
        let arroz = Produto(item: "Arroz", caminhoDaImagem: "icons-arroz.png", quantidade: 0)
        let farinha = Produto(item: "Farinha", caminhoDaImagem: "icons-farinha.png", quantidade: 0)
        let macarrao = Produto(item: "Macarrão", caminhoDaImagem: "icons-arroz.png", quantidade: 0)
        let azeite = Produto(item: "Azeite", caminhoDaImagem: "icons-azeite.png", quantidade: 0)
        let melao = Produto(item: "Melão", caminhoDaImagem: "icons-melao.png", quantidade: 0)
        let biscoito = Produto(item: "Biscoito", caminhoDaImagem: "icons-biscoitos.png", quantidade: 0)
        let pao = Produto(item: "Pão", caminhoDaImagem: "icons-pao.png", quantidade: 0)
        let peixe = Produto(item: "Peixe", caminhoDaImagem: "icons-peixe.png", quantidade: 0)
        let leite = Produto(item: "Leite", caminhoDaImagem: "icons-leite.png", quantidade: 0)
        let carneBovina = Produto(item: "Carne Bovina", caminhoDaImagem: "icons-bife.png", quantidade: 0)
        let camarao = Produto(item: "Camarão", caminhoDaImagem: "icons-camarao.png", quantidade: 0)
        
        let listaProduto = [arroz, farinha, macarrao, azeite, melao, biscoito, pao, peixe, leite, carneBovina, camarao]
        
        return listaProduto
        
    }
}
