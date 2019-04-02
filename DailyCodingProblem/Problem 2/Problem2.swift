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

    // Time complexity: O(N^2)
    // Space complexity: O(N)
    static func solveWithoutDivision(_ v: [Int]) -> [Int] {
        var result = Array(repeating: 0, count: v.count)
        for i in 0..<v.count {
            var product = 1
            for j in 0..<v.count where j != i {
                product *= v[j]
            }
            result[i] = product
        }
        return result
    }

}
