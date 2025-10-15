//
//  DataPassingObservable.swift
//  NavigationPractice
//
//  Created by Koushik Reddy Kambham on 10/14/25.
//

import SwiftUI
import Combine

class SharedData : ObservableObject {
    @Published var text : String = "Hello"
}

struct ScreenA : View {
    @ObservedObject var sharedDataObj : SharedData
    
    init(sharedDataObj: SharedData) {
        self.sharedDataObj = sharedDataObj
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Enter text", text: $sharedDataObj.text)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                
                Text("Text in A : \(sharedDataObj.text)")
                
                NavigationLink {
                    ScreenB(sharedDataObj: sharedDataObj)
                } label: {
                    Text("Click here to go to screen B")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(5)
                    
                   
                }
            }
            .navigationTitle("Screen A")
        }
    }
}

struct ScreenB : View {
    @ObservedObject var sharedDataObj : SharedData
    
    init(sharedDataObj: SharedData) {
        self.sharedDataObj = sharedDataObj
    }
    
    var body : some View {
        VStack {
            TextField("Edit text", text: $sharedDataObj.text)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            Text("Text in B : \(sharedDataObj.text)")
        }
        .navigationTitle("Screen B")
    }
}

#Preview {
    let sharedDataObj = SharedData()
    ScreenA(sharedDataObj: sharedDataObj)
}
