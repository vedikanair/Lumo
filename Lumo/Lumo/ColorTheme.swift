//
//  ColorTheme.swift
//  Lumo
//
//  Created by Vedika on 16/01/26.
//

import SwiftUI

extension Color {
    // BG colors
    static let cloudWhite = Color(hex: "#F2F4F8")
    static let mistGrey = Color(hex: "#E1E6EB")
    static let pebble = Color(hex: "#D1D6DE")
    
    // Primary
    static let oceanSlate = Color(hex: "#5D7F9E")
    static let dustyTeal = Color(hex: "#6B9E98")
    static let mutedPeriwinkle = Color(hex: "#8A96C6")
    
    // Functionals
    static let sageGreen = Color(hex: "#7BAE7F")
    static let softClay = Color(hex: "#CC8B86")
    static let harvestGold = Color(hex: "#D9B46E")
    
    // Typography
    static let deepIndigo = Color(hex: "#2F3342")
    static let steelGrey = Color(hex: "#646978")
    static let fossil = Color(hex: "#A0A4B0")

    
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 6: 
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8:
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
