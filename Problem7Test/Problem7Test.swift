//
//  Problem7.swift
//  Problem7
//
//  Created by Sebastian Tleye on 06/04/2019.
//  Copyright © 2019 Humileants. All rights reserved.
//

import XCTest
@testable import DailyCodingProblem

class Problem7Test: XCTestCase {
    
    func testSolve() {
        XCTAssertEqual(Problem7.solve("111"), 3)
        XCTAssertEqual(Problem7.solve("66666"), 1)
        XCTAssertEqual(Problem7.solve("5552035"), 1)
        XCTAssertEqual(Problem7.solve("12345"), 3)
        XCTAssertEqual(Problem7.solve("1111111"), 21)
        XCTAssertEqual(Problem7.solve("2626262"), 8)
    }
    
}
