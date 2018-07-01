import UIKit

class MercadosDAO: NSObject {
    
    func retornaTodosMercados() -> Array<Mercado>{
        let carrefour = Mercado(nome: "Carrefour")
        let walmart = Mercado(nome: "Walmart")
        let paoDeAcucar = Mercado(nome: "Pão de Açucar")
        
        let listaMercado = [carrefour, walmart, paoDeAcucar]
        
        return listaMercado
        
    }
}
