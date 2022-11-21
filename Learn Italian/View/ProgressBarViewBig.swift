//
//  ProgressBarViewBig.swift
//  Learn Italian
//
//  Created by Irina Deeva on 21/11/22.
//

import SwiftUI

struct ProgressBarViewBig: View {
    var body: some View {
        HStack{
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(width: 250, height: 10.0)
                    .foregroundColor(Color.gray)
                Rectangle()
                    .frame(width: 185, height: 10.0)
                    .foregroundColor(Color.green)
            }
            .cornerRadius(3.0)
        
            Text("80%")
                .font(.system(size: 24))
                .offset(x: 30, y:0)
      
        }
    }
}

struct ProgressBarViewBig_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBarViewBig()
    }
}
