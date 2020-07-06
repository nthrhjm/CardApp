//
//  ContentView.swift
//  CardApp
//
//  Created by nhajime on 2020/07/06.
//  Copyright © 2020 nhajime. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var cards = ["かばん": "bag",
                 "自動車": "car",
                 "誕生日": "birthday",]
    @State var japanese = "かばん"
    @State var isJapanese = true
    
    var body: some View {
        VStack {
            Text(isJapanese ? japanese : cards[japanese]!)
            HStack {
                Button(action:{ self.isJapanese.toggle()}) {
                    Text("裏返す")
                }
                Button(action: {
                    self.isJapanese = true
//                    self.japanese = self.cards.randomElement()!.key
                    if let elemet = self.cards.randomElement() {
                        self.japanese = elemet.key
                    }
                }) {
                    Text(/*@START_MENU_TOKEN@*/"次へ"/*@END_MENU_TOKEN@*/)
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
