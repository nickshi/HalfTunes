//
//  HalfTunesUITests.swift
//  HalfTunesUITests
//
//  Created by Nick Shi on 3/20/19.
//  Copyright © 2019 Ray Wenderlich. All rights reserved.
//

import XCTest

class HalfTunesUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        
        let app = XCUIApplication()
        app.searchFields["Song name or artist"].tap()

        XCTAssert(1 == 1, "Equal failed")
    }

}
