//
//  ViewController.swift
//  Todoey
//
//  Created by JetKane on 2019/3/19.
//  Copyright © 2019 JetKane. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    var itemArray = ["Find Mike", "Buy Eggos", "Destroy Demogorgon"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //MARK: - Tableview Datasource Methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoItemCell", for: indexPath)
        cell.textLabel!.text = itemArray[indexPath.row]
        return  cell
    }
    

    //MARK: - Tableview Delegate Methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("JK: Item \(indexPath.row): \"\(itemArray[indexPath.row])\" is selected")
        
        let cell = tableView.cellForRow(at: indexPath)!
        
        if cell.accessoryType == .none {
            cell.accessoryType = .checkmark
        }
        else {
            cell.accessoryType = .none
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    //MARK: - Add New Item
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        
        var textField = UITextField()
    
        let alert = UIAlertController(title: "Add New Todoey Item", message: "", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Add Item", style: .default) { (action) in
            guard textField.text!.count > 0 else { return }
            self.itemArray.append(textField.text!)
            self.tableView.reloadData()
        }
        
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Enter your item"
            textField = alertTextField
            print("Now")
        }
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
}

