//
//  User.swift
//  Instragram-Clone
//
//  Created by Sunanta Chuathue on 22/10/21.
//

import Firebase
import FirebaseFirestoreSwift

struct User: Decodable, Identifiable {
    let username: String
    let email: String
    let fullname: String
    var profileImageURL : String?
    @DocumentID var id: String?
    var stats : UserStatsData?
    
    mutating func updateProfileImageURL(url : String) {
        profileImageURL = url
    }
    
    var isCurrentUse:Bool {
        AuthViewModel.shared.userSession?.uid == id
    }
    
    var didFollow: Bool? = false
    var bio: String?
}

struct UserStatsData : Decodable {
    var following: Int
    var followers: Int
    var posts: Int
}
