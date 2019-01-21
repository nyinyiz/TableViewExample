//
//  UserTableViewController.swift
//  TableViewExample
//
//  Created by Sheilar June on 1/15/19.
//  Copyright © 2019 rooking. All rights reserved.
//

import UIKit

class UserTableViewController: UITableViewController {
    var nameVO : [NameVO]?
    var identifier = "userCell"
    
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
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! UserTableViewCell
        
        let nameSingleVO = nameVO![indexPath.row]
        
        if let imageName = nameSingleVO.image {
            cell.imgUser.image = UIImage(named: imageName)
        }
        cell.labelUserName.text = nameSingleVO.name
        cell.labelUserEmail.text = nameSingleVO.email
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }

}
