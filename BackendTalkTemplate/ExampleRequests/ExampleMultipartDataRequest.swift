//
//  ExampleMultipartDataRequest.swift
//  BackendTalkTemplate
//
//  Created by Алексей Россошанский on 21.09.2018.
//  Copyright © 2018 AlexeyRossoshasky. All rights reserved.
//

import Foundation
import Alamofire

class ExampleMultipartDataRequest: RequestProtocol {
    
    private var imageList: [UIImage]
    
    init(imageList: [UIImage]) {
        self.imageList = imageList
    }
    
    func getUrl() -> String {
        return "exampleurl.com/..."
    }
    
    func isAbsoluteUrl() -> Bool {
        //true, if getUrl returns full url, fall if only opendix -> /url
        return false
    }
    
    func getMethod() -> HTTPMethod {
        return HTTPMethod.post
    }
    
    func getParams() -> Parameters? {
        let parameters: [String: Any] = ["auth": "exampleAuth",
                                         "photo_list": self.imageList]
        return parameters
    }
}
