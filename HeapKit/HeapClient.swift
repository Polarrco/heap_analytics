//
//  HeapClient.swift
//  HeapKit
//
//  Created by Ritesh Pakala on 7/22/20.
//  Copyright © 2020 Ritesh Pakala. All rights reserved.
//

import Foundation

open class HeapApp {
    static public func configure() {
        
        let options: HeapOptions = .init()
        
        #if DEBUG
        options.debug = true
        Heap.initialize("968717800", with: options)
        #else
        Heap.initialize("263824137", with: options)
        #endif
        
        
        
    }
    
    static public func track(
        _ name: String,
        parameters: [AnyHashable:Any]?) {
        
        Heap.track(
            name,
            withProperties: parameters)
    }
}
