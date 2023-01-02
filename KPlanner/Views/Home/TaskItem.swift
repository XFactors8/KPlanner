//
//  TaskItem.swift
//  KPlanner
//
//  Created by Adelin Casez on 02/01/2023.
//

import SwiftUI

struct TaskItem: View {
    var viewModel: HomeViewModel
    var task: Task
    
    var body: some View {
        VStack{
            HStack{
                Text(task.emoji)
                Image(systemName: task.completed ? "circle.fill" : "circle")
                    .onTapGesture {
                        viewModel.updateTaskCompletion(id: task.id)
                    }
                VStack{
                    Text(task.name)
                    Text(task.dateStart.formatted() + " to " + task.dateEnd.formatted())
                }
                Spacer()
            }
            .padding(.trailing)
            .padding(.leading)
        }
    }
}

struct TaskItem_Previews: PreviewProvider {
    static var previews: some View {
        TaskItem(viewModel: HomeViewModel(), task: Task(id: 0, name: "task", dateStart: Date(), dateEnd: Date()+1, emoji: "🥹", completed: false))
    }
}
