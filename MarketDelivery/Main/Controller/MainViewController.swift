//
//  ViewController.swift
//  MarketDelivery
//
//  Created by Macintosh on 26/06/2018.
//  Copyright © 2018 Macintosh. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var imageMain: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imageMain.image = UIImage (named: "MarketDelivery.png")
    
    }

}

