//
//  ViewController.swift
//  NightPorter3
//
//  Created by Ivy, Marjorie on 11/1/18.
//  Copyright © 2018 Ivy, Marjorie. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    //table view data methods
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3 // one for daily tasks, weekly and monthly
    }
    //add
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return dailyTasks.count
        case 1:
            return weeklyTasks.count
        case 2:
            return monthlyTasks.count
        default:
            return 0
        }
    }
    //add
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Daily Tasks"
        case 1:
            return "Weekly Tasks"
        case 2:
            return "Monthly Tasks"
        default:
            return nil
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        switch indexPath.section {
        case 0:
            cell.textLabel?.text = dailyTasks[indexPath.row]
        case 1:
            cell.textLabel?.text = weeklyTasks[indexPath.row]
        case 2:
            cell.textLabel?.text = monthlyTasks[indexPath.row]
        default:
            cell.textLabel?.text = "This should not happen"
        }
        return cell
    }
    
    //tableview delegate methods
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //someone selects a row
        print("")
    }
    
    
    let dailyTasks = ["Check all Windows",
                      "Check all Doors",
                      "Is the boiler fueled?",
                      "Check the mailbox",
                      "Empty Trash cans",
                      "If freezing, check water pipes",
                      "Document \"strange and unusual\" occurences"]
    
    let weeklyTasks = ["Check inside all cabins",
                       "Flush all lavatories",
                       "Walk the perimeter of property"]
    
    let monthlyTasks = ["Test security alarm",
                        "Test motion detectors",
                        "Test smoke alarms"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
}
