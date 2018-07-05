import UIKit

class MercadoTableViewCell: UITableViewCell {
    

    @IBOutlet weak var labelNome: UILabel!
    @IBOutlet weak var labelValorTotal: UILabel!
    
    func configuraCelulaMercado(mercados:Mercados) {
        labelNome.text = mercados.nome
        labelValorTotal.text = "\(mercados.valorTotal)"
        
    }
    
    
}
