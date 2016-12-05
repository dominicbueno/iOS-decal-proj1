//
//  SecondViewController.swift
//  Task
//
//  Created by Dominic Bueno on 10/19/16.
//  Copyright © 2016 Bueno. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var titleText: UITextField!
    @IBOutlet var descText: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addTaskButton(sender: UIButton) {
        taskManager.addTask(t: titleText.text!, desc: descText.text!)
        self.view.endEditing(true)
        titleText.text = ""
        descText.text = ""
        self.tabBarController!.selectedIndex = 0
        
    
        
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true
    }

}

