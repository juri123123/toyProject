//
//  SwiftUIView.swift
//  Papago2
//
//  Created by 최주리 on 2024/02/04.
//

import SwiftUI

struct ConversationView: View {
    var body: some View {
        ZStack {
            //Color.cyan
            GeometryReader { geometry in
                VStack {
                    ConversationSubView()
                        .background(Color.cyan)
                    
                    ConversationSubView(language: "한국어", subLanguage: " ", textColor: .blue)
                        .background(.white)
                }
                
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: BackButton())
        .ignoresSafeArea()
    }
}

#Preview {
    ConversationView()
}
