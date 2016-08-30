//
//  TestContainer.swift
//  AppWork
//
//  Created by Tran Thien Khiem on 7/25/16.
//  Copyright © 2016 Tran Thien Khiem. All rights reserved.
//

import XCTest
import SwiftFactory

class TestContainer: XCTestCase {

    
    ///
    /// test resolving an instance
    func testContainer_Resolving() {
        var factory = Factory()
        factory.register(type: Drawable.self) {
            resolver in
            return BasicCanvas()
        }
        
        Container.register(resolver: factory)
        _ = Container.resolve() as Drawable
    }
}
