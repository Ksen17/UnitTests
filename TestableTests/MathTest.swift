//
//  MathTest.swift
//  TestableTests
//
//  Created by Ilia on 08/05/2019.
//  Copyright © 2019 Ilia Stukalov. All rights reserved.
//

import XCTest

class MathTest: XCTestCase {

    var math: Math!
    
    override func setUp() {
        math = Math()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        math = nil
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        XCTAssertTrue(math.degree(baseNumber: 2, degree: 2) == 4)
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testDegreeZero() {
        let degree = math.degree(baseNumber: 10, degree: 0)
        XCTAssertTrue(degree == 1)
    }
    
    func testDegreeOne() {
        XCTAssertTrue(math.degree(baseNumber: 5, degree: 1) == 5)
    }
    
    func testMore() {
        XCTAssertGreaterThan(math.degree(baseNumber: 5, degree: 2), 5)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
