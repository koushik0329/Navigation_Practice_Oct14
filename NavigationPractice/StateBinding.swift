//
//  StateBinding.swift
//  NavigationPractice
//
//  Created by Koushik Reddy Kambham on 10/14/25.
//

import SwiftUI

struct StateBinding : View {
    
    @State var number = 100
    var body : some View {
        NavigationStack {
            VStack {
                Text("Number : \(number)")
                    .foregroundColor(.gray)
                
                NavigationLink {
                    StateBindingII(number: $number)
                } label: {
                    Text("Go to next screen")
                        .padding()
                        .background(Color.white)
                        .border(Color.blue, width: 2)
                        .cornerRadius(5)
                }
            }
            .navigationTitle("First screen")
        }
    }
}

struct StateBindingII : View {
    @Binding var number : Int
    
    var body: some View {
        VStack {
            Text("received text: \(number)")
                .foregroundColor(.gray)
        }
    }
}

#Preview {
    StateBinding()
}
