//
//  Tappable.swift
//  NewsFeedAppUITests
//
//  Created by Khamaru, Suparna on 05/11/20.
//

import XCTest

protocol ExistanceCheckable {
    func waitForElement(element: XCUIElement, seconds: TimeInterval)
}

extension ExistanceCheckable {
    
    func waitForElement(element: XCUIElement, seconds: TimeInterval = 30) {
        let elementExists = element.waitForExistence(timeout: seconds)
        if elementExists {
            XCTAssertTrue(elementExists, "Failed to wait for: \(element)")
        }
        else {
            XCTAssertFalse(!elementExists, "Failed to wait for element")
        }
    }
}

            
