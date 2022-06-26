//
//  DashboardTabView.swift
//  Be Charge Host
//
//  Created by Martina Esposito on 26/06/2022.
//

import SwiftUI

struct DashboardTabView: View {
    @State private var isRequestsListPresented: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    
                    Text("Dashboard")
                        .foregroundColor(.customPrimary)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.bottom)
                        .padding(.horizontal)
                    
                    HStack {
                        
                        Label("Mario Rossi", systemImage: "person")
                            .font(.headline)
                            .foregroundColor(.customPrimary)
                        
                        Spacer()
                        
                        
                        Button { isRequestsListPresented.toggle() } label: {
                            Image(systemName: "bell.badge.fill")
                        }
                        
                        Button {} label: {
                            Image(systemName: "gear")
                        }
                        
                    }
                    .padding(.horizontal)
                    
                    
                    VStack(alignment: .leading) {
                        Text("Report June")
                            .font(.title3)
                            .fontWeight(.semibold)
                        
                        HStack(alignment: .bottom,spacing: 0) {
                            VStack(alignment: .leading) {
                                Text("kwH")
                                    .font(.footnote)
                                    .foregroundColor(.customSecondary)
                                
                                Text("31,87")
                                    .fontWeight(.semibold)
                                
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            
                            
                            VStack(alignment: .leading) {
                                Text("cO2 removed")
                                    .font(.footnote)
                                    .foregroundColor(.customSecondary)
                                
                                Text("19,0 kg")
                                    .fontWeight(.semibold)
                                
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            
                            
                            VStack(alignment: .trailing) {
                                Text("83€")
                                    .font(.title)
                                    .fontWeight(.bold)
                                
                            }
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            
                        }
                        .padding(.top, 6)
                    }
                    .foregroundColor(.customPrimary)
                    .padding()
                    .background {
                        Rectangle()
                            .fill(Color.gray100)
                        
                    }
                    .padding(.top)
                    
                    
                    Text("Plugs status")
                        .padding(.top)
                        .foregroundColor(.customSecondary)
                        .padding(.horizontal)
                    
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        HStack {
                            
                            NavigationLink {
                                OngoingActivitiesView()
                            } label: {
                                VStack(alignment: .leading) {
                                    HStack {
                                        Image("Plug-Type-2")
                                            .overlay {
                                                ZStack(alignment: .topLeading) {
                                                    ZStack {
                                                        Circle()
                                                            .fill(Color.white)
                                                            .frame(width: 18, height: 18)
                                                        
                                                        Circle()
                                                            .fill(Color.customGreen)
                                                            .frame(width: 14, height: 14)
                                                    }
                                                    .offset(x: 6, y: -6)
                                                }
                                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                                            }
                                            .padding()
                                        
                                        VStack(alignment: .leading) {
                                            Text("1 - Available")
                                                .font(.title3)
                                                .fontWeight(.semibold)
                                                .padding(.bottom, 6)
                                            
                                            HStack {
                                                Text("kWh")
                                                    .font(.footnote)
                                                Text("0,30")
                                                    .fontWeight(.semibold)
                                                
                                            }
                                            
                                            HStack {
                                                Text("Potenza  max")
                                                    .font(.footnote)
                                                Text("7,4kW")
                                                    .fontWeight(.semibold)
                                            }
                                            
                                            HStack {
                                                Text("Socket")
                                                    .font(.footnote)
                                                Text("Type 2")
                                                    .fontWeight(.semibold)
                                            }
                                            
                                        }
                                    }
                                }
                                .foregroundColor(.white)
                                .padding()
                                .background {
                                    RoundedRectangle(cornerRadius: 12)
                                        .fill(Color.customPrimary)
                                    
                                }
                            }

                            
                            NavigationLink {
                                OngoingActivitiesView()
                            } label: {
                                VStack(alignment: .leading) {
                                    HStack {
                                        Image("Plug-Type-2")
                                            .overlay {
                                                ZStack(alignment: .topLeading) {
                                                    ZStack {
                                                        Circle()
                                                            .fill(Color.white)
                                                            .frame(width: 18, height: 18)
                                                        
                                                        Circle()
                                                            .fill(Color.customRed)
                                                            .frame(width: 14, height: 14)
                                                    }
                                                    .offset(x: 6, y: -6)
                                                }
                                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                                            }
                                            .padding()
                                        
                                        VStack(alignment: .leading) {
                                            Text("2 - In use")
                                                .font(.title3)
                                                .fontWeight(.semibold)
                                                .padding(.bottom, 6)
                                            
                                            HStack {
                                                Text("kWh")
                                                    .font(.footnote)
                                                Text("0,30")
                                                    .fontWeight(.semibold)
                                                
                                            }
                                            
                                            HStack {
                                                Text("Potenza  max")
                                                    .font(.footnote)
                                                Text("7,4kW")
                                                    .fontWeight(.semibold)
                                            }
                                            
                                            HStack {
                                                Text("Socket")
                                                    .font(.footnote)
                                                Text("Type 2")
                                                    .fontWeight(.semibold)
                                            }
                                            
                                        }
                                    }
                                }
                                .foregroundColor(.white)
                                .padding()
                                .background {
                                    RoundedRectangle(cornerRadius: 12)
                                        .fill(Color.customPrimary)
                                    
                                }
                            }
                            
                            
                            
                        }
                        .padding(.horizontal)
                        
                        
                    }
                    
                    Text("Last sessions")
                        .padding(.top)
                        .foregroundColor(.customSecondary)
                        .padding(.horizontal)
                    
                    
                    VStack {
                        SessionListItemView()
                        SessionListItemView()
                        SessionListItemView()
                        SessionListItemView()
                    }
                    .padding(.horizontal)
                    
                }
                .padding(.bottom, 100)
                
            }
            .navigationBarHidden(true)
            .fullScreenCover(isPresented: $isRequestsListPresented) {
                RequestListView(isPresented: $isRequestsListPresented)
        }
        }
    }
}

struct DashboardTabView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardTabView()
    }
}
