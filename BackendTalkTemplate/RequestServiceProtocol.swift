//
//  RequestServiceProtocol.swift
//  BackendTalkTemplate
//
//  Created by Алексей Россошанский on 21.09.2018.
//  Copyright © 2018 AlexeyRossoshasky. All rights reserved.
//

import Foundation
import Alamofire

public protocol RequestServiceProtocol: class {
    
    func makeJsonRequest<T>(request: RequestProtocol,
                              responseType: T.Type,
                              onComplete: @escaping (_ response: T, _ statusCode: Int?) -> Void,
                              onError: @escaping (_ error: Error?, _ statusCode: Int?, _ response: T?) -> Void,
                              queue: DispatchQueue,
                              codingStrategy: JSONDecoder.KeyDecodingStrategy) where T: Decodable
    
    func makeDataRequest(request: RequestProtocol,
                         onComplete: @escaping (_ data: Data?, _ statusCode: Int?) -> Void,
                         onError: @escaping (_ error: Error?, _ statusCode: Int?, _ data: Data?) -> Void,
                         queue: DispatchQueue)
    
    func makeVoidRequest(request: RequestProtocol,
                         onComplete: @escaping (_ statusCode: Int?) -> Void,
                         onError: @escaping (_ error: Error?, _ statusCode: Int?) -> Void,
                         queue: DispatchQueue)
    
    func makeMultipartDataRequest<T>(request: RequestProtocol,
                                       responseType: T.Type,
                                       onComplete: @escaping (_ response: T, _ statusCode: Int?) -> Void,
                                       onError: @escaping (_ error: Error?, _ statusCode: Int?, _ response: T?) -> Void,
                                       onEncodingError: @escaping (_ error: Error?) -> Void,
                                       queue: DispatchQueue,
                                       codingStrategy: JSONDecoder.KeyDecodingStrategy) where T: Decodable
}
