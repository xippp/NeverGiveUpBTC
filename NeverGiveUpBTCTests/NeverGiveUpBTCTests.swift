//
//  NeverGiveUpBTCTests.swift
//  NeverGiveUpBTCTests
//
//  Created by Paul on 16/6/2566 BE.
//

import XCTest
@testable import NeverGiveUpBTC
final class NeverGiveUpBTCTests: XCTestCase {

    var vc: MainpageViewController!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        vc = MainpageViewController()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        vc = nil
    }

    func testFibonacci() {
        let result = vc.genFibonacci(input: 100)
        XCTAssertTrue(result == [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946])
    }
    
    func testEvenNumber() {
        let result = vc.genPrimeNumber(input: 100)
        XCTAssertTrue(result == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97])
    }
    
    func testfilterArray() {
        let result = vc.filter2Array(array1: [1,2,3,4,5,6,7,8,9,10], array2: [1,2,3,4,5])
        XCTAssertTrue(result == [1, 2, 3, 4, 5])
    }
    
}
