
import UIKit

class ProdutosDAO: NSObject {
    
    func retornaTodosProdutos() -> Array<Produto>{
        let arroz = Produto(item: "Arroz", caminhoDaImagem: "icons-arroz.png")
        let farinha = Produto(item: "Farinha", caminhoDaImagem: "icons-farinha.png")
        let macarrao = Produto(item: "Macarrão", caminhoDaImagem: "icons-arroz.png")
        let azeite = Produto(item: "Azeite", caminhoDaImagem: "icons-azeite.png")
        let melao = Produto(item: "Melão", caminhoDaImagem: "icons-melao.png")
        let biscoito = Produto(item: "Biscoito", caminhoDaImagem: "icons-biscoitos.png")
        let pao = Produto(item: "Pão", caminhoDaImagem: "icons-pao.png")
        let peixe = Produto(item: "Peixe", caminhoDaImagem: "icons-peixe.png")
        let leite = Produto(item: "Leite", caminhoDaImagem: "icons-leite.png")
        let carneBovina = Produto(item: "Carne Bovina", caminhoDaImagem: "icons-bife.png")
        let camarao = Produto(item: "Camarão", caminhoDaImagem: "icons-camarao.png")
        
        let listaProduto = [arroz, farinha, macarrao, azeite, melao, biscoito, pao, peixe, leite, carneBovina, camarao]
        
        return listaProduto
        
    }
}
