//
//  ListSample.swift
//  NavigationPractice
//
//  Created by Koushik Reddy Kambham on 10/14/25.
//

import SwiftUI

struct ListSample : View {
    
    let names = ["koushik", "koushik", "koushik", "koushik"]
    var body : some View {
        List(names, id: \.self) { name in
            HStack{
                Spacer()
                Text(name)
                Spacer()
            }
        }
    }
}

#Preview{
    ListSample()
}
