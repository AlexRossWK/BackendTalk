//
//  BackgroundPrinter.swift
//  BackendTalkTemplate
//
//  Created by Алексей Россошанский on 21.09.2018.
//  Copyright © 2018 AlexeyRossoshasky. All rights reserved.
//

import Foundation

fileprivate struct BackgroundPrinter: Printer {
    public init() {}
    
    public func print(_ string: String, phase: Phase) {
        DispatchQueue.global(qos: .utility).async {
            Swift.print(string)
        }
    }
}
