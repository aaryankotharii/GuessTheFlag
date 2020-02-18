//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Aaryan Kothari on 18/02/20.
//  Copyright © 2020 Aaryan Kothari. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.white,.black]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            
            Button(action: {
                print("button tapped")
            }) {
            HStack {
                Image(systemName: "pencil")
                    .resizable()
                    .frame(width: 40.0, height: 40.0)
                Text("Edit")
                    .font(.largeTitle)
            }
            .padding()
            .background(Color.white)
            .cornerRadius(30, antialiased: true)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
