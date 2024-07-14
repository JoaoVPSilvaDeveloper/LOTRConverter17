//
//  ContentView.swift
//  LOTRConverter17
//
//  Created by Joao Silva on 10/07/2024.
//

import SwiftUI

struct ContentView: View {
    @State var showExchangeInfo = false
    
    var body: some View {
        ZStack {
            // Background image
            Image(.background)
                .resizable()
                .ignoresSafeArea()
        
            VStack {
                // pracing pany image
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                // Currency exchange text
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                // Currency conversion section
                
                HStack {
                    // left conversion section
                    
                    VStack {
                        // Currency
                        
                        HStack {
                            // Currency image
                            Image(.silverpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            
                            // Currency text
                            Text("Silver piece")
                                .font(.headline)
                                .foregroundStyle(.white)

                        }
                        
                        // Textfield
                        Text("Textfield")
                    }
                    
                    // Equal sign
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .symbolEffect(.pulse)
                    //Right conversion section

                    VStack {
                        // Currency
                        
                        HStack {
                            // Currency text
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                            
                            // Currency image
                            Image(.goldpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)

                        }
                        
                        // Textfield
                        Text("Textfield")
                    }
                }
                
                Spacer()
                
                // Info button
                HStack {
                    Spacer()
                    
                    Button {
                        showExchangeInfo.toggle()
                    } label: {
                        Image(systemName: "info.circle.fill")
                       .font(.largeTitle)
                       .foregroundStyle(.white)
                    }
                    .padding(.trailing)
                }
                
                
                
                

            }
        }
    }
}











#Preview {
    ContentView()
}

