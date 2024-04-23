//
//  ContentView.swift
//  DotsAnimatingDemo
//
//  Created by Sam on 2024/4/19.
//

import SwiftUI

struct ContentView: View {
    @State private var isLoading: Bool = false
    var body: some View {
        VStack {
            Spacer()
            
            if isLoading {
                AnimatableDotsView()
            }
            
            Spacer()
            
            Button(action: {
                isLoading.toggle()
            }, label: {
                Text("\(isLoading ? "Stop" : "Start")")
            })
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
