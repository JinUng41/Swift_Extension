//
//  AxisInitializer.swift
//  Swift_Extension
//
//  Created by 김진웅 on 4/10/25.
//

import UIKit

extension UIStackView {
    /// `UIStackView`를 초기화하는 편의 이니셜라이저.
    ///
    /// - Parameter axis: `horizontal` 또는 `vertical` 방향을 지정하는 `NSLayoutConstraint.Axis`
    ///
    /// 사용 예시:
    /// ```swift
    /// let stackView = UIStackView(axis: .horizontal)
    /// ```
    convenience init(axis: NSLayoutConstraint.Axis) {
        self.init(frame: .zero)
        
        self.axis = axis
    }
}
