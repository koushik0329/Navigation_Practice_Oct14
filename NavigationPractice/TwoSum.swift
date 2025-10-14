//
//  TwoSum.swift
//  NavigationPractice
//
//  Created by Koushik Reddy Kambham on 10/14/25.
//

import SwiftUI

struct TwoSum: View {
    
    @State var firstText : String = ""
    @State var secondText : String = ""
    
    @State var result : String = ""
    var body: some View {
        VStack {
            TextField("Enter First Number", text: $firstText)
                .padding()
                .frame(width: 300, height: 50)
                .foregroundColor(.black)
                .background(.gray)
                .cornerRadius(5)
            
            TextField("Enter Second Number", text: $secondText)
                .padding()
                .frame(width: 300, height: 50)
                .foregroundColor(.black)
                .background(.gray)
                .cornerRadius(5)
            
            Text("Sum is : \(result)")
                .padding()
                .frame(width: 300, height: 50)
                .foregroundColor(.red)
            
            Button("Click Here for answer") {
                let temp1 = Int(firstText) ?? 0
                let temp2 = Int(secondText) ?? 0
                let sum = temp1 + temp2
                result = "\(sum)"
            }
            .padding()
            .background(.blue)
            .cornerRadius(5)
            .foregroundColor(.black)
        }
        .padding()
    }
}

#Preview {
    TwoSum()
}
