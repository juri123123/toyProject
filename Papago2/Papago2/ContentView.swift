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
                    .font(.title)
                Spacer()
                Button(action: {
                    
                }, label: {
                    Image(systemName: "note")
                        .font(.title)
                        .foregroundStyle(.black)
                })
            }//HStack - header
            .padding()
            
            //MARK: - translate header
            HStack {
                Spacer()
                Button(action: {
                    
                }, label: {
                    Text("영어")
                })
                Spacer()
                Button(action: {
                    
                }, label: {
                    Image(systemName: "arrow.left.arrow.right")
                        .padding()
                        .presentationCornerRadius(50)
                })
                

                
                Spacer()
                Button(action: {
                    
                }, label: {
                    Text("한국어")
                })
                Spacer()
            } //HStack - translate
            .padding()
            
            
            //MARK: - buttons
            VStack(alignment: .center, spacing: 0) {
                HStack {
                    TextField("번역할 내용을 입력하세요", text: $text)
                        .font(.title2)
                        .multilineTextAlignment(.center)
                        .frame(height: 290, alignment: .center)
                }
                Button(action: {
                    
                }, label: {
                    VStack {
                        Image(systemName: "mic")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                        Text("음성")
                            .foregroundStyle(.white)
                    }
                    .padding()
                })
                .frame(maxWidth: .infinity)
                .background(Color.green)
                
                Button(action: {
                    
                }, label: {
                    VStack {
                        Image(systemName: "bubble.left.and.text.bubble.right")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                        Text("대화")
                            .foregroundStyle(.white)
                    }
                    .padding()
                })
                .frame(maxWidth: .infinity)
                .background(Color.cyan)
                
                Button(action: {
                    
                }, label: {
                    VStack {
                        Image(systemName: "camera.metering.center.weighted")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                        Text("이미지")
                            .foregroundStyle(.white)
                    }
                    .padding()
                })
                .frame(maxWidth: .infinity)
                .background(Color.indigo)
                
                Button(action: {
                    
                }, label: {
                    VStack {
                        Image(systemName: "camera.badge.ellipsis")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                        Text("학습카메라")
                            .foregroundStyle(.white)
                    }
                    .padding()
                })
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.blue)
            }//VStack
            
            
        }
        //.ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
