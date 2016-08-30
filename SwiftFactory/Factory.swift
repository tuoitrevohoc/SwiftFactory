//
//  Factory.swift
//  AppWork
//
//  Created by Tran Thien Khiem on 7/25/16.
//  Copyright © 2016 Tran Thien Khiem. All rights reserved.
//

import Foundation

///
/// the global factory
public struct Factory: DependencyResolver {
    
    ///
    /// the prototype for resolving method
    public typealias ResolvingMethod = (DependencyResolver) -> Any
    
    ///
    /// entries of all registered
    private var entries = [String: ResolvingMethod]()

    ///
    /// initialize the factory
    public init() {
        
    }
    
    ///
    /// register a protocol
    /// - parameter type: the type of the object
    /// - parameter resolveBy
    public mutating func register<Protocol>(type: Protocol.Type,
                  resolvedBy resolvingMethod: ResolvingMethod) {
        entries["\(type)"] = resolvingMethod
    }
    
    ///
    /// resolve an instance of the expected type
    ///
    public func resolve<Type>() -> Type {
        var result: Type? = nil
        
        if let resolvingMethod = entries["\(Type.self)"] {
            let instance = resolvingMethod(self)
            result = instance as? Type
        } else {
            assertionFailure("Can't resolve dependency for \(Type.self)")
        }
        
        return result!
    }
}
