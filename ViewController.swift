//
//  ViewController.swift
//  TimeTab
//
//  Created by Soumyajit Sarkar on 1/25/16.
//  Copyright © 2016 Raul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    

    @IBOutlet var table: UITableView!
    @IBOutlet var sliderValue: UISlider!
    @IBAction func sliderMoved(sender: AnyObject) {
        print(sliderValue) // Gives us the value of the slider
        table.reloadData() // Reloads the table everytime the slidervalue is changed
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 20
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        let timeTable = Int(sliderValue.value * 20)
        cell.textLabel?.text = "\(timeTable) * \(indexPath.row+1) = "+String(timeTable * (indexPath.row+1))
        return cell
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

