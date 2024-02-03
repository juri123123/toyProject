//
//  ContentView.swift
//  Papago2
//
//  Created by 최주리 on 2024/02/02.
//

import SwiftUI

struct ContentView: View {
    
    @State var text: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                //MARK: - header
                HStack {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "line.3.horizontal")
                            .font(.title2)
                            .foregroundStyle(.black)
                    })
                    Spacer()
                    
                    Text("papago")
                        .fontWeight(.bold)
                        .font(.title2)
                    Spacer()
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "note")
                            .font(.title2)
                            .foregroundStyle(.black)
                    })
                }//HStack - header
                .padding()
                .padding(.top, 30)
                
                //MARK: - translate header
                TranslateHeader()
                
                //MARK: - buttons
                VStack(alignment: .center, spacing: 0) {
                    HStack {
                        TextField("번역할 내용을 입력하세요", text: $text)
                            .font(.title2)
                            .multilineTextAlignment(.center)
                            .frame(height: 290, alignment: .center)
                    }
                    
                    NavigationLink(destination: VoiceView()) {
                        VStack {
                            Image(systemName: "mic")
                                .font(.system(size: 35))
                                .foregroundStyle(.white)
                            Text("음성")
                                .foregroundStyle(.white)
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        
                    }
                    
                    NavigationLink(destination: ConversationView()) {
                        VStack {
                            Image(systemName: "bubble.left.and.text.bubble.right")
                                .font(.system(size: 35))
                                .foregroundStyle(.white)
                            Text("대화")
                                .foregroundStyle(.white)
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.cyan)
                        
                    }
                    
                    NavigationLink(destination: VoiceView()) {
                        VStack {
                            Image(systemName: "camera.metering.center.weighted")
                                .font(.system(size: 35))
                                .foregroundStyle(.white)
                            Text("이미지")
                                .foregroundStyle(.white)
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.indigo)
                        
                    }
                    
                    NavigationLink(destination: VoiceView()) {
                        VStack {
                            Image(systemName: "camera.badge.ellipsis")
                                .font(.system(size: 35))
                                .foregroundStyle(.white)
                            Text("학습카메라")
                                .foregroundStyle(.white)
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        
                    }
    
                }//VStack
            }//NavigationStack
        }
        //.ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
