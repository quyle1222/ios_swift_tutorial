//
//  User.swift
//  ListMovie
//
//  Created by TuPT on 08/09/2022.
//

import Foundation

class User : ObservableObject{
   @Published var username:String
   @Published var password:String
    
    init(username:String,password:String){
        self.username = username
        self.password = password
    }
}
