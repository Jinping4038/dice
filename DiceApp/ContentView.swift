//
//  ContentView.swift
//  DiceApp
//
//  Created by king on 4/23/23.
//

import SwiftUI

struct ContentView: View {
    @State private var imageName = "dice-one"
    @State private var diceNumber = 1
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .frame(width: 200, height: 200)
                .scaledToFit()
                .padding(.bottom,30)
            
            Text("Random number is:")
                .padding(.bottom,20)
            
            Text(String(diceNumber))
                .foregroundColor(.purple)
                .font(.largeTitle)
                .padding(.bottom,30)
            
            Button {
                dice()
            } label: { Image("button") }
        }
    }
    
    func dice() {
        diceNumber = Int.random(in: 1...6)
        if diceNumber == 1 {
            imageName = "dice-one"}
        else if diceNumber == 2 {
            imageName = "dice-two"}
        else if diceNumber == 3 {
            imageName = "dice-three"}
        else if diceNumber == 4 {
            imageName = "dice-four"}
        else if diceNumber == 5 {
            imageName = "dice-five"}
        else if diceNumber == 6 {
            imageName = "dice-six"}
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
