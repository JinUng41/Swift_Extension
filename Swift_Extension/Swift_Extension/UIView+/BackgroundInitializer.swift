//
//  BackgroundInitializer.swift
//  Swift_Extension
//
//  Created by 김진웅 on 4/7/25.
//

import UIKit

extension UIView {    
    /// 배경색을 설정하는 편의 생성자입니다.
    ///
    /// - Parameter backgroundColor: 설정할 배경색
    ///
    /// 사용 예시:
    /// ```swift
    /// // 빨간색 배경을 가진 뷰 생성
    /// let redBackgroundView = UIView(backgroundColor: .red)
    /// ```
    convenience init(backgroundColor: UIColor) {
        self.init()
        
        self.backgroundColor = backgroundColor
    }
}
