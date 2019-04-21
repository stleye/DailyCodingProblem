//
//  Problem257.swift
//  DailyCodingProblem
//
//  Created by Sebastian Tleye on 13/04/2019.
//  Copyright © 2019 Humileants. All rights reserved.
//

import Foundation

class Problem257 {

    //Time complexity O(n)
    //Space complexity O(1)
    static func solve(_ v: [Int]) -> (Int?, Int?) {
        var left: Int?
        var right: Int?
        var maxSeen = Int.min
        var minSeen = Int.max

        for i in 0..<v.count {
            maxSeen = max(maxSeen, v[i])
            if v[i] < maxSeen {
                right = i
            }
        }

        for i in (0..<v.count).reversed() {
            minSeen = min(minSeen, v[i])
            if v[i] > minSeen {
                left = i
            }
        }
        return (left, right)
    }

}
