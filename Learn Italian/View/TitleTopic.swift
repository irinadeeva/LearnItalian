//
//  TitleTopicView.swift
//  Learn Italian
//
//  Created by Irina Deeva on 21/11/22.
//

import SwiftUI

struct TitleTopic: View {        
    @State var money: String
    @State var numberAllWords: Int
    @State var numberLearntWords: Int
    
    init(money: String, numberAllWords: Int, numberLearntWords: Int) {
        self.money = money
        self.numberAllWords = numberAllWords
        self.numberLearntWords = numberLearntWords
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            VStack{
                HStack {
                    Text(money)
                        .font(.system(size: 34, weight: .bold))
                }
            }
            Spacer(minLength: 5)
            Text("\(numberLearntWords)/\(numberAllWords) words")
                .font(.system(size: 22))
            
            ProgressBarViewBig()
                
        }
    }
}

struct TitleTopicView_Previews: PreviewProvider {
    static var previews: some View {
        TitleTopic(money: "Money", numberAllWords: 20, numberLearntWords: 0)
    }
}
