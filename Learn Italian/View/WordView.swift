//
//  WordView.swift
//  Learn Italian
//
//  Created by Irina Deeva on 21/11/22.
//

import SwiftUI


struct TestWordsView: View {
    
    var body: some View {
        
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


struct WordView: View {
    @State var language: String
    @State var word: String
    @State var transcription: String
    
    init(language: String, word: String, transcription: String) {
        self.language = language
        self.word = word
        self.transcription = transcription
    }
    
    var body: some View {
        VStack{
            Spacer(minLength: 5)
            HStack{
                Image(systemName: "speaker.wave.2.circle")
                    .font(.system(size: 36))
                Text(language)
                    .font(.system(size: 24, weight: .medium))
            }
            Spacer(minLength: 50)
            VStack{
                Text(word)
                    .font(.system(size: 36, weight: .medium))
                    .offset(x:10, y:0)
                Text(transcription)
                    .font(.system(size: 24))
                    .offset(x:-15, y:0)
                        
                
            }
            Spacer(minLength: 50)
            
        }
    }
}

struct WordView_Previews: PreviewProvider {
    static var previews: some View {
        WordView(language: "English", word: "money", transcription: "ˈmʌni")
    }
}

struct TestWordsView_Previews: PreviewProvider {
    static var previews: some View {
        TestWordsView()
    }
}
