
import UIKit

class Produto: NSObject {
    let item: String
//    let caminhoDaImagem: String
    let quantidade: Int
    
    init(item:String, quantidade:Int){
        self.item = item
 //       self.caminhoDaImagem = caminhoDaImagem
        self.quantidade = quantidade
    }
    
}
