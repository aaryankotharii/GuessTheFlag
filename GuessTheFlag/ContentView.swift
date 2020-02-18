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
        HStack {
            Color.red.frame(width: 100, height: 200, alignment: .center)

            Text("FRANCE")
            
            Color.blue.frame(width: 100, height: 200, alignment: .center)
        }
    .cornerRadius(20, antialiased: true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
