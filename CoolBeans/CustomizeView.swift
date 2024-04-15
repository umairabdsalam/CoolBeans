//
//  CustomizeView.swift
//  CoolBeans
//
//  Created by Umair Salam on 4/15/24.
//

import SwiftUI

struct CustomizeView: View {
    let drink: Drink

    
    @EnvironmentObject var menu: Menu
    
    @State private var size = 0
    @State private var isDecaf = false
    @State private var extraShots = 0
    @State private var milk = ConfigurationOption.none
    @State private var syrup = ConfigurationOption.none
    
    
    
    let sizeOptions = ["Small", "Medium", "Large"]
    
    var caffeine: Int {
        100
    }
    
    var calories: Int {
        100
    }
    
    
    
    var body: some View {
        Form {
            Section("Basic Options") {
                Picker("Size", selection: $size){
                    ForEach(sizeOptions.indices) { index in
                        Text(sizeOptions[index])
                    }
                    
                }.pickerStyle(.segmented)
                
                if drink.coffeeBased {
                    Stepper("Extra shots: \(extraShots)", value: $extraShots, in: 0...8)
                }
                Toggle("Decaffinated", isOn: $isDecaf)
            }
            
            Section("Customizations") {
                Picker("Milk", selection: $milk) {
                    ForEach(menu.milkOptions){ option in
                        Text(option.name)
                            .tag(option)
                        
                    }
                }
            }
            
            if drink.coffeeBased {
                Picker("Syrup", selection: $syrup) {
                    ForEach(menu.syrupOptions){ option in
                        Text(option.name)
                            .tag(option)
                        
                    }
                }
            }
            Section("Estimates") {
                Text("**Caffine:** \(caffeine) mg")
                Text("**Calories:** \(calories)")
            }
        }.navigationBarTitleDisplayMode(.inline)
            .navigationTitle(drink.name)
        
    }
}

#Preview {
    CustomizeView(drink: Drink.example)
}
