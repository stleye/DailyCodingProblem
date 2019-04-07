//
//  Problem8Test.swift
//  Problem8Test
//
//  Created by Sebastian Tleye on 07/04/2019.
//  Copyright © 2019 Humileants. All rights reserved.
//

import XCTest
@testable import DailyCodingProblem

class Problem8Test: XCTestCase {

    func testSolve1() {
        let tree = Node<Int>(value: 0)
        tree.leftChild = Node<Int>(value: 1)
        tree.rightChild = Node<Int>(value: 0)
        tree.rightChild?.leftChild = Node<Int>(value: 1)
        tree.rightChild?.rightChild = Node<Int>(value: 0)
        tree.rightChild?.leftChild?.leftChild = Node<Int>(value: 1)
        tree.rightChild?.leftChild?.rightChild = Node<Int>(value: 1)
        XCTAssertEqual(Problem8.solve(tree), 5)
    }
    
    func testSolve2() {
        let tree = Node<Int>(value: 1)
        tree.leftChild = Node<Int>(value: 1)
        tree.rightChild = Node<Int>(value: 1)
        tree.rightChild?.leftChild = Node<Int>(value: 1)
        tree.rightChild?.rightChild = Node<Int>(value: 1)
        tree.rightChild?.leftChild?.leftChild = Node<Int>(value: 1)
        tree.rightChild?.leftChild?.rightChild = Node<Int>(value: 1)
        XCTAssertEqual(Problem8.solve(tree), 7)
    }

    func testSolve3() {
        let tree = Node<Int>(value: 1)
        tree.leftChild = Node<Int>(value: 2)
        tree.rightChild = Node<Int>(value: 3)
        XCTAssertEqual(Problem8.solve(tree), 2)
    }

}
