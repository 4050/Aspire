//
//  OrderViewController.swift
//  Aspire
//
//  Created by Stanislav on 04.12.2020.
//  Copyright © 2020 Stanislav. All rights reserved.
//

import UIKit

class OrderViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    public var picker = UIPickerView()
    public var cell4 = Cell4TableViewCell()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1", for: indexPath )
            //set the data here
            return cell
        } else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell2", for: indexPath)
            return cell
        } else if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell3", for: indexPath)
            //set the data here
            return cell
        } else if indexPath.row == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell4", for: indexPath)
            //set the data here
            return cell
        } else if indexPath.row == 4 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell5", for: indexPath)
            //set the data here
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell6", for: indexPath)
            //set the data here
            return cell
        }
    }
    
}

extension OrderViewController {
    
}
