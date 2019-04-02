//
//  Problem3Test.swift
//  Problem3Test
//
//  Created by Sebastian Tleye on 02/04/2019.
//  Copyright © 2019 Humileants. All rights reserved.
//

import XCTest
@testable import DailyCodingProblem

class Problem3Test: XCTestCase {

    func testSerializeDeserializeFirstBT() {
        let bt: BinaryTree<String> = .Bin(.Bin(.Bin(.Nil, "left.left", .Nil), "left", .Nil), "root", .Bin(.Nil, "right", .Nil))
        XCTAssertEqual(bt, Problem3.deserialize(Problem3.serialize(bt)))
    }
    
    func testSerializeDeserializeSecondBT() {
        let b1: BinaryTree<String> = .Bin(.Bin(.Nil, "4", .Nil), "2", .Bin(.Nil, "5", .Nil))
        let b2: BinaryTree<String> = .Bin(.Bin(.Nil, "6", .Nil), "3", .Bin(.Nil, "7", .Nil))
        let b3: BinaryTree<String> = .Bin(b1, "1", b2)
        XCTAssertEqual(b3, Problem3.deserialize(Problem3.serialize(b3)))
    }

}
