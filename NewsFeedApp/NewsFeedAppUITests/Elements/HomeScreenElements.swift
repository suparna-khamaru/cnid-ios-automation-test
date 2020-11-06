//
//  HomeScreenElements.swift
//  NewsFeedAppUITests
//
//  Created by Khamaru, Suparna on 05/11/20.
//

import XCTest

class HomeScreenElements {
    
    var search: XCUIElement
    var bookmark: XCUIElement
    var dailyFeed: XCUIElement
    var teaser: XCUIElementQuery
    
    var tabBar = AccessibilityIdentifiers.TabBar.self
    

    required init(_ app: XCUIApplication) {
        
        teaser = app.images
        
        search = app
            .tabBars[tabBar.tabBar]
            .buttons[tabBar.search]
            .firstMatch
        
        bookmark = app
            .tabBars[tabBar.tabBar]
            .buttons[tabBar.bookmark]
            .firstMatch
        
        dailyFeed = app
            .tabBars[tabBar.tabBar]
            .buttons[tabBar.dailyFeed]
            .firstMatch
    }
}


