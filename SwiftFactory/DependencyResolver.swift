//
//  DependencyResolver.swift
//  AppWork
//
//  Created by Tran Thien Khiem on 7/25/16.
//  Copyright © 2016 Tran Thien Khiem. All rights reserved.
//

import Foundation

/// dependency resolver
public protocol DependencyResolver {

    /// resolve an instance of a class
    func resolve<Type>() -> Type
}
