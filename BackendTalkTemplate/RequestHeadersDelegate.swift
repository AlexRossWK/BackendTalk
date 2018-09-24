//
//  RequestHeadersDelegate.swift
//  BackendTalkTemplate
//
//  Created by Алексей Россошанский on 21.09.2018.
//  Copyright © 2018 AlexeyRossoshasky. All rights reserved.
//

import Foundation
import Alamofire

public protocol RequestHeadersDelegate {
    func getHeaders() -> HTTPHeaders?
}
