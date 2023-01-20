//
//  HomeViewModel.swift
//  KPlanner
//
//  Created by Adelin Casez on 02/01/2023.
//

import Foundation

class HomeViewModel : ObservableObject {
    @Published var myTasks = TaskRepository.getTask()
    @Published var showAddTask = false
    
    func updateTaskCompletion(id: Int) {
        
        if let i = myTasks.firstIndex(where: { task in task.id == id }) {
            myTasks[i].completed = !myTasks[i].completed
            TaskRepository.updateTask(task: myTasks[i])
        }
    }
    
    func updateTask() {
        myTasks = TaskRepository.getTask()
    }
}
