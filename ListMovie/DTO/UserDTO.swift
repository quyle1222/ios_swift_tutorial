//
//  UserDTO.swift
//  ListMovie
//
//  Created by TuPT on 09/09/2022.
//

import Foundation

struct UserDTO : Decodable,Encodable{
    var token:String?
    var lastName:String?
    var firstName:String?
    var userName:String?
    var emailId : String?
    var userId: Int?
    var empId:Int?
}
