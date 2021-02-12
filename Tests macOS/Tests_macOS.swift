//
//  Tests_macOS.swift
//  Tests macOS
//
//  Created by Spencer Lee on 2/5/21.
//

import XCTest

class Tests_macOS: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testWeirdPlus(){
            
       let weirdQuad = QuadraticEquations()
        
        _ = weirdQuad.weirdQuadPlusCalculator()
        
        XCTAssertEqual ( weirdQuad.weirdQuadPlus ,Double(3.0),accuracy: 1.0E-7, "Was not equal to this resolution.")
        }
    
    
    func testWeirdMinus(){
            
       let weirdQuadm = QuadraticEquations()
        
        _ = weirdQuadm.weirdQuadMinusCalculator()
        
        XCTAssertEqual ( weirdQuadm.weirdQuadMinus ,Double(0.5),accuracy: 1.0E-7, "Was not equal to this resolution.")
        }
    func testNormPlus(){
            
       let normQuad = QuadraticEquations()
        
        _ = normQuad.normQuadPlusCalculator()
        
        XCTAssertEqual ( normQuad.normQuadPlus ,Double(3.0),accuracy: 1.0E-7, "Was not equal to this resolution.")
        }
   
    func testNormMinus(){
            
       let normQuadm = QuadraticEquations()
        
        _ = normQuadm.normQuadMinusCalculator()
        
        XCTAssertEqual ( normQuadm.normQuadMinus ,Double(0.5),accuracy: 1.0E-7, "Was not equal to this resolution.")
        }
    
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
