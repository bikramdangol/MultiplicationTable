//
//  ViewController.swift
//  Multiplication Table
//
//  Created by Bikram Dangol on 7/24/16.
//  Copyright © 2016 AppCoders. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var slider: UISlider!
    @IBOutlet var table: UITableView!
    @IBOutlet var titleLabel: UILabel!
    @IBAction func sliderChanged(_ sender: UISlider) {
        updateTitleLabel()
        table.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        let selectedNumber = Int(slider.value * 20)
        let multiplier = indexPath.row + 1
        var rowData = String(selectedNumber) + " X " + String(multiplier) + " = "
        rowData += String(selectedNumber * multiplier)
        cell.textLabel?.text = rowData
        return cell
        
    }
    
    func updateTitleLabel(){
        let selectedNumber = Int(slider.value * 20)
        titleLabel.text = String(selectedNumber) + " Times Table"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateTitleLabel()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

