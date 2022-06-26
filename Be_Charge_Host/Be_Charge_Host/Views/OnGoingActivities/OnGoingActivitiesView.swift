//
//  OngoingActivitiesView.swift
//  Be Charge Host
//
//  Created by Martina Esposito on 26/06/2022.
//

import SwiftUI

struct OngoingActivitiesView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HStack {
                    Button { self.presentationMode.wrappedValue.dismiss() } label: {
                        Image("left")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    }
                    Text("Overview")
                        .foregroundColor(.customPrimary)
                        .font(.title)
                        .fontWeight(.bold)

                }
                    .padding(.vertical)
                    .padding(.horizontal)

                VStack {
                    HStack{
                        VStack{

                            VStack{
                                
                                HStack{
                                    Text("Mario Rossi")
                                        .font(.headline)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.customPrimary)
                                    
                                    Spacer()
                                }

                                HStack{
                                    Text("TIPO 2 | EF613TP")
                                        .font(.subheadline)
                                        .foregroundColor(.customSecondary)
                                    
                                    Spacer()
                                }
                            }
                            .padding()

                            VStack{
                                HStack{
                                    Text("Renault")
                                        .font(.headline)
                                        .foregroundColor(.customPrimary)
                                    
                                    Spacer()
                                }
                                
                                HStack{
                                    Text("Renault Megan (2022)")
                                        .font(.subheadline)
                                        .foregroundColor(.customSecondary)
                                    
                                    Spacer()
                                }
                                
                            }
                            .padding()

                            VStack(alignment: .leading) {
                                HStack {
                                    Image(systemName: "clock")
                                    Text("00:45:12")
                                }
                                .foregroundColor(.customSecondary)
                                .font(.footnote)
                                
                                HStack {
                                    Image(systemName: "bolt")
                                    Text("7.4 kWh")
                                    
                                    Spacer()
                                }
                                .foregroundColor(.customSecondary)
                                .font(.footnote)

                            }
                            .padding()

                            HStack{

                                Text("More info")
                                    .font(.system(size: 15))
                                    .fontWeight(.regular)
                                    .padding()
                                    .foregroundColor(.accentColor)

                                Spacer()
                            }
                        }

                        Image("Car")
                            .resizable()
                            .frame(width: 203, height: 131)
                    }


                    Divider()
                    
                    HStack{
                        VStack{

                            VStack{
                                
                                HStack{
                                    Text("Mario Rossi")
                                        .font(.headline)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.customPrimary)
                                    
                                    Spacer()
                                }

                                HStack{
                                    Text("TIPO 2 | EF613TP")
                                        .font(.subheadline)
                                        .foregroundColor(.customSecondary)
                                    
                                    Spacer()
                                }
                            }
                            .padding()

                            VStack{
                                HStack{
                                    Text("Renault")
                                        .font(.headline)
                                        .foregroundColor(.customPrimary)
                                    
                                    Spacer()
                                }
                                
                                HStack{
                                    Text("Renault Megan (2022)")
                                        .font(.subheadline)
                                        .foregroundColor(.customSecondary)
                                    
                                    Spacer()
                                }
                                
                            }
                            .padding()

                            VStack(alignment: .leading) {
                                HStack {
                                    Image(systemName: "clock")
                                    Text("00:45:12")
                                }
                                .foregroundColor(.customSecondary)
                                .font(.footnote)
                                
                                HStack {
                                    Image(systemName: "bolt")
                                    Text("7.4 kWh")
                                    
                                    Spacer()
                                }
                                .foregroundColor(.customSecondary)
                                .font(.footnote)

                            }
                            .padding()

                            HStack{

                                Text("More info")
                                    .font(.system(size: 15))
                                    .fontWeight(.regular)
                                    .padding()
                                    .foregroundColor(.accentColor)

                                Spacer()
                            }
                        }

                        Image("Car")
                            .resizable()
                            .frame(width: 203, height: 131)
                    }
                    
                }
            }
            .navigationBarHidden(true)
            .padding(.bottom, 100)
        }
    }
}

struct OngoingActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        OngoingActivitiesView()
    }
}
