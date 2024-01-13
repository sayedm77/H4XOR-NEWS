//
//  Results.swift
//  H4XOR News
//
//  Created by elsayed mansour mahfouz on 12/31/23.
//  Copyright © 2023 elsayed mansour mahfouz. All rights reserved.
//

import Foundation
struct Results : Decodable {
    let hits : [Post]
    
    
}
struct Post : Decodable , Identifiable {
    var id : String{
        return objectID
    }
    let objectID : String
    let title : String
    let url : String?
    let points : Int
}
