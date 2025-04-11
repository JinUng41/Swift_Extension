//
//  AddArrangedSubviews.swift
//  Swift_Extension
//
//  Created by 김진웅 on 4/12/25.
//

import UIKit

extension UIStackView {
    /// `arrangedSubviews`에 여러 개의 `UIView`를 한 번에 추가하는 메서드.
    ///
    /// - Parameter views: `UIView` 인스턴스를 가변 매개변수(`variadic parameter`)로 전달
    ///
    /// 사용 예시:
    /// ```swift
    /// let stackView = UIStackView(axis: .vertical)
    /// stackView.addArrangedSubviews(label, button, imageView)
    /// ```
    func addArrangedSubviews(_ views: UIView...) {
        views.forEach { view in
            addArrangedSubview(view)
        }
    }
}
