//
//  AuthViewModel.swift
//  ListMovie
//
//  Created by TuPT on 13/09/2022.
//

import Foundation
class AuthViewModel:ObservableObject{
    @Published var isActive:Bool = false
    
    init(){
        print("init view model")
        self.isActive = true
    }
}
