//
//  ConversationSubView.swift
//  Papago2
//
//  Created by 최주리 on 2024/02/04.
//

import SwiftUI

struct ConversationSubView: View {
    
    var language: String = "일본어"
    var subLanguage: String = "日本語"
    var textColor: Color = .white
    var subTextColor: Color = .white
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                VStack(alignment: .trailing) {
                    Text("\(language)")
                        .foregroundStyle(textColor)
                        .font(.system(size: 25))
                    Text("\(subLanguage)")
                        .foregroundStyle(subTextColor)
                        .foregroundStyle(.gray)
                }
                .padding(.trailing)
                Button(action: {
                    
                }) {
                    Circle()
                        .shadow(radius: 5)
                        .frame(width: 80)
                        .overlay(Image(systemName: "mic")
                            .font(.largeTitle)
                            .foregroundStyle(.white))
                }
            }
            .padding(30)
            
        }
    }
}

#Preview {
    ConversationSubView()
}
