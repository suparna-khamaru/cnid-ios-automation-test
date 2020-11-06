//
//  NewsFeedAppUITests.swift
//  NewsFeedAppUITests
//
//  Created by Khamaru, Suparna on 05/11/20.
//

import XCTest

class NewsFeedAppUITests: UITestBase {

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
    }

    func testExample() {
        
        HomeScreen()
            .tapOnTabBar()
            .abc()
    }
    
    func test_tapOnFirstTeaser() {
        
        HomeScreen()
            .tapOnTeaser(index: 0)
    }
}
