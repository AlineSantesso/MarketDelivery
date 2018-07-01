

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    // MARK: - Ações
    
    @IBAction func minhasListas(_ sender: UIButton) {
        createAlert(message: "Funcionalidade em construção")
        return
    }
    
    @IBAction func criarLista(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "criarLista") as! CriarListaViewController
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    @IBAction func formaDePagamento(_ sender: UIButton) {
        createAlert(message: "Funcionalidade em construção")
        return
    }
    
    @IBAction func sair(_ sender: UIButton) {
        if let navigation = navigationController {
            navigation.popViewController(animated: true)
        }
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
