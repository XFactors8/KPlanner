//
//  HomeViewModel.swift
//  KPlanner
//
//  Created by Adelin Casez on 02/01/2023.
//

import Foundation

class HomeViewModel : ObservableObject {
    @Published var myTask = TaskRepository.getAll()
    
    func updateTaskCompletion(id: Int) {
        if let i = myTask.firstIndex(where: { task in task.id == id }) {
            myTask[i].completed = !myTask[i].completed
            TaskRepository.updateTask(task: myTask[i])
        }
    }
}
