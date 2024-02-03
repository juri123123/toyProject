//
//  TranslateHeader2.swift
//  Papago2
//
//  Created by 최주리 on 2024/02/03.
//
import SwiftUI

struct TranslateHeader2: View {
    var body: some View {
        HStack {
            Spacer()
                .frame(width: 65)
            Button(action: {
                
            }, label: {
                Text("영어")
                    .foregroundStyle(.white)
            })
            Spacer()
            Button(action: {
                
            }, label: {
                Image(systemName: "arrow.left.arrow.right")
                    .foregroundStyle(.white)
                    .padding(.leading, 15)
                    .padding(.trailing, 15)
                    .padding(.top, 5)
                    .padding(.bottom, 5)
                    .overlay(RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.white, lineWidth: 1))
            })
            Spacer()
            Button(action: {
                
            }, label: {
                Text("한국어")
                    .foregroundStyle(.white)
            })
            Spacer()
        } //HStack - translate
        .padding(.trailing, 10)
        .padding(.leading, 10)
        Divider()
            .foregroundStyle(.white)
    }
}

#Preview {
    TranslateHeader()
}

