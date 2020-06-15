import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(Mp4v2Tests.allTests),
    ]
}
#endif
