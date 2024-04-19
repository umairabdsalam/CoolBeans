//
//  Serving.swift
//  CoolBeans
//
//  Created by Umair Salam on 4/18/24.
//

import Foundation

struct Serving: Identifiable, Codable, Equatable {
    var id: UUID
    let name: String
    let description: String
    let caffeine: Int
    let calories: Int
    
    
}
