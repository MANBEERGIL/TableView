//
//  ViewController.swift
//  TableView
//
//  Created by MANBEER KAUR on 2020-03-04.
//  Copyright © 2020 MANBEER KAUR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var countryNames : [Country] = []
    @IBOutlet weak var tblView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadCountries()
    }
    func loadCountries()
    {
        

        countryNames.append(Country(name: "India", capital: "New Delhi", flag: #imageLiteral(resourceName: "in")))
        
        countryNames.append(Country(name: "USA", capital: "Washington DC", flag: #imageLiteral(resourceName: "us")))
        countryNames.append(Country(name: "Canada", capital: "Ottawa", flag: #imageLiteral(resourceName: "ca")))
        
}
    
}
extension ViewController: UITableViewDataSource, UITableViewDelegate
{
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return countryNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell")
        
        let country = countryNames[indexPath.row]
        cell?.textLabel?.text = country.name
        cell?.detailTextLabel?.text = country.capital
        cell?.imageView?.image = country.flag
        
        return cell!
    }
    
    
}


