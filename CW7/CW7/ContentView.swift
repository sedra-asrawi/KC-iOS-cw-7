//
//  ContentView.swift
//  CW7
//
//  Created by Sedra Asrawi on 19/08/2022.
//

import SwiftUI

struct ContentView: View {

    @State var photo = ""
    var emojis = ["😍","🥲","😇","🤪","🥳","🙁","😭","😳","🥵"]

    
    var body: some View {
        VStack {
            Text("اختر الايموجي الذي يعبر عنك اليوم")
                .font(.system(size: 30))
                .multilineTextAlignment(.center)
                .padding()
                Text(photo)
                .frame(width: 150, height: 150)
                .font(.system(size: 100))
            ScrollView(.horizontal){
                HStack {
                    ForEach(emojis, id: \.self) {
                        emoji in
                        Text(emoji)
                            .padding()
                            .font(.system(size: 50))
                            .background(.yellow.opacity(0.2))
                            .cornerRadius(500)
                            .onTapGesture {
                                photo = emoji
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
