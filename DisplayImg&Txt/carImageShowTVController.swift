//
//  carImageShowTVController.swift
//  DisplayImg&Txt
//
//  Created by Rabeeh KP on 17/11/17.
//  Copyright © 2017 Rabeeh KP. All rights reserved.
//

import UIKit

class carImageShowTVController: UITableViewController {
 var cars = ["Audi" , "Bmw","Benz" , "RangeRover", "Ferrari","Ford"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return cars.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cells = tableView.dequeueReusableCell(withIdentifier: "carDetailsShowing") as! showCarDetailsCell
        cells.carLabel.text = cars[indexPath.row]
        cells.showImage.image = UIImage(named: cars[indexPath.row])
        return cells
    //   return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
}
