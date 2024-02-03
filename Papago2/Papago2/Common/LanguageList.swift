//
//  LanguageList.swift
//  Papago2
//
//  Created by 최주리 on 2024/02/04.
//

import SwiftUI

struct LanguageList: View {
    var body: some View {
        
        @State var languages: [String] = [
            "한국어",
            "영어",
            "중국어(간체)",
            "일본어",
            "베트남어"
        ]

        NavigationView {
            List {
                Section(header: Text("모든 언어")
                    .padding(.leading, 15)
                    .padding(.trailing, 15)
                    .padding(.top, 5)
                    .padding(.bottom, 5)
                    .overlay(RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.gray, lineWidth: 0.3))) {
                    ForEach(languages, id: \.self) { name in
                        Text(name)
                            .padding(.top, 10)
                            .padding(.bottom, 10)
                    }
                    .onTapGesture {
                        //언어 선택 후 main view에 전달
                    }
                }
            }
            .listStyle(.grouped)
            .scrollContentBackground(.hidden) //list background 흰색으로 만들기
            .navigationBarTitle("이 언어로 입력", displayMode: .inline)
//            .navigationBarBackButtonHidden(true)
//            .navigationBarItems(leading: BackButton())
            
        }
        
        
        
    }
}

#Preview {
    LanguageList()
}
