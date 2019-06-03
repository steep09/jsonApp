//
//  DetailVC.swift
//  jsonapp
//
//  Created by Stephenson Ang on 02/06/2019.
//  Copyright © 2019 Stephenson Ang. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var alpha2: UILabel!
    @IBOutlet weak var alpha3: UILabel!
    @IBOutlet weak var subregion: UILabel!
    @IBOutlet weak var region: UILabel!
    
    var strregion: String!
    var strsubregion: String!
    var stralpha2: String!
    var stralpha3: String!
    
    func initData(region: String, subregion: String, alpha2: String, alpha3: String) {
        self.strregion = region
        self.strsubregion = subregion
        self.stralpha2 = alpha2
        self.stralpha3 = alpha3
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        alpha2.text = stralpha2
        alpha3.text = stralpha3
        subregion.text = strsubregion
        region.text = strregion
    }

}
