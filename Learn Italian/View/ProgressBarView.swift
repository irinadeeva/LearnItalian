//
//  ProgressBarView.swift
//  Learn Italian
//
//  Created by Irina Deeva on 20/11/22.
//

import SwiftUI

struct ProgressBarView: View {
    var body: some View {
        
        HStack{
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(width: 170, height: 5.0)
                    .foregroundColor(Color.gray)
                Rectangle()
                    .frame(width: 85, height: 5.0)
                    .foregroundColor(Color.green)
            }
            .cornerRadius(3.0)
            
            Text("80%")
                .font(.system(size: 15))
        }
    }
}

struct ProgressBarView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBarView()
    }
}
