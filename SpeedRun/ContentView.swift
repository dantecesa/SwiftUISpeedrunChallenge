//
//  ContentView.swift
//  SpeedRun
//
//  Created by Dante Cesa on 5/22/22.
//

import SwiftUI

let modes = ["CINEMATIC", "VIDEO", "PHOTO", "PORTRAIT", "PANO"]

struct ContentView: View {
    var body: some View {
        ZStack {
            //Color.white
            //  .ignoresSafeArea()
            
            Image("photo")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Image(systemName: "bolt.circle")
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                    Spacer()
                    Image(systemName: "chevron.up.circle.fill")
                        .foregroundStyle(.white, .gray)
                        .font(.system(size: 25))
                    Spacer()
                    Image(systemName: "livephoto")
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                }
                .padding()
                .padding(.bottom, 20)
                .background(.black.opacity(0.5))
                
                Spacer()
                
                HStack {
                    Text("0,5")
                        .font(.system(size: 12))
                        .padding(6)
                        .foregroundColor(.white)
                        .background(.black.opacity(0.5))
                        .clipShape(Circle())
                    Text("1x")
                        .font(.system(size: 16))
                        .fontWeight(.semibold)
                        .padding(10)
                        .foregroundColor(.yellow)
                        .background(.black.opacity(0.5))
                        .clipShape(Circle())
                    Text("3")
                        .font(.system(size: 12))
                        .padding(6)
                        .foregroundColor(.white)
                        .background(.black.opacity(0.5))
                        .clipShape(Circle())
                }
                .padding(.bottom, 10)
                
                VStack {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack (spacing: 20) {
                            ForEach(0..<modes.count) { modesIndex in
                                Text(modes[modesIndex])
                                    .foregroundColor(modesIndex == 2 ? .yellow : .white)
                                    .font(.system(size: 15, weight: .bold, design: .monospaced))
                            }
                        }
                    }
                    
                    HStack {
                        Image("photo")
                            .resizable()
                            .frame(width: 45, height: 45)
                            .clipShape(RoundedRectangle(cornerRadius: 4))
                        Spacer()
                        Circle()
                                .frame(width: 80, height: 80)
                                .foregroundColor(.white)
                                .overlay(Circle()
                                    .stroke(.black)
                                    .foregroundColor(.white)
                                    .frame(width: 70, height: 70)
                                )
                                .padding(.top, 10)
                        
                        
                        Spacer()
                        Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                            .font(.system(size: 40))
                            .foregroundStyle(.white, .black.opacity(0.75))
                    }
                }
                .padding()
                .background(.black.opacity(0.5))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
