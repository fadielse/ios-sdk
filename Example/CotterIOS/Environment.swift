//
//  Environment.swift
//  CotterIOS_Example
//
//  Created by Raymond Andrie on 4/3/20.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation

class Environment {
    static let shared = Environment()
    let env = ProcessInfo.processInfo.environment
    
    var COTTER_API_KEY_ID: String? {
        return env["082fd843-7de7-4566-a35d-40005f1e23eb"]
    }
    
    var COTTER_API_SECRET_KEY: String? {
        return nil
    }
    
    var DEV_MODE: String? {
        return env["DEV_MODE"]
    }
}
