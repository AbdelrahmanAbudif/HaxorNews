//
//  Post.swift
//  HAXOR N3WZ
//
//  Created by Abdelrahman Adel on 11/5/20.
//  Copyright © 2020 Abdelrahman Adel. All rights reserved.
//

import Foundation

struct Results : Codable {
    let hits : [Post]
}

struct Post : Codable , Identifiable {
    var id : String {
        return objectID
    }
    let objectID : String
    let url : String?
    let points : Int
    let title : String
    
}

