//
//  jsonStruct.swift
//  jsonapp
//
//  Created by Stephenson Ang on 03/06/2019.
//  Copyright © 2019 Stephenson Ang. All rights reserved.
//

import Foundation

struct jsonStruct: Decodable {
    let name: String
    let capital: String
    let alpha2Code: String
    let alpha3Code: String
    let region: String
    let subregion: String
}
