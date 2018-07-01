//
//  SelecionarMercadoViewController.swift
//  MarketDelivery
//
//  Created by Macintosh on 01/07/2018.
//  Copyright © 2018 Macintosh. All rights reserved.
//

import UIKit

class SelecionarMercadoViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate {
        
        //MARK: - Outlets
        
    @IBOutlet weak var colecaoMercados: UICollectionView!
    //MARK: - Atributos
        
        let listaComTodasMercados:Array<PacoteViagem> = PacoteViagemDAO().retornaTodasAsViagens()
        var listaMercados:Array<PacoteViagem> = []
        
        //MARK: - View Life Cycle
        
        override func viewDidLoad() {
            super.viewDidLoad()
            listaMercados = listaComTodasMercados
            colecaoMercados.dataSource = self
            colecaoMercados.delegate = self
        }
        
        //MARK: - CollectionView
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return self.listaMercados.count
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let celulaMercado = collectionView.dequeueReusableCell(withReuseIdentifier: "celulaMercado", for: indexPath) as! MercadoCollectionViewCell
            let mercadoAtual = listaMercados[indexPath.item]
            celulaMercado.configuraCelula(mercado: mercadoAtual)
            
            return celulaMercado
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return UIDevice.current.userInterfaceIdiom == .phone ? CGSize(width: collectionView.bounds.width/2-20, height: 160) : CGSize(width: collectionView.bounds.width/3-20, height: 250)
        }
        
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            let mercado = listaMercados[indexPath.item]
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let controller = storyboard.instantiateViewController(withIdentifier: "detalhe") as! DetalheCompraViewController
            controller.MercadoSelecionado = mercado
            self.navigationController?.pushViewController(controller, animated: true)
        }


}
