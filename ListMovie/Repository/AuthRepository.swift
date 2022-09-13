//
//  AuthRepository.swift
//  ListMovie
//
//  Created by TuPT on 13/09/2022.
//

import Foundation
import Alamofire

class AuthRepository {
    let helper = AlomofireHelper();
    
    func login(auth:AuthDTO) -> DataRequest?{
        let data = ["username":auth.username,"password":auth.password]
        return helper.post(path: "auth/login", data: data)
    }
}
