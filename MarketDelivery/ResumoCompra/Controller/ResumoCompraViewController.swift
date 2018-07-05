
import UIKit

class ResumoCompraViewController: UIViewController {

    //MARK: - Outlets
    
    @IBOutlet weak var imagemMercado: UIImageView!
    @IBOutlet weak var nomeMercado: UILabel!
    @IBOutlet weak var valorTotalCompra: UILabel!
    
    
    //MARK: - Atributos
    
    var mercadoSelecionado:Mercados? = nil
    
    //MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        NotificationCenter.default.addObserver(self, selector: #selector(aumentarScroll(notification:)), name: .UIKeyboardWillShow, object: nil)
        if let mercado = mercadoSelecionado {
            self.imagemMercado.image = UIImage(named: mercado.caminhoDaImagem)
            self.nomeMercado.text = mercado.nome
            self.valorTotalCompra.text = "\(mercado.valorTotal)"
        }
    }
    
    



}
