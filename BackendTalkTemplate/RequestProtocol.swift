//
//  RequestProtocol.swift
//  BackendTalkTemplate
//
//  Created by Алексей Россошанский on 21.09.2018.
//  Copyright © 2018 AlexeyRossoshasky. All rights reserved.
//

import Foundation
import Alamofire

public protocol RequestProtocol {
    func getUrl() -> String
    func isAbsoluteUrl() -> Bool
    func getMethod() -> HTTPMethod
    func getParams() -> Parameters?
}
