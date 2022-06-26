//
//  RequestView.swift
//  Be_Charge_Host
//
//  Created by Claudio Diener on 26/06/22.
//

import SwiftUI

struct RequestView: View {
    
    @Binding var isPresented: Bool
    
    var body: some View {
        
        VStack {
            
            VStack {
                    
                Text("Mario Rossi is requesting your column")
                    .font(.title)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.customPrimary)
                    .padding(.top)
                    
                                                                
                Text("Renault Megane 40 kWh, Plug C")
                    .font(.title2)
                    .fontWeight(.regular)
                    .padding(3)
                    .foregroundColor(.customSecondary)
                
                Text("Sun Jun 26, 2022 at 5:45 pm")
                    .font(.body)
                    .fontWeight(.regular)
                    .padding(3)
                    .foregroundColor(.customSecondary)
                
                Spacer()

                
                Image("Car")
                    .resizable()
                    .frame(width: 275, height: 178)
                    .padding()
                
                
                Spacer()
                
                                
                HStack {
                    makeRejectButton()
                    makeAcceptButton()
                }
                .padding()
            }
        }
    }
    
    
    @ViewBuilder
    private func makeRejectButton() -> some View {
        Button { isPresented = false } label: {
            
            Text("Rejects")
                .foregroundColor(.customPrimary)
                .padding(.vertical)
                .frame(maxWidth: .infinity)
                .background {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.white)
                        .shadow(color: .customSecondary.opacity(0.2), radius: 10, x: 0, y: 8)

                }
        }
    }
    
    @ViewBuilder
    private func makeAcceptButton() -> some View {
        Button { isPresented = false } label: {
            
            Text("Accepts")
                .foregroundColor(.white)
                .padding(.vertical)
                .frame(maxWidth: .infinity)
                .background {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color.accentColor)
                        .shadow(color: .accentColor.opacity(0.2), radius: 10, x: 0, y: 8)

                }
        }

    }
}

struct RequestView_Previews: PreviewProvider {
    static var previews: some View {
        RequestView(isPresented: .constant(true))
    }
}
