//
//  Common.swift
//  DailyCodingProblem
//
//  Created by Sebastian Tleye on 05/04/2019.
//  Copyright © 2019 Humileants. All rights reserved.
//

import Foundation

indirect enum BinaryTree<T: Equatable>: Equatable {
    static func == (lhs: BinaryTree<T>, rhs: BinaryTree<T>) -> Bool {
        switch (lhs, rhs) {
        case (.Nil, .Nil):
            return true
        case (let .Bin(l1, v1, r1), let .Bin(l2, v2, r2)):
            return v1 == v2 && l1 == l2 && r1 == r2
        default:
            return false
        }
    }
    
    case Nil
    case Bin(BinaryTree<T>, T, BinaryTree<T>)
}
