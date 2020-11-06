//
//  ExistanceCheckable.swift
//  NewsFeedAppUITests
//
//  Created by Khamaru, Suparna on 05/11/20.
//

import XCTest

protocol Tappable {
    func tapOn(element: XCUIElement, seconds: TimeInterval)
}

extension Tappable {
    func tapOn(element: XCUIElement, seconds: TimeInterval = 30) {
        let elementExists = element.waitForExistence(timeout: seconds)
        
        if elementExists {
            element.tap()
        }
        else {
            XCTAssertFalse(!elementExists, "/(element) not found")
        }
    }
}
