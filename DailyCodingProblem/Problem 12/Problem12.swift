//
//  Problem12.swift
//  DailyCodingProblem
//
//  Created by Sebastian Tleye on 19/04/2019.
//  Copyright © 2019 Humileants. All rights reserved.
//

import Foundation

class Problem12A {

    //Recursive solution - Recalculating solutions, not efficient
    static func solve(_ n: Int) -> [[Int]] {
        if n == 0 { return [[]] }
        if n == 1 { return [[1]] }
        let r1 = solve(n-1).map({ [1] + $0 })
        let r2 = solve(n-2).map({ [2] + $0 })
        return  r1 + r2
    }

    //Dynamic Programming - Building array from previous pre-computed values
    //Time Complexity O(n)
    static func solveOptimized(_ n: Int) -> [[Int]] {
        if n == 0 { return [] }
        var prevPrev: [[Int]] = [[]]
        var prev: [[Int]] = [[1]]
        for _ in 2...n {
            let r1 = prev.map({ [1] + $0 })
            let r2 = prevPrev.map({ [2] + $0 })
            prevPrev = prev
            prev = r1 + r2
        }
        return prev
    }

}

class Problem12B {

    static func solve(_ n: Int, _ validJumps: [Int]) -> [[Int]] {
        if n < 0 { return [] }
        if n == 0 { return [[]] }
        var r: [[[Int]]] = []
        for jump in validJumps {
            let s = solve(n-jump, validJumps)
            if !s.isEmpty {
                r.append(s.map({ [jump] + $0 }))
            }
        }
        return Array(r.joined())
    }

    static func solveOptimized(_ n: Int, _ validJumps: [Int]) -> [[Int]] {
        var cache: [[[Int]]] = Array(repeating: [], count: n+1)
        cache[0] = [[]]
        for i in 1...n {
            for jump in validJumps {
                if i-jump >= 0 {
                    cache[i] = cache[i] + cache[i-jump].map( { [jump] + $0 } )
                }
            }
        }
        return cache[n]
    }

}
