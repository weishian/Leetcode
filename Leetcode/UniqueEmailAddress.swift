//
//  UniqueEmailAddress.swift
//  Leetcode
//
//  Created by daniel.chang on 11/13/18.
//  Copyright © 2018 daniel.chang. All rights reserved.
//

import Foundation

func numUniqueEmails(_ emails: [String]) -> Int {
    var validates = [String]()
    if 1 <= emails.count && emails.count <= 100 {
        for email in emails {
            guard email.contains("@"), (1 <= email.count && email.count <= 100) else { continue }
            var result: String = email
            // delete string backward "@"
            if let range = email.range(of: "@", options: .literal) {
                if !range.isEmpty {
                    let start = result.index(result.startIndex, offsetBy: range.lowerBound.encodedOffset)
                    let end = result.index(result.startIndex, offsetBy: result.count)
                    let range = start..<end
                    result.removeSubrange(range)
                }
            }
            
            // delete string backward "+"
            if let range = email.range(of: "+", options: .literal) {
                if !range.isEmpty {
                    let start = result.index(result.startIndex, offsetBy: range.lowerBound.encodedOffset)
                    let end = result.index(result.startIndex, offsetBy: result.count)
                    let range = start..<end
                    result.removeSubrange(range)
                }
            }
            
            // replace "." to ""
            result = result.replacingOccurrences(of: ".", with: "")
            
            // check duplicate and append to array
            if let domain = email.components(separatedBy: "@").last {
                result.append("@"+domain)
                if !validates.contains(result) {
                    validates.append(result)
                }
            }
        }
    }
    
    return validates.count
}
