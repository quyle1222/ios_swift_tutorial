//
//  AlamofireHelper.swift
//  ListMovie
//
//  Created by TuPT on 09/09/2022.
//
import Alamofire
import SwiftyJSON
import Foundation
import UIKit



class AlomofireHelper{
    let baseUrl : String  = "http://10.20.22.173:8088/"
    
    func post (path:String, data:[String:String]) -> DataRequest? {
        return AF.request(
            baseUrl + path,
            method: .post,
            parameters: data,
            encoder: .json
        )
    }
}
