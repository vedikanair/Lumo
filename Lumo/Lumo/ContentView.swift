//
//  ContentView.swift
//  Lumo
//
//  Created by Vedika on 16/01/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (spacing:30) {
            Text("Lumo")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text ("Let's Learn Together!")
                .font(.title3)
                .foregroundColor(.gray)
            Image(systemName: "star.fill")
                .font(.system(size:60))
                .foregroundColor(.yellow)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

