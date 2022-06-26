//
//  RequestListItemView.swift
//  Be_Charge_Host
//
//  Created by Carmine Porricelli on 26/06/22.
//

import SwiftUI

struct RequestListItemView: View {
    var body: some View {
        
        HStack {
            VStack(alignment: .leading) {
                Text("Renault Megan 40 kwh")
                    .foregroundColor(.customPrimary)
                    .fontWeight(.bold)
                Text("Dom 26 giu 2022 alle 17:45")
                    .font(.footnote)
                    .foregroundColor(.customSecondary)
            }
            
            Spacer()
            
            HStack {
                makeDiscardButton()
                makeAcceptButton()
            }
        }
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.gray100)
        }
        
    }
    
    @ViewBuilder
    private func makeAcceptButton() -> some View {
        Button {} label: {
            Image(systemName: "checkmark")
                .foregroundColor(.white)
                .padding(12)
                .background {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color.accentColor)
                }
        }
    }
    
    @ViewBuilder
    private func makeDiscardButton() -> some View {
        Button {} label: {
            Image(systemName: "xmark")
                .foregroundColor(.accentColor)
                .padding(12)
                .background {
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.accentColor)
                }
        }
    }
}

struct RequestListItemView_Previews: PreviewProvider {
    static var previews: some View {
        RequestListItemView()
    }
}
