//
//  NavigationStackReturnToItsRootView.swift
//  Navigation
//
//  Created by Joan May on 16/12/24.
//

import SwiftUI
// Day 44 - How to make navigationStack return to its root view programmatically
struct DetailView2: View {
    
    var number : Int
    @Binding var path : NavigationPath
    
    var body: some View {
        NavigationLink("Go to Random Number", value: Int.random(in: 1...1000))
            .navigationTitle("Number \(number)")
            .toolbar {
                Button("Home") {
                    path = NavigationPath()
                }
            }
    }
}

struct NavigationStackReturnToItsRootView: View {
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path : $path) {
            DetailView2(number:  0, path: $path)
                .navigationDestination(for: Int.self) { i in
                    DetailView2(number: i, path : $path)
                }
        }
    }
}

#Preview {
    NavigationStackReturnToItsRootView()
}
