//
//  DetailView.swift
//  H4XOR News
//
//  Created by Angelique Babin on 25/11/2020.
//

import SwiftUI

struct DetailView: View {
        
    let url: String?
    
    var body: some View {
        if let url = url {
            WebView(urlString: url)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.fr")
    }
}
