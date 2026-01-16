//
//  ModuleButton.swift
//  Lumo
//
//  Created by Vedika on 16/01/26.
//

import SwiftUI

struct ModuleButton: View {
    let title: String
    let icon: String
    let color: Color
    
    var body: some View {
        Button(action: {
            print("\(title) tapped")
        }) {
            HStack(spacing: 20) {
                // Icon
                Image(systemName: icon)
                    .font(.system(size: 32))
                    .foregroundColor(color)
                    .frame(width: 50, height: 50)
                
                // Title
                Text(title)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.deepIndigo)
                
                Spacer()
                
                // Arrow
                Image(systemName: "chevron.right")
                    .font(.system(size: 20))
                    .foregroundColor(.steelGrey)
            }
            .padding(.horizontal, 24)
            .padding(.vertical, 20)
            .background(Color.white)
            .cornerRadius(16)
            .shadow(color: Color.black.opacity(0.05), radius: 8, x: 0, y: 2)
        }
    }
}

#Preview {
    VStack {
        ModuleButton(title: "Counting", icon: "hand.thumbsup.fill", color: .oceanSlate)
        ModuleButton(title: "Coloring", icon: "paintbrush.fill", color: .dustyTeal)
    }
    .padding()
    .background(Color.cloudWhite)
}
