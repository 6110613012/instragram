//
//  Post.swift
//  Instragram-Clone
//
//  Created by Sunanta Chuathue on 22/10/21.
//

import SwiftUI
import Firebase
import FirebaseFirestoreSwift

struct Post: Decodable, Identifiable {
    @DocumentID var id : String?
    let caption : String
    let timestamp : Timestamp
    var likes: Int
    let imageURL: String
    let ownerUID: String
    var ownerImageURL: String?
    let ownerUsername: String
    
    var user:User?
    var didLike: Bool? = false
}
