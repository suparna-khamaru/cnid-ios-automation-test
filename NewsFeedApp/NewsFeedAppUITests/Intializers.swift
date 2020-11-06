//
//  Intializers.swift
//  NewsFeedAppUITests
//
//  Created by Khamaru, Suparna on 05/11/20.
//

import XCTest

var app = XCUIApplication()

let device = XCUIDevice.shared
let springBoardId = "com.apple.springboard"
let safariAppId = "com.apple.mobilesafari"

let springBoard = XCUIApplication(bundleIdentifier: springBoardId)
let safariApp = XCUIApplication(bundleIdentifier: safariAppId)
