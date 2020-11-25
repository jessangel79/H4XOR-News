//
//  NetworkManager.swift
//  H4XOR News
//
//  Created by Angelique Babin on 25/11/2020.
//

import Foundation

class NetworkManager: ObservableObject {

    let url = "http://hn.algolia.com/api/v1/search?tags=front_page"
    @Published var posts = [Post]()
    
    func fetchData() {
        guard let url = URL(string: url) else { return }
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { (data, response, error) in
            if error == nil {
                let decoder = JSONDecoder()
                if let safeData = data {
                    do {
                        let results = try decoder.decode(Results.self, from: safeData)
                        DispatchQueue.main.async {
                            self.posts = results.hits
//                            print(self.posts)
                        }
                    } catch {
                        print(error)
                    }
                }
            }
        }
        task.resume()
    }
}
