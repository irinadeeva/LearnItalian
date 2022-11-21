//
//  TopicView.swift
//  Learn Italian
//
//  Created by Irina  on 18/11/22.
//

import SwiftUI

struct TestView: View {
    
    var body: some View {
    
        
        List {
            
                TopicView(money: "Money", image: "dollarsign.circle", numberWords: "10/20 words")
                TopicView(money: "Money", image: "dollarsign.circle", numberWords: "10/20 words")
                TopicView(money: "Money", image: "dollarsign.circle", numberWords: "10/20 words")
                TopicView(money: "Money", image: "dollarsign.circle", numberWords: "10/20 words")
                TopicView(money: "Money", image: "dollarsign.circle", numberWords: "10/20 words")
                TopicView(money: "Money", image: "dollarsign.circle", numberWords: "10/20 words")
                TopicView(money: "Money", image: "dollarsign.circle", numberWords: "10/20 words")
                TopicView(money: "Money", image: "dollarsign.circle", numberWords: "10/20 words")
                TopicView(money: "Money", image: "dollarsign.circle", numberWords: "10/20 words")
            
        //}.listStyle(.plain)
        }
        
    }
}

struct TopicView: View {
    @State var money: String
    @State var image: String
    @State var numberWords: String
    
    init(money: String, image: String, numberWords: String) {
        self.money = money
        self.image = image
        self.numberWords = numberWords
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
            Text(numberWords)
                .font(.system(.subheadline))
                .offset(x: 35, y: 0)
            
          
            ProgressBarView()
                .offset(x: 35, y: 0)
        }
    }
}


struct TopicView_Previews: PreviewProvider {
    static var previews: some View {
        TopicView(money: "Money", image: "dollarsign.circle", numberWords: "10/20 words")
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}


