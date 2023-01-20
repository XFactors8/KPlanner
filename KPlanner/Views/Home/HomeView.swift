//
//  HomeView.swift
//  KPlanner
//
//  Created by Adelin Casez on 02/01/2023.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel = HomeViewModel()
    
    var body: some View {
    
        ZStack {
            VStack {
                HStack {
                    Spacer()
                }
                .padding(.leading)
                .padding(.trailing)
                List(viewModel.myTasks) { task in
                    TaskItem(viewModel: viewModel, task: task)
                }
                Spacer()
            }
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
