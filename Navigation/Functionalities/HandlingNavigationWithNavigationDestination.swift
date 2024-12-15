//
//  HandlingNavigationWithNavigationDestination.swift
//  Navigation
//
//  Created by Joan May on 15/12/24.
//

import SwiftUI

struct Student: Hashable {
    var id = UUID()
    let name: String
    let age: Int
}

struct HandlingNavigationWithNavigationDestination: View {
    var body: some View {
        NavigationStack {
            List(0..<100) { i in
                NavigationLink("Select \(i)", value: i)
            }
                    .navigationDestination(for: Int.self) {selection in
                        Text("You selected \(selection)")
            }
                    .navigationDestination(for: Student.self) { student in
                        Text("You selected \(student.name)")
                    }
        }
    }
}

#Preview {
    HandlingNavigationWithNavigationDestination()
}
