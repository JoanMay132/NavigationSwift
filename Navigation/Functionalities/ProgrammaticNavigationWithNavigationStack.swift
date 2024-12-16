//
//  ProgrammaticNavigationWithNavigationStack.swift
//  Navigation
//
//  Created by Joan May on 15/12/24.
//

import SwiftUI

struct ProgrammaticNavigationWithNavigationStack: View {
    @State private var path = [Int]()
    
    var body: some View {
        NavigationStack (path: $path) {
            VStack {
                //MORE CODE TO COME
                Button("Show 32") {
                    path = [32]
                }
                Button("Show 64") {
                    path.append(64)
                }
                Button("Show 32 then 64"){
                    path = [32, 64]
                }
            }
            .navigationDestination(for: Int.self) { selection in
                    Text("Your selected \(selection)")
            }
        }
    }
}

#Preview {
    ProgrammaticNavigationWithNavigationStack()
}
