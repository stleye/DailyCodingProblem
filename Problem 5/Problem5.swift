//
//  Problem 5.swift
//  DailyCodingProblem
//
//  Created by Sebastian Tleye on 02/04/2019.
//  Copyright © 2019 Humileants. All rights reserved.
//

import Foundation

class Problem5 {

    func cons<T>(_ a: T, _ b: T) -> ((T, T) -> T) -> T {
        func pair(_ f: (T, T) -> T) -> T {
            return f(a, b)
        }
        return pair
    }

    func car<T>(_ f: ((T, T) -> T) -> T) -> T {
        func left(_ a: T, _ b: T) -> T {
            return a
        }
        return f(left)
    }

    func cdr<T>(_ f: ((T, T) -> T) -> T) -> T {
        func right(_ a: T, _ b: T) -> T {
            return b
        }
        return f(right)
    }
}
