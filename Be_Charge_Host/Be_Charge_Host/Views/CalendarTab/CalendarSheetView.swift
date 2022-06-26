//
//  SheetView.swift
//  Be Charge Host
//
//  Created by Martina Esposito on 26/06/2022.
//

import SwiftUI

struct CalendarSheet: View {
    
    @State private var scrollOffset: CGFloat = 0.0
    
    
    var contentScale: CGFloat {
        let minScale = 0.92
        let scale = ((scrollOffset / 100) * (1 - minScale)) + minScale
        
        return scale >= 1 ? 1 : scale
    }
    
    var body: some View {
        
        ScrollViewOffsetReader(scrollOffset: $scrollOffset) {
            ZStack {
                
                RoundedRectangle(cornerRadius: 50)
                    .frame(width: UIScreen.main.bounds.width, height: 800)
                    .offset(y: 40)
                    .foregroundColor(.white)
                    .padding(.top, 30)
                
                VStack{
                    HStack{
                        
                        Text("12 visitors")
                            .foregroundColor(.purple)
                            .font(.title3)
                            .fontWeight(.semibold)
                            .padding()
                        
                        Spacer()
                    }
                    .padding()
                    
                    HStack{
                        VStack{
                            Text("08:00")
                                .font(.body)
                            
                            Text("AM")
                                .foregroundColor(.secondary)
                                .font(.body)
                        }
                            
                            RoundedRectangle(cornerRadius: 50)
                                .frame(width: 330, height: 0.5)
                                .foregroundColor(.secondary)
                    }
                    
                    HStack{
                        Spacer()
                        
                        VStack{
                            
                            RoundedRectangle(cornerRadius: 300)
                                .frame(width: 300, height: 80)
                                .foregroundColor(Color("Trasparent"))
                                .padding(.trailing)
                            
                            RoundedRectangle(cornerRadius: 300)
                                .frame(width: 300, height: 80)
                                .foregroundColor(Color("Trasparent"))
                                .padding(.trailing)
                        }
                    }
                    
                    HStack{
                        VStack{
                            Text("08:30")
                                .font(.body)
                            
                            Text("AM")
                                .foregroundColor(.secondary)
                                .font(.body)
                        }
                            
                            RoundedRectangle(cornerRadius: 50)
                                .frame(width: 330, height: 0.5)
                                .foregroundColor(.secondary)
                    }
                    
                    HStack{
//                        Spacer()
                        
                        Text("Break")
                            .font(.title2)
                            .fontWeight(.medium)
                    }
                    
                    HStack{
                        VStack{
                            Text("09:00")
                                .font(.body)
                            
                            Text("AM")
                                .foregroundColor(.secondary)
                                .font(.body)
                        }
                            
                            RoundedRectangle(cornerRadius: 50)
                                .frame(width: 330, height: 0.5)
                                .foregroundColor(.secondary)
                    }
                    
                    HStack{
                        Spacer()
                        
                        VStack{
                            
                            RoundedRectangle(cornerRadius: 300)
                                .frame(width: 300, height: 80)
                                .foregroundColor(Color("Trasparent"))
                                .padding(.trailing)
                        }
                    }
                    
                    HStack{
                        VStack{
                            Text("09:30")
                                .font(.body)
                            
                            Text("AM")
                                .foregroundColor(.secondary)
                                .font(.body)
                        }
                            
                            RoundedRectangle(cornerRadius: 50)
                                .frame(width: 330, height: 0.5)
                                .foregroundColor(.secondary)
                    }
                    
                    HStack{
                        Spacer()
                        
                        VStack{
                            
                            RoundedRectangle(cornerRadius: 300)
                                .frame(width: 300, height: 80)
                                .foregroundColor(Color("Trasparent"))
                                .padding(.trailing)
                        }
                    }
                    
                }
            }
            .padding(.top, 160)
            .scaleEffect(contentScale, anchor: .top)
        }
    }
}

struct CalendarSheet_Previews: PreviewProvider {
    static var previews: some View {
        CalendarSheet()
    }
}
