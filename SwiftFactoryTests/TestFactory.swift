//
//  TestFactory.swift
//  AppWork
//
//  Created by Tran Thien Khiem on 7/25/16.
//  Copyright © 2016 Tran Thien Khiem. All rights reserved.
//

import XCTest
import SwiftFactory

protocol Drawable {
    
}

struct BasicCanvas: Drawable {
    
}

class TestFactory: XCTestCase {

    ///
    /// test factory resolving
    ///
    func testFactory_Resolving() {
        var factory = Factory()
        
        factory.register(type: Drawable.self) {
            resolver in
            return BasicCanvas()
        }
        
        _ = factory.resolve() as Drawable
        
    }
}
