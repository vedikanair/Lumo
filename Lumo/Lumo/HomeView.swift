//
//  HomeView.swift
//  Lumo
//
//  Created by Vedika on 16/01/26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 40) {
                // Header Section
                VStack(spacing: 10) {
                    Text("Lumo")
                        .font(.system(size: 48, weight: .bold))
                        .foregroundColor(.deepIndigo)
                    
                    Text("Let's Learn Together")
                        .font(.title3)
                        .foregroundColor(.steelGrey)
                }
                .padding(.top, 60)
                
                // Module Grid
                VStack(spacing: 20) {
                    ModuleButton(
                        title: "Counting",
                        icon: "hand.thumbsup.fill",
                        color: .oceanSlate
                    )
                    
                    ModuleButton(
                        title: "Coloring",
                        icon: "paintbrush.fill",
                        color: .dustyTeal
                    )
                    
                    ModuleButton(
                        title: "Math",
                        icon: "plus.circle.fill",
                        color: .mutedPeriwinkle
                    )
                    
                    ModuleButton(
                        title: "Spelling",
                        icon: "textformat.abc",
                        color: .sageGreen
                    )
                    
                    ModuleButton(
                        title: "Tracing",
                        icon: "pencil.tip",
                        color: .harvestGold
                    )
                }
                .padding(.horizontal, 30)
                
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.cloudWhite)
        }
    }
}

#Preview {
    HomeView()
}
