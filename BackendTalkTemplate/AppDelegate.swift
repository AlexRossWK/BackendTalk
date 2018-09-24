//
//  AppDelegate.swift
//  BackendTalkTemplate
//
//  Created by Алексей Россошанский on 21.09.2018.
//  Copyright © 2018 AlexeyRossoshasky. All rights reserved.
//

import UIKit
import Alamofire

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let configuration = URLSessionConfiguration.default
        configuration.timeoutIntervalForRequest = 300
        let requestService = RequestService(queue: DispatchQueue.global(qos: .utility),
                                            baseUrl: "https://exampleurl.com",
                                            headersDelegate: self,
                                            authHandler: self,
                                            configuration: configuration) { request in
                                                request.log(level: .info,
                                                            options: [.onlyDebug, .jsonPrettyPrint, .includeSeparator],
                                                            printer: BackgroundPrinter())
                                                
                                                
                                                return true
        }
    }
}

extension AppDelegate: RequestHeadersDelegate {
    func getHeaders() -> HTTPHeaders? {
        var headers = HTTPHeaders()
        headers["ExampleHeader"] = "Header"
        return headers
    }
}

extension AppDelegate: AuthHandlerProtocol {
    func isAuthorizationExpired(response: HTTPURLResponse?) -> Bool {
        return response?.statusCode == 401
    }
    
    func authorizationExpired() {
        print("Authorization expired ... ")
    }
    
}
