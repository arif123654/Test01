//
//  DescViewController.swift
//  MyApp
//
//  Created by apple on 1/26/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class DescViewController: UIViewController {

    @IBOutlet weak var productImageView: UIImageView!
    
    
    @IBOutlet weak var productNameLabel: UILabel!
    
    @IBOutlet weak var productQualityLabel: UILabel!
    
    
    
    
    
    var proImg:UIImage?
    var proName:String = ""
    var proQuality:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

               self.productImageView.image = proImg
               self.productNameLabel.text = proName
               self.productQualityLabel.text = proQuality
    }
    


}
