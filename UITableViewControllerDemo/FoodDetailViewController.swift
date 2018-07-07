//
//  FoodDetailViewController.swift
//  UITableViewControllerDemo
//
//  Created by Chhaileng Peng on 7/7/18.
//  Copyright © 2018 Chhaileng Peng. All rights reserved.
//

import UIKit

class FoodDetailViewController: UIViewController {

    
    @IBOutlet weak var foodLabel: UILabel!
    
    var food: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let food = food {
            foodLabel.text = food
        }
        
    }

}
