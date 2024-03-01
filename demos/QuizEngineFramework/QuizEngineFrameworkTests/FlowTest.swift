//
//  FlowTest.swift
//  QuizEngineFrameworkTests
//
//  Created by Pavel Palancica on 03.02.2024.
//

import XCTest
@testable import QuizEngineFramework

class FlowTest: XCTest {
    
    func test_start_withNoQuestions_doesNotRouteToQuestion() {
        let router = RouterSpy()
        let sut = Flow(questions: [], router: router)
        sut.start()
        XCTAssertEqual(router.routedQuestionCount, 0)
    }
    
    func test_start_withOneQuestion_routesToQuestion() {
        let router = RouterSpy()
        let sut = Flow(questions: ["Q1"], router: router)
        sut.start()
        XCTAssertEqual(router.routedQuestionCount, 1)
    }
    
    func test_start_withOneQuestion_routesToCorrectQuestion() {
        let router = RouterSpy()
        let sut = Flow(questions: ["Q1"], router: router)
        sut.start()
        XCTAssertEqual(router.routedQuestion, "Q1")
    }
    
    func test_start_withOneQuestion_routesToCorrectQuestion_2() {
        let router = RouterSpy()
        let sut = Flow(questions: ["Q2"], router: router)
        sut.start()
        XCTAssertEqual(router.routedQuestion, "Q2")
    }
    
    func test_start_withTwoQuestions_routesToFirstQuestion() {
        let router = RouterSpy()
        let sut = Flow(questions: ["Q1", "Q2"], router: router)
        sut.start()
        XCTAssertEqual(router.routedQuestion, "Q1")
    }
    
//    func test_startTwice_withTwoQuestions_routesToFirstQuestionTwice() {
//        let router = RouterSpy()
//        let sut = Flow(questions: ["Q1", "Q2"], router: router)
//        sut.start()
//        sut.start()
//        XCTAssertEqual(router.routedQuestion, "Q1")
//    }
    
    class RouterSpy: Router {
        var routedQuestionCount: Int = 0
        var routedQuestion: String? = nil
        var routedQuestions: [String] = []
        
        func routeTo(question: String) {
            routedQuestionCount += 1
            routedQuestion = question
            routedQuestions.append(question)
        }
    }
}
