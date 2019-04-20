//
//  Problem128.swift
//  DailyCodingProblem
//
//  Created by Sebastian Tleye on 20/04/2019.
//  Copyright © 2019 Humileants. All rights reserved.
//

import Foundation

class Problem128 {

    static func solve(_ n: Int) {
        hanoi(n)
    }

    private static func hanoi(_ n: Int, _ A: String = "A", _ B: String = "B", _ C: String = "C") {
        if n > 0 {
            hanoi(n-1, A, C, B) //Moves n-1 (all except the last one) from source A to target B using spare C
            print ("Move from \(A) to \(C)") // Move action (which is only printing)
            hanoi(n-1, B, A, C) //Moves n-1 (all) from B to C
        }
    }

}
