//
//  VersionTests.swift
//  VersionTests
//
//  Created by ZhgChgLi on 2020/12/14.
//

import XCTest
@testable import Version

class VersionTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        try! Version("1.0.0")
    }

}
