//
//  DataPassingInt.swift
//  NavigationPractice
//
//  Created by Koushik Reddy Kambham on 10/14/25.
//


import SwiftUI

struct DataPassingInt: View {
    @State private var numberToPass = 42
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                
                NavigationLink {
                    SecondScreenII(receivedNumber: numberToPass)
                } label: {
                    Text("Sending \(numberToPass) to next screen")
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

struct SecondScreenII: View {
    let receivedNumber: Int
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Received Number:")
                .font(.headline)
            
            Text("\(receivedNumber)")
                .font(.largeTitle)
                .fontWeight(.bold)
        }
        .navigationTitle("Second Screen")
    }
}

#Preview {
    DataPassingInt()
}
