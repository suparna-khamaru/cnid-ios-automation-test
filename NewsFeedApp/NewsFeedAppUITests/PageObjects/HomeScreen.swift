//
//  HomeScreenPage.swift
//  NewsFeedAppUITests
//
//  Created by Khamaru, Suparna on 05/11/20.
//

import XCTest

final class HomeScreen: XCTestCase, Tappable, ExistanceCheckable {
    
    let home = HomeScreenElements(app)
    
    func tapOnTabBar() -> HomeScreen {
        
        waitForElement(element: home.bookmark)
        tapOn(element: home.bookmark)
        tapOn(element: home.search)
        tapOn(element: home.dailyFeed)
        
        return self
    }
    
    func tapOnTeaser(index: Int) {
        
        let button = app.buttons["2 hours ago • Read More..."]
        
        home.teaser.element(boundBy: index).tap()
        waitForElement(element: button, seconds: 30)
        
        XCTAssertEqual("2 hours ago • Read More...",
                       button.label,
                       "Failed to verify button")
    }
    
    func abc() {
        
    }
}
