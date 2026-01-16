//
//  ContentView.swift
//  Lumo
//
//  Created by Vedika on 16/01/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("Lumo")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.deepIndigo)
            
            Text("Let's Learn Together")
                .font(.title3)
                .foregroundColor(.steelGrey)
            
            Image(systemName: "star.fill")
                .font(.system(size: 60))
                .foregroundColor(.harvestGold)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.cloudWhite)
    }
}

#Preview {
    ContentView()
}
