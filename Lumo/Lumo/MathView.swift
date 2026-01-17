//
//  MathView.swift
//  Lumo
//
//  Created by Vedika on 17/01/26.
//

import SwiftUI

struct MathView: View {
    @Binding var filledStars: Int
    
    var body: some View {
        VStack(spacing: 30) {
            Text("Math Module")
                .font(.largeTitle)
                .foregroundColor(.deepIndigo)
            
            Text("➕ ➖")
                .font(.system(size: 80))
            
            Button("Complete Module (Test)") {
                if filledStars < 5 {
                    filledStars += 1
                }
                print("Stars: \(filledStars)")
            }
            .padding()
            .background(Color.mutedPeriwinkle)
            .foregroundColor(.white)
            .cornerRadius(12)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.cloudWhite)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        MathView(filledStars: .constant(2))
    }
}
