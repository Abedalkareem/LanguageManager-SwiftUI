import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(LanguageManagerSwiftUITests.allTests),
    ]
}
#endif
