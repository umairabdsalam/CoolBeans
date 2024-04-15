//
//  ContentView.swift
//  CoolBeans
//
//  Created by Umair Salam on 4/15/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var menu = Menu()
    
    var body: some View {
        MenuView()
            .environmentObject(menu)
    }
}

#Preview {
    ContentView()
}
