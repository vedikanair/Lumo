//
//  HomeView.swift
//  Lumo
//
//  Created by Vedika on 16/01/26.
//

import SwiftUI

struct HomeView: View {
    @State private var filledStars: Int = 0  // to track completed modules
    
    let columns = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16)
    ]
    
    var body: some View {
        NavigationStack {
            ZStack {
                // Background
                Color.cloudWhite
                    .ignoresSafeArea()
                
                VStack(spacing: 24) {
                    // Header with title and settings
                    HStack {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Lumo")
                                .font(.system(size: 36, weight: .bold))
                                .foregroundColor(.deepIndigo)
                            
                            Text("Let's Learn Together")
                                                            .font(.subheadline)
                                                            .foregroundColor(.steelGrey)
                                                    }
                                                    
                                                    Spacer()
                                                    
                                                    // Settings button
                                                    Button(action: {
                                                        print("Settings tapped")
                                                    }) {
                                                        Image(systemName: "gearshape.fill")
                                                            .font(.system(size: 24))
                                                            .foregroundColor(.steelGrey)
                                                    }
                                                }
                                                .padding(.horizontal, 24)
                                                .padding(.top, 20)
                                                
                                                // Token Board
                                                TokenBoardView(filledStars: filledStars)
                                                    .padding(.horizontal, 24)
                                                
                                                // Module Grid - 2x3 layout
                                                ScrollView {
                                                    LazyVGrid(columns: columns, spacing: 16) {
                                                        // Row 1
                                                        ModuleCard(
                                                            title: "Counting",
                                                            iconName: "hand.thumbsup.fill",
                                                            color: .oceanSlate,
                                                            action: { print("Counting tapped - navigation will be added") }
                                                        )
                                                        
                                                        ModuleCard(
                                                            title: "Coloring",
                                                            iconName: "paintbrush.fill",
                                                            color: .dustyTeal,
                                                            action: { print("Coloring tapped - navigation will be added") }
                                                        )
                                                        
                                                        // Row 2
                                                        ModuleCard(
                                                            title: "Math",
                                                            iconName: "plus.circle.fill",
                                                            color: .mutedPeriwinkle,
                                                            action: { print("Math tapped - navigation will be added") }
                                                        )
                                                        
                                                        ModuleCard(
                                                            title: "Spelling",
                                                            iconName: "textformat.abc",
                                                            color: .sageGreen,
                                                            action: { print("Spelling tapped - navigation will be added") }
                                                        )
                                                        
                                                        // Row 3 - Lumi on left, Tracing on right
                                                        LumiCard()
                                                        
                                                        ModuleCard(
                                                            title: "Tracing",
                                                            iconName: "pencil.tip",
                                                            color: .harvestGold,
                                                            action: { print("Tracing tapped - navigation will be added") }
                                                        )
                                                    }
                                                    .padding(.horizontal, 24)
                                                    .padding(.bottom, 24)
                                                }
                                            }
                                        }
                                        .navigationBarHidden(true)
                                    }
                                }
                            }

                            #Preview {
                                HomeView()
                            }
