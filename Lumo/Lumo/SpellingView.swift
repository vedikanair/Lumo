//
//  SpellingView.swift
//  Lumo
//
//  Created by Vedika on 17/01/26.
//

import SwiftUI

struct SpellingView: View {
    @Binding var filledStars: Int
    
    var body: some View {
        VStack(spacing: 30) {
            Text("Spelling Module")
                .font(.largeTitle)
                .foregroundColor(.deepIndigo)
            
            Text("🔤")
                .font(.system(size: 80))
            
            Button("Complete Module (Test)") {
                if filledStars < 5 {
                    filledStars += 1
                }
                print("Stars: \(filledStars)")
            }
            .padding()
            .background(Color.sageGreen)
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
        SpellingView(filledStars: .constant(2))
    }
}
