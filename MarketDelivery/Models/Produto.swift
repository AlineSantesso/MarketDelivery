
import UIKit

class Produto: NSObject {
    let item: String
    let caminhoDaImagem: String
    
    init(item:String, caminhoDaImagem:String){
        self.item = item
        self.caminhoDaImagem = caminhoDaImagem
    }
    
}
