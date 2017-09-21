import XCTest
import Foundation
import CodableWMOBug

final class CodableWMOBugTests: XCTestCase {
    
    func testDecodeOPTChallenge() {
        
        let json = """
            {
                "Container": {
                    "identifier": "IDENTIFIER",
                }
            }
            """.data(using: .utf8)!
        
        let decoder = JSONDecoder()
        
        do {
            let otpChallenge = try decoder.decode([String : Container].self, from: json)["Container"]!
            
            XCTAssertEqual(otpChallenge.identifier.rawValue, "IDENTIFIER")
            
        } catch {
            // This path is executed only when WMO is enabled
            XCTFail("Couldn't decode:\n\n\(error)\n\n")
        }
    }
}
