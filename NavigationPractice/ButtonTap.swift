//
//  ButtonTap.swift
//  NavigationPractice
//
//  Created by Koushik Reddy Kambham on 10/14/25.
//

import SwiftUI

struct ButtonTap : View {
    
    @State var tapped : Bool = false
    var body: some View {
        Button("click here to change the color") {
            tapped.toggle()
        }
        .padding()
        .foregroundColor(.white)
        .background(tapped ? Color.red: Color.green)
        .cornerRadius(10)
    }
}

#Preview {
    ButtonTap()
}
