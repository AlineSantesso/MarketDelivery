import UIKit

class ProdutosMercadosDAO: NSObject {
    
    func retornaTodosProdutosMercados() -> Array<Mercado>{
        let carrefour1 = Mercado(nome: "Carrefour",produto: "Arroz" ,valor: 9.99)
        let carrefour2 = Mercado(nome: "Carrefour",produto: "Farinha" ,valor: 9.99)
        let carrefour3 = Mercado(nome: "Carrefour",produto: "Macarrão" ,valor: 9.99)
        let carrefour4 = Mercado(nome: "Carrefour",produto: "Azeite" ,valor: 9.99)
        let carrefour5 = Mercado(nome: "Carrefour",produto: "Melão" ,valor: 9.99)
        let carrefour6 = Mercado(nome: "Carrefour",produto: "Biscoito" ,valor: 9.99 )
        let carrefour7 = Mercado(nome: "Carrefour",produto: "Pão",valor: 9.99 )
        let carrefour8 = Mercado(nome: "Carrefour",produto: "Peixe" ,valor: 9.99 )
        let carrefour9 = Mercado(nome: "Carrefour",produto: "Leite" ,valor: 9.99 )
        let carrefour10 = Mercado(nome: "Carrefour",produto: "Carne Bovina" ,valor: 9.99 )
        let carrefour11 = Mercado(nome: "Carrefour",produto: "Camarão" ,valor: 9.99 )


        let listaProdutosMercados:Array<Mercado> = [carrefour1,
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
