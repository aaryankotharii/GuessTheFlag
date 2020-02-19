//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Aaryan Kothari on 18/02/20.
//  Copyright © 2020 Aaryan Kothari. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    
    @State var correctAnswer = Int.random(in: 0...2)
    
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var alertMessage = ""
    @State private var currentScore = 0
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue,.black]), startPoint: .top, endPoint: .bottom)
        VStack{
            VStack(spacing: 25) {
                Text("Tap the flag of")
                    .font(.largeTitle)
                    .fontWeight(.thin)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                Text("\(countries[correctAnswer])")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.black)
            }
            .padding(70)
        ForEach(0..<3){ number in
            Button(action: {
                self.flagTapped(number)
                print(number)
            }){
                Image(self.countries[number])
                    .renderingMode(.original)
                    .clipShape(Capsule())
                    .overlay(Capsule().stroke(Color.black, lineWidth: 1))
                    .shadow(color: Color.black, radius: 2)
                    }
            .padding(10)
                }
            Spacer()
            Text("Score:- \(currentScore)")
                .foregroundColor(Color.white)
            .padding(20)
            }
            
        .alert(isPresented: $showingScore) {
            Alert(title: Text(scoreTitle), message: Text(alertMessage), dismissButton: .default(Text("Continue")){
                self.askQuestion()
                })
            }
        }
       .edgesIgnoringSafeArea(.all)
    }
    
    func flagTapped(_ number : Int){
        if number == correctAnswer {
            currentScore += 1
            scoreTitle = "Correct!"
            alertMessage = ""
        }
        else{
            scoreTitle = "Wrong!"
            alertMessage = "That was the flag of \(countries[number])"
        }
        showingScore = true
    }
    
    func askQuestion(){
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
