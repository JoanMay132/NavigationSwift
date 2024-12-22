//
//  MakingNavigationTitleEditable.swift
//  Navigation
//
//  Created by Joan May on 22/12/24.
//

import SwiftUI

struct MakingNavigationTitleEditable: View {
    
    @State private var title = "SwiftUI"
    
    var body: some View {
        NavigationStack {
            Text("Hello, World!")

            .navigationTitle($title)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    MakingNavigationTitleEditable()
}
