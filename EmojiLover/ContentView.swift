//
//  ContentView.swift
//  EmojiLover
//
//  Created by Bibek Adhikari on 4/30/23.
//

import SwiftUI
//CaseIterable will help us to loop every case
enum Emoji: String, CaseIterable {
    case 😉,🤣,🕉️,🥳
    
}
struct ContentView: View {
    //@State is added so that we can use $selection in picker
    @State var selection : Emoji = .😉
    
    var body: some View {
        NavigationView{
            //VStack is used to show file vertically one by one
            VStack{
                Text(selection.rawValue)
                    .font(.system(size: 150))
                
                //Picker here
                Picker("Select Emoji", selection: $selection){
                    ForEach(Emoji.allCases, id: \.self){emoji in Text(emoji.rawValue)
                    }
                }
                .pickerStyle(.segmented)
            }
            .navigationTitle("EmojiPickers")
            .padding()
        }}}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
