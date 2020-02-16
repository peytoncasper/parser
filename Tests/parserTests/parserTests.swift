import XCTest
@testable import Parser

final class parserTests: XCTestCase {
    func testGrammarParser() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
//        XCTAssertEqual(Parser().text, "Hello, World!")
        var g = Grammar()
        g.parseGrammar(grammar: ["WHITESPACE : "])
    }

    static var allTests = [
        ("testExample", testGrammarParser),
    ]
}
