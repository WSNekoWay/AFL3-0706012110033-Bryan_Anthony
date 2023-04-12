//
//  AFL3_0706012110033_Bryan_AnthonyUITestsLaunchTests.swift
//  AFL3-0706012110033-Bryan_AnthonyUITests
//
//  Created by MacBook Pro on 12/04/23.
//

import XCTest

final class AFL3_0706012110033_Bryan_AnthonyUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
