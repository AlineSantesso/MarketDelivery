

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var esqueciMinhaSenhaView: UIView!
    @IBOutlet weak var entrarView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.esqueciMinhaSenhaView.layer.cornerRadius = 30
        self.entrarView.layer.cornerRadius = 30
    }

    //MARK: - Ações 
    @IBAction func esqeuciMinhaSenha(_ sender: UIButton) {
        createAlert(message: "Funcionalidade em construção")
        return
        
    }
    
    @IBAction func entrar(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "home") as! HomeViewController
        self.navigationController?.pushViewController(controller, animated: true)
        
    }
    
    //MARK: - Funções
    func createAlert(message:String) {
        let myAlert = UIAlertController(title: "Alert", message: message, preferredStyle: UIAlertControllerStyle.alert);
        
        myAlert.addAction(UIAlertAction(title: "Fechar Mensagem", style: UIAlertActionStyle.default, handler: { (action) in
            myAlert.dismiss(animated: true, completion: nil)
            print("mensagem fechada")
        }))
        
        
        self.present(myAlert, animated: true, completion: nil)
        
    }
    
}
