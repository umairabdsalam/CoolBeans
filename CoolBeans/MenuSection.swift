//
//  MenuSection.swift
//  CoolBeans
//
//  Created by Umair Salam on 4/15/24.
//

import Foundation

struct MenuSection: Identifiable, Codable {
    let id: UUID
    let name: String
    let drinks: [Drink]
    
}
