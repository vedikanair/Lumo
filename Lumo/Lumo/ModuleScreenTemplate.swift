//
//  ModuleScreenTemplate.swift
//  Lumo
//
//  Created by Vedika on 17/01/26.
//


import SwiftUI

struct ModuleScreenTemplate<Content: View>: View {
    let moduleName: String
    let moduleColor: Color
    let filledStars: Int
    let content: Content
    
    init(
        moduleName: String,
        moduleColor: Color,
        filledStars: Int,
        @ViewBuilder content: () -> Content
    ) {
        self.moduleName = moduleName
        self.moduleColor = moduleColor
        self.filledStars = filledStars
        self.content = content()
    }
    
    var body: some View {
        VStack(spacing: 24) {
            // Token Board at top
            TokenBoardView(filledStars: filledStars)
                .padding(.horizontal, 24)
                .padding(.top, 20)
            
            // Module content area
            content
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.cloudWhite)
        .navigationTitle(moduleName)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        ModuleScreenTemplate(
            moduleName: "Counting",
            moduleColor: .oceanSlate,
            filledStars: 2
        ) {
            Text("Module content goes here")
                .font(.title)
                .foregroundColor(.steelGrey)
        }
    }
}
