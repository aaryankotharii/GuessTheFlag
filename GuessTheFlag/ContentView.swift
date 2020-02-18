//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Aaryan Kothari on 18/02/20.
//  Copyright © 2020 Aaryan Kothari. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    var body: some View {
         
        .alert(isPresented: $showingAlert){
            
            Alert(title: Text("This is an Alert"), message: Text("you can press okay"), dismissButton: .default(Text("Okay")))
        }
        

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
