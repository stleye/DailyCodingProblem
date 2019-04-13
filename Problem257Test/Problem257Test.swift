//
//  Problem257Test.swift
//  Problem257Test
//
//  Created by Sebastian Tleye on 13/04/2019.
//  Copyright © 2019 Humileants. All rights reserved.
//

import XCTest
@testable import DailyCodingProblem

class Problem257Test: XCTestCase {
    
    func testSolve() {
        XCTAssert(Problem257.solve([]) == (nil, nil))
        XCTAssert(Problem257.solve([1]) == (nil, nil))
        XCTAssert(Problem257.solve([1, 3]) == (nil, nil))
        XCTAssert(Problem257.solve([1, 2, 3, 4, 5, 6, 7, 8, 9]) == (nil, nil))
        XCTAssert(Problem257.solve([3, 7, 5, 6, 9]) == (1, 3))
        XCTAssert(Problem257.solve([9, 8, 7, 6, 5, 4, 3, 2, 1]) == (0, 8))
        XCTAssert(Problem257.solve([1, 2, 3, 4, 8, 5, 7, 6, 10, 14, 13]) == (4, 10))
        XCTAssert(Problem257.solve([2, 1, 3, 4, 8, 5, 7, 6, 10, 14, 9]) == (0, 10))
        XCTAssert(Problem257.solve([2, 1, 3, 4, 8, 5, 7, 20, 21, 22, 23]) == (0, 6))
    }

}
