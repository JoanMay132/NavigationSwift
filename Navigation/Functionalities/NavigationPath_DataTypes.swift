//
//  NavigationPath_DataTypes.swift
//  Navigation
//
//  Created by Joan May on 16/12/24.
//

import SwiftUI
// Navigating to different data types using NavigationPath
struct NavigationPath_DataTypes: View {
    
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            List {
                ForEach(0..<5) { i in
                    NavigationLink("Select the number of \(i)", value: i)
                }
                ForEach(0..<5) { i in
                    NavigationLink("Select the string of \(i)", value: String(i))
                }
            }
            .toolbar {
                Button("Push 556") {
                    path.append(556)
                }
                Button("Push hello") {
                    path.append("Hello")
                }
            }
            .navigationDestination(for: Int.self) { selection in
                Text("You selected \(selection)")
            }
            .navigationDestination(for: String.self) { selection in
                Text("You selected \(selection)")
            }
        }
    }
}

#Preview {
    NavigationPath_DataTypes()
}
