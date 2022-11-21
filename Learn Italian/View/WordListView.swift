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
            TopicView(money: "Money", image: "dollarsign.circle", numberAllWords: 20, numberLearntWords: 0)
             
            
            
            List{
                Section{
                    WordView(language: "English", word: "money", transcription: "ˈmʌni")
                }
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
