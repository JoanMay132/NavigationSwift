//
//  PlacingToolbarButtonsInExactLocations.swift
//  Navigation
//
//  Created by Joan May on 17/12/24.
//


// Placing toolbar buttons in exact locations Day 45
import SwiftUI

struct PlacingToolbarButtonsInExactLocations: View {
    var body: some View {
        NavigationStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .toolbar {
                    ToolbarItemGroup(placement: .confirmationAction){
                        Button("Save") {
                            //Button action code
                        }
                        Button("Delete") {
                            //Button action code
                        }
                    }
                }
               
        }
    }
}

#Preview {
    PlacingToolbarButtonsInExactLocations()
}
