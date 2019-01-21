//
//  NameDetailViewController.swift
//  TableViewExample
//
//  Created by Sheilar June on 1/15/19.
//  Copyright © 2019 rooking. All rights reserved.
//

import UIKit

class NameDetailViewController: UIViewController {

    @IBOutlet weak var imgName: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    @IBOutlet weak var btnNext: UIButton!
    
    
    var nameVO : NameVO?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let imageName = nameVO?.image {
            imgName.image = UIImage(named: imageName)
        }
        labelName.text = nameVO?.name
        labelEmail.text = nameVO?.email
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
