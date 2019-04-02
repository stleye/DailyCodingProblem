//
//  Problem4Test.swift
//  Problem4Test
//
//  Created by Sebastian Tleye on 02/04/2019.
//  Copyright © 2019 Humileants. All rights reserved.
//

import XCTest
@testable import DailyCodingProblem

class Problem4Test: XCTestCase {

    func testSolve() {
        var v = [1, 2, 3, 4, 5]
        XCTAssertEqual(Problem4.solve(&v), 6)
        v = [1, 2, 3, 4, 5, 6, 7, 8, 8, 8]
        XCTAssertEqual(Problem4.solve(&v), 9)
        v = [1, 2, 3, 10, 5, 6, 7, 8, 8, 8]
        XCTAssertEqual(Problem4.solve(&v), 4)
        v = [2, 2, 3, 5, 5, 6, 7, 8, 8, 8]
        XCTAssertEqual(Problem4.solve(&v), 1)
        v = [-2, -2, -3, -5, -5, 6, 7, 8, 8, 8]
        XCTAssertEqual(Problem4.solve(&v), 1)
        v = [-2, -2, -3, -5, -5, 6, 7, 1, 8, 8]
        XCTAssertEqual(Problem4.solve(&v), 2)
        v = [-2]
        XCTAssertEqual(Problem4.solve(&v), 1)
        v = [0]
        XCTAssertEqual(Problem4.solve(&v), 1)
        v = [2]
        XCTAssertEqual(Problem4.solve(&v), 1)
        v = [1]
        XCTAssertEqual(Problem4.solve(&v), 2)
        v = [1, 2, 3, -1, -2, -3]
        XCTAssertEqual(Problem4.solve(&v), 4)
    }

}
