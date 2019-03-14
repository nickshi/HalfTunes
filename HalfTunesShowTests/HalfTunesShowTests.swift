//
//  HalfTunesShowTests.swift
//  HalfTunesShowTests
//
//  Created by Nick Shi on 2/26/19.
//  Copyright © 2019 Ray Wenderlich. All rights reserved.
//

import XCTest

@testable import HalfTunes

class HalfTunesShowTests: XCTestCase {
    var sessionUnderTest: URLSession!
    override func setUp() {
        super.setUp()
        sessionUnderTest = URLSession(configuration: .default)
    }

    override func tearDown() {
        sessionUnderTest = nil
        super.tearDown()
    }

    func testValidCallToiTunesGetsHTTPStatusCode200() {
        
        let url = URL(string: "https://itunes.apple.com/search?media=music&entity=song&term=abba")
        
        let promise = expectation(description: "Status code: 200")
        
        let dataTask = sessionUnderTest.dataTask(with: url!) { (data, response, error) in
            if let error = error {
                XCTFail("Error: \(error.localizedDescription)")
                return
            } else if let statusCode = (response as? HTTPURLResponse)?.statusCode {
                if statusCode == 200 {
                    promise.fulfill()
                } else {
                    XCTFail("Status code: \(statusCode)")
                }
            }
        }
        dataTask.resume()
        
        waitForExpectations(timeout: 5, handler: nil)
        
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
