    
import UIKit

class ProdutoViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var tabelaProdutos: UITableView!
    
    let listaProdutos:Array<Produto> = ProdutosDAO().retornaTodosProdutos()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabelaProdutos.dataSource = self
        self.tabelaProdutos.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaProdutos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ProdutoTableViewCell
        let produtoAtual = listaProdutos[indexPath.row]
        cell.configuraCelula(produto: produtoAtual)
        return cell
    }
    
    // Testes
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
    
    //MARK: - Ações
    
    @IBAction func irAoMercado(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "mercado") as! MercadoViewController
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    

}
