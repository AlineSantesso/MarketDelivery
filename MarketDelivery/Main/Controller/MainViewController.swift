
import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var imageMain: UIImageView!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var queroMeCadastrarButton: UIButton!
    @IBOutlet weak var loginView: UIView!
    @IBOutlet weak var queroMeCadastrarView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imageMain.image = UIImage (named: "MarketDelivery.png")
        self.loginView.layer.cornerRadius = 30
        self.queroMeCadastrarView.layer.cornerRadius = 30
    
    }
    
    //MARK: - Ações
    
    @IBAction func queroMeCadastrar(_ sender: Any) {
        createAlert(message: "Funcionalidade em construção")
        return
    }
    
    
    @IBAction func login(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "login") as! LoginViewController
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    
    
    //MARK: - Funções
    func createAlert(message:String) {
        let myAlert = UIAlertController(title: "Alert", message: message, preferredStyle: UIAlertControllerStyle.alert);
    
        myAlert.addAction(UIAlertAction(title: "Fechar Mensagem", style: UIAlertActionStyle.default, handler: { (action) in
            myAlert.dismiss(animated: true, completion: nil)
        }))
        
        
        self.present(myAlert, animated: true, completion: nil)
    
    }

}

