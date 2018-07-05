
import UIKit

class MercadosDAO: NSObject {
    
    func retornaTodosMercados() -> Array<Mercados>{
        let carrefour = Mercados(nome: "Carrefour", valorTotal: 345.00, caminhoDaImagem: "icon-carrefour.png")
        let extra = Mercados(nome: "Extra", valorTotal: 287.98, caminhoDaImagem: "icon-extra.png")
        let walmart = Mercados(nome: "Walmart", valorTotal: 586.00, caminhoDaImagem: "icon-walmart.png")
        let paoDeAcucar = Mercados(nome: "Pão de Açucar", valorTotal: 600.01, caminhoDaImagem: "icon-paodeacucar.jpg")

        let listaMercados = [carrefour, extra, walmart, paoDeAcucar]
        
        return listaMercados
    }
}
