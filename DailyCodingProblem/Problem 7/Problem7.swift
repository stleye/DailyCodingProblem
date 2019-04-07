//
//  Problem7.swift
//  DailyCodingProblem
//
//  Created by Sebastian Tleye on 05/04/2019.
//  Copyright © 2019 Humileants. All rights reserved.
//

import Foundation

class Problem7 {

    static let twoPathCharacters = "12"

    static func solve(_ str: String) -> Int {
        let root = Node<String>(value: "Start")
        buildTreeFor(str, root)
        let result = numberOfLeafs(root)
        return result
    }

    private static func numberOfLeafs(_ node: Node<String>) -> Int {
        if node.leftChild == nil && node.rightChild == nil {
            return 1
        }
        var left = 0
        var right = 0
        if node.leftChild != nil {
            left = numberOfLeafs(node.leftChild!)
        }
        if node.rightChild != nil {
            right = numberOfLeafs(node.rightChild!)
        }
        return left + right
    }

    private static func buildTreeFor(_ str: String, _ root: Node<String>) {
        if str[0] == "0" {
            return
        }
        if str.count <= 1 {
            root.leftChild = Node<String>(value: String(str))
            return
        }
        if str[1] == "0" {
            root.leftChild = Node<String>(value: String(str[0...1]))
            if str.count >= 3 {
                buildTreeFor(String(str[str.index(str.startIndex, offsetBy: 2)...]), root.leftChild!)
            }
        } else if twoPathCharacters.contains(str[1]) || Int(str[0...1])! <= 26 {
            root.leftChild = Node<String>(value: String(str[0]))
            buildTreeFor(String(str[str.index(str.startIndex, offsetBy: 1)...]), root.leftChild!)
            if Int(str[0...1])! <= 26 {
                root.rightChild = Node<String>(value: String(str[0...1]))
                if str.count > 2 {
                    buildTreeFor(String(str[str.index(str.startIndex, offsetBy: 2)...]), root.rightChild!)
                }
            }
        } else {
            root.leftChild = Node<String>(value: String(str[0]))
            buildTreeFor(String(str[str.index(str.startIndex, offsetBy: 1)...]), root.leftChild!)
        }
    }

}
