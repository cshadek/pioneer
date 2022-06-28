//
//  OrderedDictionary+Dictionary.swift
//  Pioneer
//
//  Created by d-exclaimation on 4:33 PM.
//

import struct OrderedCollections.OrderedDictionary

extension OrderedDictionary {
    /// Turning OrderedDictionary into a regular one as both aren't API compatible.
    public func unordered() -> [Key: Value] {
        var res = [Key: Value]()
        forEach { (key, val) in
            res[key] = val
        }
        return res
    }
}
