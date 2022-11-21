//
//  HomePageView.swift
//  Learn Italian
//
//  Created by Irina Deeva on 20/11/22.
//

import SwiftUI

struct TopicListView: View {
    @State private var searchText = ""
    
    var body: some View {
        
        
        NavigationStack{
            
            VStack(alignment: .leading){
                
                List {
                    Section{
                        ForEach(topics){topic in
                            NavigationLink{
                                WordListView()
                            } label: {
                                TopicView(money: topic.name, image: topic.picture, numberAllWords: topic.numberAllWords, numberLearntWords: topic.numberLearntWords)
                            }
                        }
                    } header: {
                        Text("Choose topic")
                        .offset(x:-17,y:0)  // to do - better solution???
                    }.headerProminence(.increased)
                    
                }.navigationTitle("Learn Italian")
                    .searchable(text: $searchText) // to do - workable
            }
        }
        
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        TopicListView()
    }
}
