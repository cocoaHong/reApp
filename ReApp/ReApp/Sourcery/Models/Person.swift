//
//  Person.swift
//  Rippton
//
//  Created by yeyongping on 2017/8/15.
//  Copyright © 2017年 Rippton. All rights reserved.
//

import Foundation

protocol AutoEquatable { }

// sourcery: AutoJSONDeserializable, AutoJSONSerializable, AutoEquatable
struct Person {
    let firstName: String?
    let lastName: String?
    let age: Int
    let email: String
}

extension Person:AutoEquatable {}
