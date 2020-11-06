//
//  HomeScreenPage.swift
//  NewsFeedAppUITests
//
//  Created by Khamaru, Suparna on 05/11/20.
//

import XCTest

final class HomeScreen: XCTestCase, Tappable, ExistanceCheckable {
    
    let home = HomeScreenElements(app)
    
    func tapOnTabBar() {
        
        waitForElement(element: home.bookmark)
        tapOn(element: home.bookmark)
        tapOn(element: home.search)
        tapOn(element: home.dailyFeed)
    }
}
