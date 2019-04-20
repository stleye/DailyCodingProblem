//
//  Problem12Test.swift
//  Problem12Test
//
//  Created by Sebastian Tleye on 20/04/2019.
//  Copyright © 2019 Humileants. All rights reserved.
//

import XCTest
@testable import DailyCodingProblem

class Problem12Test: XCTestCase {

    func testSolveA() {
        let result = Problem12A.solve(4)
        XCTAssertEqual(result.count, 5)
        XCTAssertTrue(result.contains([1, 1, 1, 1]))
        XCTAssertTrue(result.contains([1, 1, 2]))
        XCTAssertTrue(result.contains([1, 2, 1]))
        XCTAssertTrue(result.contains([2, 1, 1]))
        XCTAssertTrue(result.contains([2, 2]))
    }

    func testSolveAOptimized() {
        let result = Problem12A.solveOptimized(4)
        XCTAssertEqual(result.count, 5)
        XCTAssertTrue(result.contains([1, 1, 1, 1]))
        XCTAssertTrue(result.contains([1, 1, 2]))
        XCTAssertTrue(result.contains([1, 2, 1]))
        XCTAssertTrue(result.contains([2, 1, 1]))
        XCTAssertTrue(result.contains([2, 2]))
    }

    func testSolveB() {
        var result = Problem12B.solve(4, [1, 2])
        XCTAssertEqual(result.count, 5)
        XCTAssertTrue(result.contains([1, 1, 1, 1]))
        XCTAssertTrue(result.contains([1, 1, 2]))
        XCTAssertTrue(result.contains([1, 2, 1]))
        XCTAssertTrue(result.contains([2, 1, 1]))
        XCTAssertTrue(result.contains([2, 2]))

        result = Problem12B.solve(4, [1, 2, 3])
        XCTAssertEqual(result.count, 7)
        XCTAssertTrue(result.contains([1, 1, 1, 1]))
        XCTAssertTrue(result.contains([1, 1, 2]))
        XCTAssertTrue(result.contains([1, 2, 1]))
        XCTAssertTrue(result.contains([2, 1, 1]))
        XCTAssertTrue(result.contains([2, 2]))
        XCTAssertTrue(result.contains([1, 3]))
        XCTAssertTrue(result.contains([3, 1]))
    }

    func testSolveBOptimized() {
        var result = Problem12B.solveOptimized(4, [1, 2])
        XCTAssertEqual(result.count, 5)
        XCTAssertTrue(result.contains([1, 1, 1, 1]))
        XCTAssertTrue(result.contains([1, 1, 2]))
        XCTAssertTrue(result.contains([1, 2, 1]))
        XCTAssertTrue(result.contains([2, 1, 1]))
        XCTAssertTrue(result.contains([2, 2]))

        result = Problem12B.solve(4, [1, 2, 3])
        XCTAssertEqual(result.count, 7)
        XCTAssertTrue(result.contains([1, 1, 1, 1]))
        XCTAssertTrue(result.contains([1, 1, 2]))
        XCTAssertTrue(result.contains([1, 2, 1]))
        XCTAssertTrue(result.contains([2, 1, 1]))
        XCTAssertTrue(result.contains([2, 2]))
        XCTAssertTrue(result.contains([1, 3]))
        XCTAssertTrue(result.contains([3, 1]))
    }

}
