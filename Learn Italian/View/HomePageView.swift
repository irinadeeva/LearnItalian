//
//  HomePageView.swift
//  Learn Italian
//
//  Created by Irina Deeva on 20/11/22.
//

import SwiftUI

struct HomePageView: View {
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

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
