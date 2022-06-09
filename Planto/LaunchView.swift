//
//  ContentView.swift
//  Planto
//
//  Created by Safe City Mac 001 on 08/06/2022.
//

import SwiftUI

struct ContentView: View {
    static let gradientStart = Color(red: 239.0 / 255, green: 120.0 / 255, blue: 221.0 / 255)
    static let gradientEnd = Color(red: 239.0 / 255, green: 172.0 / 255, blue: 120.0 / 255)
    var body: some View {
        ZStack{
            Color("AppBg-OffWhite")
                .ignoresSafeArea()
            ZStack{
                VStack {
                    HStack {
                        ZStack {
                            Image("bgImage")
                                .resizable()
                                .scaledToFill()
                            .frame(width: UIScreen.main.bounds.width - 30, height: UIScreen.main.bounds.height/1.75, alignment: .top)
                        .mask(HomeBGMask())
                            
                            HStack{
                                
                            }
                            .frame(width: UIScreen.main.bounds.width - 30, height: UIScreen.main.bounds.height/1.75, alignment: .top)
                            .background(Color("AppBlue"))
                            .mask(HomeBGMask())
                            .opacity(0.9)
                        }
                        
                        Spacer()
                        
                    }
                    
                    Spacer()
                }
                .ignoresSafeArea()
            }
            VStack {
                HStack {
                    Image("PlantoLogo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 100)
                        
                    Spacer()
                }
                .padding(.leading,15)
                
                HStack{
                    Spacer()
                    Image("HomePlant")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width - 100, height: UIScreen.main.bounds.height/1.9)
                        .padding(.trailing,20)

                }
                
                HStack {
                    VStack {
                        Text("Find your")
                            .font(.custom("GalanoGrotesqueLight", size: 18))
                            .fontWeight(.regular)
                            .foregroundColor(Color("TextTagLine"))
                            .multilineTextAlignment(.leading)
                        Text("Plants")
                            .multilineTextAlignment(TextAlignment.leading)
                            .font(.custom("GalanoGrotesqueBlack", size: 40))

                    }
                    .padding(.leading,30)
                    Spacer()
                }
                

                Spacer()
            }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
