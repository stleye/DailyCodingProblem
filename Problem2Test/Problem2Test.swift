//
//  Problem2Test.swift
//  Problem2Test
//
//  Created by Sebastian Tleye on 02/04/2019.
//  Copyright © 2019 Humileants. All rights reserved.
//

import XCTest
@testable import DailyCodingProblem

class Problem2Test: XCTestCase {

    func testSolve() {
        XCTAssertEqual(Problem2.solve([]), [])
        XCTAssertEqual(Problem2.solve([1, 2]), [2, 1])
        XCTAssertEqual(Problem2.solve([1, 0]), [0, 1])
        XCTAssertEqual(Problem2.solve([0, 0]), [0, 0])
        XCTAssertEqual(Problem2.solve([1, 2, 3, 4, 5]), [120, 60, 40, 30, 24])
        XCTAssertEqual(Problem2.solve([3, 2, 1]), [2, 3, 6])
        XCTAssertEqual(Problem2.solve([1, 2, 3, 0, 5, 6]), [0, 0, 0, 180, 0, 0])
        XCTAssertEqual(Problem2.solve([1, 2, 3, 0, 5, 0]), [0, 0, 0, 0, 0, 0])
    }
    
    func testSolveWithoutDivision() {
        XCTAssertEqual(Problem2.solveWithoutDivision([]), [])
        XCTAssertEqual(Problem2.solveWithoutDivision([1, 2]), [2, 1])
        XCTAssertEqual(Problem2.solveWithoutDivision([1, 0]), [0, 1])
        XCTAssertEqual(Problem2.solveWithoutDivision([0, 0]), [0, 0])
        XCTAssertEqual(Problem2.solveWithoutDivision([1, 2, 3, 4, 5]), [120, 60, 40, 30, 24])
        XCTAssertEqual(Problem2.solveWithoutDivision([3, 2, 1]), [2, 3, 6])
        XCTAssertEqual(Problem2.solveWithoutDivision([1, 2, 3, 0, 5, 6]), [0, 0, 0, 180, 0, 0])
        XCTAssertEqual(Problem2.solveWithoutDivision([1, 2, 3, 0, 5, 0]), [0, 0, 0, 0, 0, 0])
    }

    func testSolveEqualtsTestSolveWithoutDivision() {
        let v1 = [0, 1, 2, 3, 4, 5, 6, 7]
        let v2 = [0, 1, 2, 0, 4, 0, 6, 7]
        let v3: [Int] = []
        let v4 = [2]
        let v5 = [0]
        let v6 = [444, 444, 222]
        let v7 = [444, 444, 222, 0, 11, 2, 3, 4, 5]
        let v8 = [444, 0, 222, 0, 11, 2, 3, 4, 5]
        XCTAssertEqual(Problem2.solve(v1), Problem2.solveWithoutDivision(v1))
        XCTAssertEqual(Problem2.solve(v2), Problem2.solveWithoutDivision(v2))
        XCTAssertEqual(Problem2.solve(v3), Problem2.solveWithoutDivision(v3))
        XCTAssertEqual(Problem2.solve(v4), Problem2.solveWithoutDivision(v4))
        XCTAssertEqual(Problem2.solve(v5), Problem2.solveWithoutDivision(v5))
        XCTAssertEqual(Problem2.solve(v6), Problem2.solveWithoutDivision(v6))
        XCTAssertEqual(Problem2.solve(v7), Problem2.solveWithoutDivision(v7))
        XCTAssertEqual(Problem2.solve(v8), Problem2.solveWithoutDivision(v8))
    }

}
