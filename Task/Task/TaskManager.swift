//
//  TaskManager.swift
//  Task
//
//  Created by Dominic Bueno on 10/19/16.
//  Copyright © 2016 Bueno. All rights reserved.
//

import UIKit

var taskManager: TaskManager = TaskManager()

struct task {
    var title: String = "Undefined"
    var description: String = "Undefined"
    
}


class TaskManager: NSObject {
    
    var tasks: [(task)] = []
    
    func addTask(t: String, desc: String) {
        tasks.append(task(title: t, description: desc))
    }
    
}
