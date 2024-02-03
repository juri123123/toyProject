//
//  VoiceView.swift
//  Papago2
//
//  Created by 최주리 on 2024/02/03.
//

import SwiftUI

struct VoiceView: View {
    var body: some View {
        ZStack {
            Color.green
            VStack {
                Spacer()
                    .frame(height: 60)
                TranslateHeader2()
                Spacer()
                Button(action: {
                    
                }) {
                    Image(systemName: "mic")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .padding(20)
                        .overlay(Circle()
                            .stroke(Color.white, lineWidth: 1)
                            .shadow(radius: 10))
                            
                }
                .padding(.bottom, 100)
            }//VStack
        }//ZStack
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: BackButton())
        .ignoresSafeArea()
    }
}

#Preview {
    VoiceView()
}
