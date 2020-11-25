//
//  AlertButton.swift
//  H4XOR News
//
//  Created by Angelique Babin on 25/11/2020.
//

import SwiftUI

struct AlertButton: View {
    
    @State private var showingAlert = false
    
    var body: some View {
        Button(action: {
            self.showingAlert = true
        }, label: {
            Text("Show Alert")
        })
        .alert(isPresented: $showingAlert, content: {
            Alert(title: Text("No website"), message: Text("Sorry, there is no website !"), dismissButton: .default(Text("Got it !")))
        })
    }
}

struct AlertButton_Previews: PreviewProvider {
    static var previews: some View {
        AlertButton()
            .previewLayout(.sizeThatFits)
    }
}
