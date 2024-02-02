//
//  ButtonView.swift
//  Papago2
//
//  Created by 최주리 on 2024/02/02.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        VStack {
            Image(systemName: "mic")
                .font(.largeTitle)
            Text("음성")
        }
    }
}

#Preview {
    ButtonView()
}
