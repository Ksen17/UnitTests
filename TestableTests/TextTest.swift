//
//  TextTest.swift
//  TestableTests
//
//  Created by Ilia on 08/05/2019.
//  Copyright © 2019 Ilia Stukalov. All rights reserved.
//

import XCTest

class TextTest: XCTestCase {

    var text: Text!
    
    override func setUp() {
        text = Text()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        text = nil
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        text.set("hello, tests!")
        XCTAssertEqual(text.value, "hello, tests!")
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testReverse() {
        text.set("abc")
        XCTAssertEqual(text.reversed(), "cba")
    }
    
    func testFind() {
        text.set("I love Swift!")
        XCTAssertTrue(text.find("Swift"))
    }
    
    func testAdd() {
        text.set("Core")
        text.add("Data")
        XCTAssertEqual(text.value, "CoreData")
    }
    
    func testNumber() {
        text.set("Swift")
        XCTAssertEqual(text.charactersNumber(), 5)
    }
    
    func testWords() {
        text.set("My Stack is full")
        XCTAssertEqual(text.words()[1], "Stack")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
