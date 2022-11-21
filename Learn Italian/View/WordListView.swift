//
//  WordListView.swift
//  Learn Italian
//
//  Created by Irina Deeva on 20/11/22.
//

import SwiftUI

struct WordListView: View {
    var body: some View {
        
        VStack(alignment: .leading){
            List{
                Section {
                    WordView(language: "English", word: "money", transcription: "ˈmʌni")
                } header: {
                    TitleTopic(money: "Money", numberAllWords: 20, numberLearntWords: 0)
                        .offset(x: -17, y: 0)// to do - better solution???
                }.headerProminence(.increased)
                Section{
                    WordView(language: "Italian", word: "soldi", transcription: "sòldi")
                }
            }
        }
    }
}

struct WordListView_Previews: PreviewProvider {
    static var previews: some View {
        WordListView()
    }
}
