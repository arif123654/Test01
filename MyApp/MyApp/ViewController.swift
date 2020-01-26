//
//  ViewController.swift
//  MyApp
//
//  Created by apple on 1/26/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var proImg = ["1","2","3","4","5"]
    var proName = ["Salad","Burger","Shrimp","Vegitables","Pasta"]
    var proQuality = ["Good","Worse","Best","Better","Awesome"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }


}


extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return proImg.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! ListTableViewCell
        cell.accessoryType = .disclosureIndicator
        
        cell.productNameLabel.text = proName[indexPath.row]
        cell.productQualityLabel.text = proQuality[indexPath.row]
        cell.productImageView.image = UIImage(named: proImg[indexPath.row])
        
        
        
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(identifier: "DescViewController") as! DescViewController
        vc.proName = proName [indexPath.row]
        vc.proQuality = proQuality [indexPath.row]
        vc.proImg = UIImage(named: proImg[indexPath.row])
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    
}
