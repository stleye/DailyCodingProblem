//
//  Problem 4.swift
//  DailyCodingProblem
//
//  Created by Sebastian Tleye on 02/04/2019.
//  Copyright © 2019 Humileants. All rights reserved.
//

import Foundation

class Problem4 {

    static func solve(_ v: inout [Int]) -> Int {
        let isValid = { (_ n: Int) in n > 0 && n <= v.count }
        var aux = 0
        for (index, elem) in v.enumerated() {
            if elem > 0 && elem <= v.count {
                if isValid(v[index]) {
                    if v[index] > aux {
                        aux = v[index]
                    }
                    v[elem-1] = elem
                } else {
                    v[index] = 0
                }
            }
        }
        if aux > 0 {
            v[aux-1] = aux
        }
        for index in v.indices {
            if v[index] != index+1 {
                return index+1
            }
        }
        return v.count+1
    }

}
