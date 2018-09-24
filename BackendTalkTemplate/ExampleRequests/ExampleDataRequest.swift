//
//  ExampleDataRequest.swift
//  BackendTalkTemplate
//
//  Created by Алексей Россошанский on 21.09.2018.
//  Copyright © 2018 AlexeyRossoshasky. All rights reserved.
//

import Foundation
import Alamofire

class ExampleDataRequest: RequestProtocol {
    func getUrl() -> String {
        return "exampleurl.com/..."
    }
    
    func isAbsoluteUrl() -> Bool {
        //true, if getUrl returns full url, fall if only opendix -> /url
        return false
    }
    
    func getMethod() -> HTTPMethod {
        return .get
    }
    
    func getParams() -> Parameters? {
        let parameters: [String: Any] = ["auth": "exampleAuth",
                                         "other": "exampleOther"]
        return parameters
    }
}
