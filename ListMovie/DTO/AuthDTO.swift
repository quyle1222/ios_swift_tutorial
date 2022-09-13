//
//  AuthDTO.swift
//  ListMovie
//
//  Created by TuPT on 12/09/2022.
//

import Foundation

struct AuthDTO : Encodable,Decodable{
    var username:String
    var password:String
}
