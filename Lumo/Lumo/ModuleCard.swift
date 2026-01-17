//
//  ModuleCard.swift
//  Lumo
//
//  Created by Vedika on 16/01/26.
//

import SwiftUI

struct ModuleCard: View {
    let title: String
    let iconName: String  // For now SF Symbol name
    let color: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            VStack(spacing: 12) {
                // icon area
                ZStack {
                    Circle()
                        .fill(color.opacity(0.15))
                        .frame(width: 70, height: 70)
                    
                    // will replace with custom images later
                    // for now using SF Symbols
                    // to replace: Change Image(systemName: iconName) to Image(iconName)
                    // add image to Assets.xcassets
                    Image(systemName: iconName)
                        .font(.system(size: 32))
                        .foregroundColor(color)
                }
                
                // title
                Text(title)
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(.deepIndigo)
                    .multilineTextAlignment(.center)
            }
            .frame(maxWidth: .infinity)
            .frame(height: 140)
            .background(Color.white)
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.08), radius: 10, x: 0, y: 4)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

#Preview {
    HStack(spacing: 16) {
        ModuleCard(
            title: "Counting",
            iconName: "hand.thumbsup.fill",
            color: .oceanSlate,
            action: { print("Counting tapped - will navigate to module") }
        )
        
        ModuleCard(
            title: "Coloring",
            iconName: "paintbrush.fill",
            color: .dustyTeal,
            action: { print("Coloring tapped - will navigate to module") }
        )
    }
    .padding()
    .background(Color.cloudWhite)
}
