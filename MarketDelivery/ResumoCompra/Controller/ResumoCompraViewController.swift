
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
    
    //MARK: - Action
    
    @IBAction func buttonFinalizarCompra(_ sender: Any) {
        createAlert(message: "Compra Realizada!!!")
        return
    }
    
    //MARK: - Funções
    func createAlert(message:String) {
        let myAlert = UIAlertController(title: "Sucesso", message: message, preferredStyle: UIAlertControllerStyle.alert);
        
        myAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in
            myAlert.dismiss(animated: true, completion: nil)
        }))
        
        
        self.present(myAlert, animated: true, completion: nil)
        
    }
    



}
