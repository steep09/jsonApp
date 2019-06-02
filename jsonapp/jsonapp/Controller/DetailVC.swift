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
    
    var strregion = ""
    var strsubregion = ""
    var stralpha2 = ""
    var stralpha3 = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        alpha2.text = stralpha2
        alpha3.text = stralpha3
        subregion.text = strsubregion
        region.text = strregion
    }

}
