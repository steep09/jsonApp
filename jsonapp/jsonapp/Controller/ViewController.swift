//
//  ViewController.swift
//  jsonapp
//
//  Created by Stephenson Ang on 02/06/2019.
//  Copyright © 2019 Stephenson Ang. All rights reserved.
//

import UIKit

struct jsonStruct: Decodable {
    let name: String
    let capital: String
    let alpha2Code: String
    let alpha3Code: String
    let region: String
    let subregion: String
}

class ViewController: UIViewController {
    
    @IBOutlet weak var mainTableView: UITableView!
    
    var arrdata = [jsonStruct]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
        
        mainTableView.delegate = self
        mainTableView.dataSource = self
        
    }
    
    func getData() {
        let url = URL(string: "https://restcountries.eu/rest/v2/all")
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            do {
                if error == nil {
                    self.arrdata = try JSONDecoder().decode([jsonStruct].self, from: data!)
                    
                    for mainarr in self.arrdata {
                        DispatchQueue.main.async {
                            self.mainTableView.reloadData()
                        }
                    }
                }
            } catch{
                print("Error in get json data")
            }
        }.resume()
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrdata.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(150)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "countryCell") as! countryCell
        cell.name.text = "Name : \(arrdata[indexPath.row].name)"
        cell.capital.text = "Capital : \(arrdata[indexPath.row].capital)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail = storyboard?.instantiateViewController(withIdentifier: "detail") as! DetailVC
        detail.strregion = arrdata[indexPath.row].region
        detail.strsubregion = arrdata[indexPath.row].subregion
        detail.stralpha2 = arrdata[indexPath.row].alpha2Code
        detail.stralpha3 = arrdata[indexPath.row].alpha3Code
        present(detail, animated: false, completion: nil)
    }
    
}
