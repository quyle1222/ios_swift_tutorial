//
//  ApiResult.swift
//  ListMovie
//
//  Created by TuPT on 08/09/2022.
//

import Foundation
import SwiftyJSON
struct ApiResult :Decodable{
    var success: Bool?
    var message: String?
    var error: String?
    var data: JSON?
}
