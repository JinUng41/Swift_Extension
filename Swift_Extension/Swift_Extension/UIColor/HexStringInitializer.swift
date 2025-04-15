//
//  HexStringInitializer.swift
//  Swift_Extension
//
//  Created by 김진웅 on 4/15/25.
//

import UIKit

extension UIColor {
    /**
     * 16진수 문자열로부터 UIColor 객체를 생성합니다.
     *
     * 이 편의생성자는 웹 색상 형식(#RRGGBB 또는 RRGGBB)의 16진수 문자열을 입력받아
     * 해당하는 UIColor 객체를 생성합니다. 대문자와 소문자 모두 지원하며, '#' 기호는 생략 가능합니다.
     *
     * - Parameters:
     *   - hex: 색상을 나타내는 16진수 문자열. 예: "#FF0000", "00FF00", "0000ff"
     *   - alpha: 색상의 투명도 값 (0.0 ~ 1.0). 기본값은 1.0(완전 불투명)
     *
     * - Returns: 지정된 16진수 색상과 투명도를 가진 UIColor 객체
     *
     * - Note: 올바르지 않은 16진수 문자열이 입력된 경우, 파싱에 실패한 부분은 0으로 처리됩니다.
     *
     * ## 사용 예시:
     * ```
     * // 다양한 형식으로 사용 가능
     * let redColor = UIColor(hex: "#FF0000")
     * let greenColor = UIColor(hex: "00FF00")
     * let blueColor = UIColor(hex: "0000ff")
     * let semiTransparentRed = UIColor(hex: "FF0000", alpha: 0.5)
     * ```
     */
    convenience init(hex: String, alpha: CGFloat = 1.0) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")
        
        var rgb: UInt64 = 0
        
        Scanner(string: hexSanitized).scanHexInt64(&rgb)
        
        let red = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
        let blue = CGFloat(rgb & 0x0000FF) / 255.0
        
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}
