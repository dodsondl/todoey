//
//  TableViewController.swift
//  todoey
//
//  Created by Daniel Dodson on 2/11/19.
//  Copyright © 2019 Daniel Dodson. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let itemArray = ["Eat Food", "Learn shit", "This is a string"]
    
    var cellIsSelected = false

    override func viewDidLoad() {
        super.viewDidLoad()

    
    }

    // MARK: - Table view data source



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "toDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if cellIsSelected == false {
        tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
            cellIsSelected = true
        
        }
        else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
            cellIsSelected = false
            
        }
        tableView.deselectRow(at: indexPath, animated: true)
        
        
    }
   

}
