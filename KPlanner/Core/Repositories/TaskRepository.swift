//
//  TaskRepository.swift
//  KPlanner
//
//  Created by Adelin Casez on 02/01/2023.
//

import Foundation

class TaskRepository {
    static func getAll() -> [Task] {
        return [
            Task(id: 0, name: "task0", dateStart: Date(), dateEnd: Date()+1, emoji: "👌🏻", completed: true),
            Task(id: 1, name: "task1", dateStart: Date()+2, dateEnd: Date()+3, emoji: "😭", completed: false),
            Task(id: 2, name: "task2", dateStart: Date(), dateEnd: Date()+1, emoji: "😇", completed: false),
            Task(id: 3, name: "task3", dateStart: Date(), dateEnd: Date()+1, emoji: "😜", completed: false),
            Task(id: 4, name: "task4", dateStart: Date()+2, dateEnd: Date()+3, emoji: "😍", completed: false)
        ]
    }
    
    static func updateTask(task: Task) {}
}
