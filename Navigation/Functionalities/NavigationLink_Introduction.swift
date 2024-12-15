//
//  NavigationLink.swift
//  Navigation
//
//  Created by Joan May on 15/12/24.
//

import SwiftUI

struct DetailView : View {
    var number : Int
    
    var body : some View {
        Text("Detail View \(number)")
    }
}

struct NavigationLink_Introduction: View {
    var body: some View {
        NavigationStack {
            List(0..<100) { i in
                NavigationLink("Tap Me") {
                    DetailView(number: i)
                }
            }
        }

    }
}

#Preview {
    NavigationLink_Introduction()
}
