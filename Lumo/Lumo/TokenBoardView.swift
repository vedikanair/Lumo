//
//  TokenBoardView.swift
//  Lumo
//
//  Created by Vedika on 16/01/26.
//
import SwiftUI

struct TokenBoardView: View {
    let filledStars: Int // 0 to 5
    
    var body: some View {
        HStack(spacing: 12) {
            ForEach(0..<5) { index in
                Image(systemName: index < filledStars ? "star.fill" : "star")
                    .font(.system(size: 28))
                    .foregroundColor(.harvestGold)
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 16)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white.opacity(0.5))
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.ultraThinMaterial)
                )
        )
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.white.opacity(0.3), lineWidth: 1)
        )
    }
}

#Preview {
    VStack {
        TokenBoardView(filledStars: 0)
        TokenBoardView(filledStars: 3)
        TokenBoardView(filledStars: 5)
    }
    .padding()
    .background(Color.cloudWhite)
}
