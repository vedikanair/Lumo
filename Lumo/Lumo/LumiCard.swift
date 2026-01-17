//
//  LumiCard.swift
//  Lumo
//
//  Created by Vedika on 16/01/26.
//


import SwiftUI

struct LumiCard: View {
    var body: some View {
        VStack(spacing: 8) {
            //for Lumi character
            ZStack {
                Circle()
                    .fill(Color.mutedPeriwinkle.opacity(0.15))
                    .frame(width: 70, height: 70)
                
                // Temporary: Using SF Symbol
                // Later: Image("lumi-character")
                Image(systemName: "moon.stars.fill")
                    .font(.system(size: 32))
                    .foregroundColor(.mutedPeriwinkle)
            }
            
            Text("Lumi")
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(.deepIndigo)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 140)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.mutedPeriwinkle.opacity(0.1))
        )
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.mutedPeriwinkle.opacity(0.3), lineWidth: 2)
        )
    }
}

#Preview {
    LumiCard()
        .frame(width: 160)
        .padding()
        .background(Color.cloudWhite)
}
