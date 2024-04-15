//
//  ConfigurationOption.swift
//  CoolBeans
//
//  Created by Umair Salam on 4/15/24.
//

import Foundation

struct ConfigurationOption: Identifiable, Codable, Hashable {
    let id: UUID
    let name: String
    let calories: Int
    
    static let none = ConfigurationOption(id: UUID(), name: "None", calories: 0)
}
