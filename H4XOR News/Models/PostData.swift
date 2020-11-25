//
//  PostData.swift
//  H4XOR News
//
//  Created by Angelique Babin on 25/11/2020.
//

import Foundation

// MARK: - Results
struct Results: Decodable {
    let hits: [Post]
}

// MARK: - Hit
struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let title: String
    let url: String?
    let author: String
    let points: Int
    let objectID: String
}
