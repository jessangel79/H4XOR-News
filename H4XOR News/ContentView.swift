//
//  ContentView.swift
//  H4XOR News
//
//  Created by Angelique Babin on 25/11/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            Text("Hello, world!")
            Text("Good bye world")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
    }
}
