//
//  FirstViewController.swift
//  Task
//
//  Created by Dominic Bueno on 10/19/16.
//  Copyright © 2016 Bueno. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet var tableTasks: UITableView!
    
    
    public func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if (editingStyle == UITableViewCellEditingStyle.delete) {
            taskManager.tasks.remove(at: indexPath.row)
            tableTasks.reloadData()
        }
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskManager.tasks.count;
        
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "Default")

        
        cell.textLabel!.text = taskManager.tasks[indexPath.row].title
        cell.detailTextLabel!.text = taskManager.tasks[indexPath.row].description
        
        return cell
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableTasks.reloadData()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
        // Do any additional setup after loading the view, typically from a nib.
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

