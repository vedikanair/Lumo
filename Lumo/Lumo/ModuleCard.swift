//
//  ModuleCard.swift
//  Lumo
//
//  Created by Vedika on 16/01/26.
//

import SwiftUI

struct ModuleCard: View {
    let title: String
    let iconName: String
    let color: Color
    
    var body: some View {
        VStack(spacing: 12) {
            ZStack {
                Circle()
                    .fill(color.opacity(0.15))
                    .frame(width: 70, height: 70)
                
                Image(systemName: iconName)
                    .font(.system(size: 32))
                    .foregroundColor(color)
            }
            
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
}

#Preview {
    HStack(spacing: 16) {
        ModuleCard(
            title: "Counting",
            iconName: "hand.thumbsup.fill",
            color: .oceanSlate
        )
    }
    .padding()
    .background(Color.cloudWhite)
}
