//
//  ContentView.swift
//  CW5
//
//  Created by Bo3lwah on 14/09/2022.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["🥰","😃", "😆", "🥺", "🤣", "☺️", "🥳","😒","😕","☹️", "😣" ,"😖","😢","😔","😠","😤","😡","🤬","-.-"]
    @State var mood = ""
    
    var body: some View {
        ZStack {Color(.yellow)
                .ignoresSafeArea()
            VStack {
                Text("اختار الايموجي الي يعبر عنك اليوم")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding(80)
                Text(mood)
                  
                    .font(.system(size: 80))
                    .frame(width: 100, height: 100)
                    .background(Color.init("pink2"))
                    .cornerRadius(100)
                Image(systemName: "")
                ScrollView(.horizontal) {
                    HStack {
                        ForEach (emojis,id: \.self) { emoji in
                            Text("\(emoji)")
                                .font(.system(size: 50))
                                .frame(width: 70, height: 70)
                                .onTapGesture {
                                    mood = emoji
                                    
                                }
                            
                            
                        }
                        
                    }
                }
                
            }
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

