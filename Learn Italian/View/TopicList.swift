//
//  HomePageView.swift
//  Learn Italian
//
//  Created by Irina Deeva on 20/11/22.
//

import SwiftUI

struct TopicListView: View {
    var body: some View {
        
        
        NavigationView {
            
            VStack(alignment: .leading){
                
                Text("Choose Topic")
                    .font(.title2)
                    .bold()
        
                
                
                
                List {
                    ForEach(topics){topic in
                        NavigationLink{
                            WordListView()
                        } label: {
                            TopicView(money: topic.name, image: topic.picture, numberAllWords: topic.numberAllWords, numberLearntWords: topic.numberLearntWords)
                        }
                    }
                }
              
                
            }.navigationTitle("Learn Italian")
                

        }
        
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        TopicListView()
    }
}
