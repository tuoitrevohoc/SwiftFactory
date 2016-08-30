//
//  Container.swift
//  AppWork
//
//  Created by Tran Thien Khiem on 7/25/16.
//  Copyright © 2016 Tran Thien Khiem. All rights reserved.
//

import UIKit

///
/// the container
public struct Container {
    
    /// the resolver
    private static var resolver: DependencyResolver?
    
    /// 
    /// register the resolver
    public static func register(resolver: DependencyResolver) {
        self.resolver = resolver
    }
    
    ///
    /// resolve for type
    public static func resolve<Type>() -> Type {
        return resolver!.resolve()
    }

}
