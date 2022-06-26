//
//  RequestListView.swift
//  Be_Charge_Host
//
//  Created by Carmine Porricelli on 26/06/22.
//

import SwiftUI

struct RequestListView: View {
    
    @Binding var isPresented: Bool
    
    var body: some View {
        ScrollView {
            VStack {
                
                HStack {
                    Text("Requests")
                        .foregroundColor(.customPrimary)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.vertical)
                    
                    Spacer()
                    
                    Button { isPresented.toggle() } label: {
                        Text("Close")
                    }
                }
                
                RequestListItemView()
                RequestListItemView()
                RequestListItemView()
                RequestListItemView()
                RequestListItemView()
                RequestListItemView()
                RequestListItemView()
                RequestListItemView()
                RequestListItemView()
            }
            .padding()
        }
    }
}

struct RequestListView_Previews: PreviewProvider {
    static var previews: some View {
        RequestListView(isPresented: .constant(true))
    }
}
