//
//  ViewController.swift
//  test-table
//
//  Created by Runlin Liu on 10/1/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let imgNames = ["tanghulu", "kaoya","lvdagun", "tikkamasala"]
    
    let names = ["Tang Hu Lu", "Kao Ya(Roast Duck)", "Lu Da Gun", "Tikka Masala"]
    
    let descs = ["Best snack in winter", "Famous but not my favorite", "Best snack after school", "Saved my life in Seattle"]

    @IBOutlet var myTable: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath) as! MyCell
        
        cell.imgView.image = UIImage(named: imgNames[indexPath.row])
        cell.descLabel.text = descs[indexPath.row]
        cell.nameLabel.text = names[indexPath.row]
        return cell;
    }
    

}

