//
//  CustomizingNavigationBarAppearance.swift
//  Navigation
//
//  Created by Joan May on 17/12/24.
//

//Customizing the navigation bar appearance - Day 45
import SwiftUI

struct CustomizingNavigationBarAppearance: View {
    var body: some View {
        NavigationStack {
            List(0..<100) { i in
                Text("Row of \(i)")
                
            }
            .navigationTitle("Title goes here")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(.blue)
            .toolbarColorScheme(.dark)
            .toolbar(.hidden, for: .navigationBar)
        }
    }
}

#Preview {
    CustomizingNavigationBarAppearance()
}
