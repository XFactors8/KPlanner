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
        VStack{
            List(viewModel.myTask) { task in
                TaskItem(viewModel: viewModel, task: task)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
