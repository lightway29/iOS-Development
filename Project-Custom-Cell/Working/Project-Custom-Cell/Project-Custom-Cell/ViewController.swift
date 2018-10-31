//
//  ViewController.swift
//  Project-Custom-Cell
//
//  Created by Lightway on 10/30/18.
//  Copyright © 2018 Lightway. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
     @IBOutlet var tableView: UITableView!
    var names = [
        "Kirsty Calhoun",
        "Bessie Benitez",
        "Skylar Romero",
        "Frances Lindsey (Fran)",
        "Toni Person",
        "Inayah Floyd",
        "Carol Nguyen"]
    
    var phoneNo = ["(570) 205-7274",
        "(648) 941-9247",
        "(536) 608-2614",
        "(365) 631-0530",
        "(943) 759-1515",
        "(757) 891-2708",
        "(536) 608-2614"]
    
    var images = [
        UIImage(named: "Kirsty Calhoun"),
        UIImage(named: "Bessie Benitez"),
        UIImage(named: "Skylar Romero"),
        UIImage(named: "Frances Lindsey (Fran)"),
        UIImage(named: "Toni Person"),
        UIImage(named: "Inayah Floyd"),
        UIImage(named: "Carol Nguyen")]

   
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.tableView.rowHeight = 100.0
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as!CustomCell
//        let cell = self.tableView.dequeueReusableCell( withIdentifier: "cell", forIndexPath: indexPath) as! CustomCell
//        (frame: CGRectMake(0, 0, 100, 100))
        cell.photo.layer.cornerRadius = cell.photo.frame.size.width/2
        

        cell.photo.image = images[indexPath.row]
        
        cell.name.text = names[indexPath.row]
        cell.phone.text = phoneNo[indexPath.row]
        
        
        return cell
        
    }
    

    


}

