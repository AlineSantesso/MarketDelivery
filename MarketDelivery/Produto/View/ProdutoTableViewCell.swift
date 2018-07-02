import UIKit

class ProdutoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imagemProduto: UIImageView!
    @IBOutlet weak var labelProduto: UILabel!
    @IBOutlet weak var quantidadeProduto: UITextField!
    
    func configuraCelula(produto:Produto) {
        imagemProduto.image = UIImage(named: produto.caminhoDaImagem)
        labelProduto.text = produto.item
        quantidadeProduto.text = "\(produto.quantidade)"

    }
    
}
