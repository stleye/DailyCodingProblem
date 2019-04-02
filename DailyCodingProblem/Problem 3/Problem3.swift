//
//  Problem3.swift
//  DailyCodingProblem
//
//  Created by Sebastian Tleye on 02/04/2019.
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

class Problem3 {

    static func serialize(_ bt: BinaryTree<String>) -> String {
        switch bt {
        case .Nil:
            return ""
        case .Bin(let left, let value, let right):
            return "\(value)(\(serialize(left)))(\(serialize(right)))"
        }
    }

    static func deserialize(_ serializedTree: String) -> BinaryTree<String> {
        if serializedTree.isEmpty { return .Nil }
        if !serializedTree.contains(where: { $0 == "(" || $0 == ")" }) { return .Bin(.Nil, serializedTree, .Nil) }
        let leftTreeOpeningIndex = serializedTree.firstIntegerIndex(of: "(")!
        let rootStr = serializedTree[0..<leftTreeOpeningIndex]
        var leftTreeStr = ""
        var rightTreeStr = ""

        var openings = 0
        let serializedTreeWithoutRoot = serializedTree[leftTreeOpeningIndex..<serializedTree.count]
        for (index, char) in serializedTreeWithoutRoot.enumerated() {
            if char == "(" {
                openings += 1
            } else if char == ")" {
                openings -= 1
            }
            if openings == 0 {
                leftTreeStr = trimmingLeftAndRightParenthesis(serializedTreeWithoutRoot[0...index])
                rightTreeStr = trimmingLeftAndRightParenthesis(serializedTreeWithoutRoot[index+1..<serializedTreeWithoutRoot.count])
                break
            }
        }
        return BinaryTree<String>.Bin(deserialize(leftTreeStr), rootStr, deserialize(rightTreeStr))
    }

    private static func trimmingLeftAndRightParenthesis(_ expr: String) -> String {
        let leftIndex = expr.first == "(" ? 1 : 0
        let rightIndex = expr.last == ")" ? expr.count-1 : expr.count
        return expr[leftIndex..<rightIndex]
    }

}
