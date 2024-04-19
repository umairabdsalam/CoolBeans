//
//  FileManager-DocumentsDirectory.swift
//  CoolBeans
//
//  Created by Umair Salam on 4/18/24.
//

import Foundation

extension FileManager {
    static var documentsDirectory: URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}
