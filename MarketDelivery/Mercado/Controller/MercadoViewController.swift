    
    import UIKit
    
    class MercadoViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
        
        @IBOutlet weak var tabelaMercados: UITableView!
        
        let listaMercados:Array<Mercados> = MercadosDAO().retornaTodosMercados()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            self.tabelaMercados.dataSource = self
            self.tabelaMercados.delegate = self
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return listaMercados.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellMercado", for: indexPath) as! MercadoTableViewCell
            let mercadoAtual = listaMercados[indexPath.row]
            cell.configuraCelulaMercado(mercados: mercadoAtual)
            return cell
        }
        
        //MARK: - Ações
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let mercado = listaMercados[indexPath.item]
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let controller = storyboard.instantiateViewController(withIdentifier: "resumoCompra") as! ResumoCompraViewController
            controller.mercadoSelecionado = mercado
            self.navigationController?.pushViewController(controller, animated: true)
            
        }
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 40
        }
        
    }
