//
//  countryCell.swift
//  jsonapp
//
//  Created by Stephenson Ang on 02/06/2019.
//  Copyright © 2019 Stephenson Ang. All rights reserved.
//

import UIKit

class countryCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var capital: UILabel!

    func configureCell(json: jsonStruct) {
        self.name.text = json.name
        self.capital.text = json.capital
    }
}
