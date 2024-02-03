//
//  TranslateHeader.swift
//  Papago2
//
//  Created by 최주리 on 2024/02/03.
//

import SwiftUI

struct TranslateHeader: View {
    
    @State var showLanguageList = false
    
    var body: some View {
        HStack {
            Spacer()
            Button(action: {
                self.showLanguageList.toggle()
            }, label: {
                Text("영어")
                    .foregroundStyle(.black)
            }).sheet(isPresented: $showLanguageList) {
                LanguageList()
            }
            Spacer()
            Button(action: {
                
            }, label: {
                Image(systemName: "arrow.left.arrow.right")
                    .foregroundStyle(.black)
                    .padding(.leading, 15)
                    .padding(.trailing, 15)
                    .padding(.top, 5)
                    .padding(.bottom, 5)
                    .overlay(RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.gray, lineWidth: 1))
            })
            Spacer()
            Button(action: {
                self.showLanguageList.toggle()
            }, label: {
                Text("한국어")
                    .foregroundStyle(.black)
            }).sheet(isPresented: $showLanguageList) {
                LanguageList()
            }
            Spacer()
        } //HStack - translate
        .padding(.trailing, 10)
        .padding(.leading, 10)
        Divider()
    }
}

#Preview {
    TranslateHeader()
}
