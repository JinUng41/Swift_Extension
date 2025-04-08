//
//  Addsubviews.swift
//  Swift_Extension
//
//  Created by 김진웅 on 4/8/25.
//

import UIKit

extension UIView {
    /// 여러 개의 `UIView`를 한 번에 `addSubview(_:)`하는 메서드.
    ///
    /// - Parameter views: 추가할 `UIView` 인스턴스들을 가변 매개변수(`variadic parameter`)로 전달.
    ///
    /// 사용 예시:
    /// ```swift
    /// let containerView = UIView()
    /// let imageView = UIImageView()
    /// let titleLabel = UILabel()
    ///
    /// containerView.addSubviews(imageView, titleLabel)
    /// ```
    func addSubviews(_ views: UIView...) {
        views.forEach { view in
            addSubview(view)
        }
    }
}
