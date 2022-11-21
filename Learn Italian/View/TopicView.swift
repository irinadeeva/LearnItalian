//
//  TopicView.swift
//  Learn Italian
//
//  Created by Irina  on 18/11/22.
//

import SwiftUI

struct TopicView: View {
    @State var money: String
    @State var image: String
    @State var numberAllWords: Int
    @State var numberLearntWords: Int
    
    init(money: String, image: String, numberAllWords: Int, numberLearntWords: Int) {
        self.money = money
        self.image = image
        self.numberAllWords = numberAllWords
        self.numberLearntWords = numberLearntWords
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            VStack{
                HStack {
                    Image(systemName: image)
                        .font(.system(size: 24))
                    Text(money)
                        .font(.system(size: 21, weight: .heavy))
                }
            }
            Text("\(numberLearntWords)/\(numberAllWords) words")
                .font(.system(.subheadline))
                .offset(x: 35, y: 0)
            
            ProgressBarView()
                .offset(x: 35, y: 0)
        }
    }
}


struct TopicView_Previews: PreviewProvider {
    static var previews: some View {
        TopicView(money: "Money", image: "dollarsign.circle", numberAllWords: 20, numberLearntWords: 0)
    }
}
