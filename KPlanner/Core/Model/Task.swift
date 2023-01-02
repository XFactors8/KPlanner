//
//  Task.swift
//  KPlanner
//
//  Created by Adelin Casez on 02/01/2023.
//

import Foundation

struct Task: Codable, Hashable, Identifiable {
    var id: Int
    var name: String
    var dateStart: Date
    var dateEnd: Date
    var emoji: String
    var completed: Bool
}
