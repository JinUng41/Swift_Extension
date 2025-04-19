//
//  AddPadding.swift
//  Swift_Extension
//
//  Created by 김진웅 on 4/19/25.
//

import UIKit

extension UITextField {
    /// `UITextField`의 왼쪽 및 오른쪽에 패딩을 추가합니다.
    ///
    /// - Parameters:
    ///   - left: 왼쪽 패딩 값 (`CGFloat`). 기본값은 `nil`
    ///   - right: 오른쪽 패딩 값 (`CGFloat`). 기본값은 `nil`
    ///
    /// 사용 예시:
    /// ```swift
    /// let textField = UITextField()
    /// textField.addPadding(left: 10, right: 10)
    /// ```
    func addPadding(left: CGFloat? = nil, right: CGFloat? = nil) {
        if let left {
            leftView = UIView(frame: CGRect(x: 0, y: 0, width: left, height: 0))
            leftViewMode = .always
        }
        
        if let right {
            rightView = UIView(frame: CGRect(x: 0, y: 0, width: right, height: 0))
            rightViewMode = .always
        }
    }
}
