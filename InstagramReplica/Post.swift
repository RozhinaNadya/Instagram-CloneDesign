//
//  Post.swift
//  InstagramReplica
//
//  Created by Надежда on 2022-07-25.
//

import Foundation

struct Post: Identifiable {
    let id = UUID()
    
    let userName: String
    let userImage: String
    let imageName: String
    let likes: Int
    let description: String
    let timestamp: String
    
    static let preview: [Post] = Array(repeating: Post(userName: "Xcoder", userImage: "avatar", imageName: "img5", likes: 100, description: "Lovely Stockholm", timestamp: "5 MINUTES AGO"), count: 10)
}
