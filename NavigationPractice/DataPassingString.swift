//
//  DataPassingString.swift
//  NavigationPractice
//
//  Created by Koushik Reddy Kambham on 10/14/25.
//

import SwiftUI

struct FirstScreen: View {
    @State private var textToPass = "Hello from First Screen!"
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                TextField("Enter text", text: $textToPass)
                    .textFieldStyle(.roundedBorder)
                    .padding(.horizontal)
              
                NavigationLink {
                    SecondScreen(receivedText: textToPass)
                } label: {
                    Text("Go to Next Screen")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding(.horizontal)
                }
            }
            .navigationTitle("First Screen")
        }
    }
}

struct SecondScreen: View {
    let receivedText: String
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Received Text:")
                .font(.headline)
            
            Text(receivedText)
                .font(.title2)
                .padding()
        }
        .navigationTitle("Second Screen")
    }
}

#Preview {
    FirstScreen()
}

