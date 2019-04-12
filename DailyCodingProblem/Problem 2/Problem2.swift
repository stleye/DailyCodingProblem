//
//  Problem 2.swift
//  DailyCodingProblem
//
//  Created by Sebastian Tleye on 02/04/2019.
//  Copyright © 2019 Humileants. All rights reserved.
//

import Foundation

class Problem2 {
    
    // Time complexity: O(N)
    // Space complexity: O(N)
    static func solve(_ v: [Int]) -> [Int] {
        var productOfAll = 1
        var zeros = 0
        for elem in v {
            if elem == 0 {
                zeros += 1
                if zeros >= 2 {
                    return Array(repeating: 0, count: v.count)
                }
            } else {
                productOfAll *= elem
            }
        }
        return v.map({ $0 == 0 ? productOfAll : (zeros == 1 ? 0 : productOfAll / $0) })
    }

    // Time complexity: O(N)
    // Space complexity: O(N)
    static func solveWithoutDivision(_ v: [Int]) -> [Int] {
        if v.isEmpty { return [] }
        if v.count == 1 { return [1] }
        var prefixes = Array.init(repeating: 1, count: v.count)
        var suffixes = Array.init(repeating: 1, count: v.count)
        
        var product = v[0]
        prefixes[0] = v[0]
        for index in 1..<v.count {
            prefixes[index] = product * v[index]
            product = prefixes[index]
        }
        product = v.last!
        suffixes[v.count-1] = product
        for index in (0..<v.count-1).reversed() {
            suffixes[index] = product * v[index]
            product = suffixes[index]
        }
        var result = Array(repeating: 0, count: v.count)
        for index in 0..<v.count {
            if index-1 >= 0 {
                if index+1 < v.count {
                    result[index] = prefixes[index-1] * suffixes[index+1]
                } else {
                    result[index] = prefixes[index-1]
                }
            } else {
                result[index] = suffixes[index+1]
            }
        }
        return result
    }

}
