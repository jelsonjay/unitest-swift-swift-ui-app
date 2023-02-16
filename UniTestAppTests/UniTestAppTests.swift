//
//  UniTestAppTests.swift
//  UniTestAppTests
//
//  Created by Jelson J on 16/02/2023.
//

import XCTest
@testable import UniTestApp

final class UniTestAppTests: XCTestCase {
    
    var calculator: Calculator!
    
    override func setUp() {
    calculator = Calculator()
    }

    override func tearDown() {
    calculator = nil
    }

 
    func testAddDemo(){
        // GIVEN - ARRANGE
        var result: Int = 0
        
        // WHEN - ACT
        result = calculator.addTen(num: 20)
        
        //THEN - ASSERT
        XCTAssert(result == 40 , "This should be only a number!")
        XCTAssertTrue(result == 40)
        XCTAssertEqual(result, 40, "The result should be 40!")
    }
    
    func testMultip(){
        // GIVEN - ARRANGE
        var expected = 0
        
        // WHEN - ACT
        expected = calculator.beSquare(8)
        
        //THEN - ASSERT
        
        XCTAssertEqual(expected,  64)
    }

}
