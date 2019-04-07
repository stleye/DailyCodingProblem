//
//  Problem8.swift
//  DailyCodingProblem
//
//  Created by Sebastian Tleye on 06/04/2019.
//  Copyright © 2019 Humileants. All rights reserved.
//

import Foundation

class Problem8 {

    static func solve(_ root: Node<Int>) -> Int {
        return countTrues(buildIsUnival(root))
    }

    static private func countTrues(_ root: Node<Bool>) -> Int {
        if root.leftChild == nil && root.rightChild == nil {
            return root.value ? 1 : 0
        }
        var res = root.value ? 1 : 0
        if root.leftChild != nil {
            res += countTrues(root.leftChild!)
        }
        if root.rightChild != nil {
            res += countTrues(root.rightChild!)
        }
        return res
    }

    static private func buildIsUnival(_ root: Node<(Int)>) -> Node<Bool> {
        if root.leftChild == nil && root.rightChild == nil {
            return Node<Bool>(value: true)
        }
        var leftTree: Node<Bool>?
        var rightTree: Node<Bool>?
        if root.leftChild != nil {
            leftTree = buildIsUnival(root.leftChild!)
        }
        if root.rightChild != nil {
            rightTree = buildIsUnival(root.rightChild!)
        }
        var rootAndChildHaveSameValue = root.value == root.leftChild?.value
        rootAndChildHaveSameValue = rootAndChildHaveSameValue && root.value == root.rightChild?.value
        let leftTreeIsUnival = leftTree?.value ?? true
        let rightTreeIsUnival = rightTree?.value ?? true

        let result = Node<Bool>(value: rootAndChildHaveSameValue && leftTreeIsUnival && rightTreeIsUnival)
        result.leftChild = leftTree
        result.rightChild = rightTree
        return result
    }

}
