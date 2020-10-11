//
//  InterButtonTests.swift
//  InterButtonTests
//
//  Created by Junya on 2020/10/10.
//

import XCTest
@testable import InterButton

class InterButtonTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testInit() throws {
        let interButton = InterButton()
        XCTAssertNotNil(interButton)
    }
    
    func testInitFrame() throws {
        let interButton = InterButton(frame: CGRect(x: 0, y: 0, width: 100, height: 30))
        XCTAssertNotNil(interButton)
    }
    
    func testInitCode() throws {
        let data = NSMutableData()
        let archiver = NSKeyedArchiver(forWritingWith: data)
        archiver.finishEncoding()
        let nsCoder = NSKeyedUnarchiver(forReadingWith: data as Data)
        let interButton = InterButton(coder: nsCoder)
        XCTAssertNotNil(interButton)
    }
    
    func testSetDuration() throws {
        let interButton = InterButton()
        interButton.duration = 0.5
        XCTAssertEqual(interButton.duration, 0.5)
        
    }
    
    func testSetMinimumScale() throws {
        let interButton = InterButton()
        interButton.minimumScale = 0.1
        XCTAssertEqual(interButton.minimumScale, 0.1)
    }

}
