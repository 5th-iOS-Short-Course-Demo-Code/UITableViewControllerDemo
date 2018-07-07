//
//  ViewController.swift
//  UITableViewControllerDemo
//
//  Created by Chhaileng Peng on 7/7/18.
//  Copyright © 2018 Chhaileng Peng. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var foodTableView: UITableView!
    
    let foods = ["Pizza", "Bread", "Egg", "Coca", "Donat", "Pizza", "Bread", "Egg", "Coca", "Donat", "Pizza", "Bread", "Egg", "Coca", "Donat", "Pizza", "Bread", "Egg", "Coca", "Donat"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foods.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell")
        cell?.textLabel?.text = foods[indexPath.row]
        cell?.imageView?.image = UIImage(named: "image")
        return cell!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        foodTableView.delegate = self
        foodTableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let detailScreen = self.storyboard?.instantiateViewController(withIdentifier: "foodDetailScreen") as! FoodDetailViewController
        
        detailScreen.food = foods[indexPath.row]
        
        navigationController?.pushViewController(detailScreen, animated: true)
        
    }

}

