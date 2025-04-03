//
//  Truncated.swift
//  Swift_Extension
//
//  Created by 김진웅 on 4/4/25.
//

import Foundation

extension String {
    /// 문자열을 지정된 길이로 자르고 필요시 말줄임표를 추가합니다.
    ///
    /// - Parameters:
    ///   - limit: 문자열을 자를 최대 문자 수
    ///   - appendEllipsis: 문자열이 잘렸을 때 말줄임표("...")를 추가할지 여부 (기본값: `true`)
    /// - Returns: 지정된 길이로 잘린 문자열. 원본 문자열이 `limit`보다 짧거나 같으면 원본 문자열을 그대로 반환합니다.
    ///
    /// 사용 예시:
    /// ```swift
    /// // 결과: "Hello..."
    /// "Hello, world!".truncated(limit: 5)
    ///
    /// // 결과: "Hello"
    /// "Hello, world!".truncated(limit: 5, appendEllipsis: false)
    ///
    /// // 결과: "Hello, world!" (원본 문자열이 limit보다 짧거나 같으면 그대로 반환)
    /// "Hello".truncated(limit: 5)
    /// ```
    func truncated(limit: Int, appendEllipsis: Bool = true) -> String {
        if self.count <= limit {
            return self
        }
        
        let index = self.index(self.startIndex, offsetBy: limit)
        let truncated = self[..<index]
        
        return appendEllipsis ? "\(truncated)..." : "\(truncated)"
    }
}
