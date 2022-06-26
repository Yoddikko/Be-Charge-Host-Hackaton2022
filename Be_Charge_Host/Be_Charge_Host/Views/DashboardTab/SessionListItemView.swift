//
//  SessionListItemView.swift
//  Be_Charge_Host
//
//  Created by Carmine Porricelli on 26/06/22.
//

import SwiftUI

struct SessionListItemView: View {
    var body: some View {
        HStack(alignment: .bottom) {
            VStack(alignment: .leading) {
                Text("Renault Megan 40 kwh")
                    .font(.headline)
                Text("Dom 26 giu 2022 alle 17:45")
                    .font(.subheadline)

            }
            .foregroundColor(.customPrimary)
            
            Spacer()
            
            VStack(alignment: .trailing) {
                Text("1,40€")
                Text("1224 kw")
            }
            .foregroundColor(.customSecondary)
            .font(.footnote)
        }
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.gray100)
        }
        
    }
}

struct SessionListItemView_Previews: PreviewProvider {
    static var previews: some View {
        SessionListItemView()
    }
}
