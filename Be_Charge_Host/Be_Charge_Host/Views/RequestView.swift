//
//  RequestView.swift
//  Be_Charge_Host
//
//  Created by Claudio Diener on 26/06/22.
//

import SwiftUI

struct RequestView: View {
    var body: some View {
        
        VStack{
//
            ZStack{
                Circle()
                    .foregroundColor(Color.customPrimary)
                    .frame(width: 1400, height: 1400)

                VStack{
                    Spacer()

                    Text("Requests")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .font(.system(size: 18))
                        .font(.title3)
                        .padding(.bottom, 40)
                }
            }
            .padding(.bottom, 2060)
            
            VStack{
                HStack{
                    
                    Spacer()
                    
                    Text("Mario Rossi is")
                        .font(.system(size: 26))
                        .fontWeight(.semibold)
                        .foregroundColor(Color.customPrimary)
                    
                    Spacer()
                }
                
                Text("by requesting your column")
                    .font(.system(size: 26))
                    .fontWeight(.semibold)
                    .padding(.bottom)
                    .foregroundColor(Color("Primary"))
                
                
                Text("Mario wishes to use Lorem Ipsum")
                    .font(.system(size: 22))
                    .fontWeight(.regular)
                    .padding(3)
                    .foregroundColor(.secondary)
                
                Text("Sun Jun 26, 2022 at 5:45 pm")
                    .font(.system(size: 22))
                    .fontWeight(.regular)
                    .padding(3)
                    .foregroundColor(.secondary)
                
                Text("Renault Megane 40 kWh, Plug C")
                    .font(.system(size: 22))
                    .fontWeight(.regular)
                    .padding(3)
                    .foregroundColor(.secondary)
                
                Image("Car")
                    .resizable()
                    .frame(width: 275, height: 178, alignment: .center)
                    .padding()
                    .padding(.bottom, 40)
                
                
                
                HStack{
                    
                    Button(action: {
                        
                    }, label: {
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.white)
                                .frame(width: 158, height: 53)
                                .shadow(color: .customPrimary, radius: 0, x: 0, y: 4)
                                .blur(radius: 1)
                            
                                Text("Rejects")
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                                .fontWeight(.regular)
                        }
                        .padding(6)
                    })
                    
                    Button(action: {
                        
                    }, label: {
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color("AccentColor"))
                                .frame(width: 158, height: 53)
                                .shadow(color: Color("AccentColor"), radius: 0, x: 0, y: 3)
                                .blur(radius: 1)
                            
                                Text("Accepts")
                                .foregroundColor(.white)
                                .font(.system(size: 20))
                                .fontWeight(.regular)
                        }
                        .padding(6)
                    })
                }
            }
            .padding(.top, -2000)
        }
    }
}

struct RequestView_Previews: PreviewProvider {
    static var previews: some View {
        RequestView()
    }
}
