//
//  String+Extension.swift
//  Version
//
//  Created by ZhgChgLi on 2020/12/14.
//

import Foundation

extension String {
    func regexGroup(_ regex: String) -> [String] {
        var results = [String]()
        var regularExpression: NSRegularExpression
        do {
            regularExpression = try NSRegularExpression(pattern: regex, options: [])
        } catch {
            return results
        }

        let matches = regularExpression.matches(in: self, options: [], range: NSRange(location: 0, length: self.count))
        guard let match = matches.first else { return results }
        let lastRangeIndex = match.numberOfRanges - 1
        guard lastRangeIndex >= 1 else { return results }
        for i in 1...lastRangeIndex {
            let capturedGroupIndex = match.range(at: i)
            if let range = Range(capturedGroupIndex, in: self) {
                let matchedString = String(self[range])
                results.append(matchedString)
            }
        }
        return results
    }
}
