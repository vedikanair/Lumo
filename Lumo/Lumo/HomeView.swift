//
//  HomeView.swift
//  Lumo
//
//  Created by Vedika on 16/01/26.
//

import SwiftUI

struct HomeView: View {
    @State private var filledStars: Int = 0
    
    let columns = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16)
    ]
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.cloudWhite
                    .ignoresSafeArea()
                
                VStack(spacing: 24) {
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
                    
                    TokenBoardView(filledStars: filledStars)
                        .padding(.horizontal, 24)
                    
                    ScrollView {
                        LazyVGrid(columns: columns, spacing: 16) {
                            NavigationLink {
                                CountingView(filledStars: $filledStars)
                            } label: {
                                ModuleCard(
                                    title: "Counting",
                                    iconName: "hand.thumbsup.fill",
                                    color: .oceanSlate
                                )
                            }
                            .buttonStyle(PlainButtonStyle())
                            
                            NavigationLink {
                                ColoringView(filledStars: $filledStars)
                            } label: {
                                ModuleCard(
                                    title: "Coloring",
                                    iconName: "paintbrush.fill",
                                    color: .dustyTeal
                                )
                            }
                            .buttonStyle(PlainButtonStyle())
                            
                            NavigationLink {
                                MathView(filledStars: $filledStars)
                            } label: {
                                ModuleCard(
                                    title: "Math",
                                    iconName: "plus.circle.fill",
                                    color: .mutedPeriwinkle
                                )
                            }
                            .buttonStyle(PlainButtonStyle())
                            
                            NavigationLink {
                                SpellingView(filledStars: $filledStars)
                            } label: {
                                ModuleCard(
                                    title: "Spelling",
                                    iconName: "textformat.abc",
                                    color: .sageGreen
                                )
                            }
                            .buttonStyle(PlainButtonStyle())
                            
                            LumiCard()
                            
                            NavigationLink {
                                TracingView(filledStars: $filledStars)
                            } label: {
                                ModuleCard(
                                    title: "Tracing",
                                    iconName: "pencil.tip",
                                    color: .harvestGold
                                )
                            }
                            .buttonStyle(PlainButtonStyle())
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
