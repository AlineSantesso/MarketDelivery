import UIKit

class ProdutosMercadosDAO: NSObject {
    
    func retornaTodosProdutosMercados() -> Array<ProdutosMercados>{
        let carrefour1 = ProdutosMercados(nome: "Carrefour",produto: "Arroz" ,valor: 9.99)
        let carrefour2 = ProdutosMercados(nome: "Carrefour",produto: "Farinha" ,valor: 9.99)
        let carrefour3 = ProdutosMercados(nome: "Carrefour",produto: "Macarrão" ,valor: 9.99)
        let carrefour4 = ProdutosMercados(nome: "Carrefour",produto: "Azeite" ,valor: 9.99)
        let carrefour5 = ProdutosMercados(nome: "Carrefour",produto: "Melão" ,valor: 9.99)
        let carrefour6 = ProdutosMercados(nome: "Carrefour",produto: "Biscoito" ,valor: 9.99 )
        let carrefour7 = ProdutosMercados(nome: "Carrefour",produto: "Pão",valor: 9.99 )
        let carrefour8 = ProdutosMercados(nome: "Carrefour",produto: "Peixe" ,valor: 9.99 )
        let carrefour9 = ProdutosMercados(nome: "Carrefour",produto: "Leite" ,valor: 9.99 )
        let carrefour10 = ProdutosMercados(nome: "Carrefour",produto: "Carne Bovina" ,valor: 9.99 )
        let carrefour11 = ProdutosMercados(nome: "Carrefour",produto: "Camarão" ,valor: 9.99 )


        let listaProdutosMercados:Array<ProdutosMercados> = [carrefour1,
                                           carrefour2,
                                           carrefour3,
                                           carrefour4,
                                           carrefour5,
                                           carrefour6,
                                           carrefour7,
                                           carrefour8,
                                           carrefour9,
                                           carrefour10,
                                           carrefour11]
        
        return listaProdutosMercados
        
    }
}
