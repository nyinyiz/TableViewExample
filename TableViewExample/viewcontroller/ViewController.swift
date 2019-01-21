//
//  ViewController.swift
//  TableViewExample
//
//  Created by Sheilar June on 1/15/19.
//  Copyright © 2019 rooking. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    var nameVO : [NameVO]?
    var identifier = "nameCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameVO = [
            NameVO(strName: "Nyi Nyi Zaw", strEmail: "nyinyizaw.dev@gmail.com", strPhone: "09799558126",strImage: "nnz"),
            NameVO(strName: "Ko Ko Zaw", strEmail: "nyinyizaw.dev@gmail.com", strPhone: "09799558126",strImage: "nnz"),
            NameVO(strName: "Mg Mg Zaw", strEmail: "nyinyizaw.dev@gmail.com", strPhone: "09799558126",strImage: "nnz"),
            NameVO(strName: "Nyi Zaw Zaw", strEmail: "nyinyizaw.dev@gmail.com", strPhone: "09799558126",strImage: "nnz"),
            NameVO(strName: "Zaw Nyi Zaw", strEmail: "nyinyizaw.dev@gmail.com", strPhone: "09799558126",strImage: "nnz"),
            NameVO(strName: "Nyi Zaw Nyi", strEmail: "nyinyizaw.dev@gmail.com", strPhone: "09799558126",strImage: "nnz")
        ]
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameVO?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        guard let nameVO = nameVO else {
            return cell
        }
        
        cell.textLabel?.text = nameVO[indexPath.row].name
        cell.detailTextLabel?.text = nameVO[indexPath.row].email
        
        if let imageName = nameVO[indexPath.row].image {
            cell.imageView?.image = UIImage(named: imageName)
        }
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showName" {
            if let cell = sender as? UITableViewCell,
                let indextPath = tableView.indexPath(for: cell),
                let nameDetailVC = segue.destination as? NameDetailViewController {
                    nameDetailVC.nameVO = nameVO?[(indextPath as NSIndexPath).row]
            }

        }
    }

    

}

