//
//  SheetView.swift
//  Be Charge Host
//
//  Created by Martina Esposito on 26/06/2022.
//

import SwiftUI

struct CalendarSheet: View {
    
    let selectedDay: CalendarTabViewModel.Day
    @State private var scrollOffset: CGFloat = 0.0
    
    
    var contentScale: CGFloat {
        let minScale = 0.92
        let scale = ((scrollOffset / 100) * (1 - minScale)) + minScale
        
        return scale >= 1 ? 1 : scale
    }
    
    private var weekdayAndDay: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE dd"
        
        return formatter.string(from: Date())
    }
    
    var body: some View {
        
        ScrollViewOffsetReader(scrollOffset: $scrollOffset) {
            Rectangle()
                .fill(.clear)
                .frame(height: 180)
                .allowsHitTesting(false)
            
            ZStack {
                
                RoundedRectangle(cornerRadius: 20)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.white)
                    .padding(.top, 30)
                
                VStack{
                    HStack{
                        
                        Text(weekdayAndDay)
                            .foregroundColor(.customPrimary)
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        
                        Spacer()
                        
                        Text("4 rented")
                            .foregroundColor(.customSecondary)
                            .font(.body)
                        
                    }
                    .padding()
                    
                    
                    //MARK: - Test
                    makeRentTimeBlock(for: "08:00")
                    makeRentTimeBlock(for: "10:00")
                    makeRentTimeBlock(for: "12:00")
                    makeRentTimeBlock(for: "17:00")

                }
                .padding(.top, 40)
                .padding(.bottom, 100)
            }
            .scaleEffect(contentScale, anchor: .top)
            
            
        }
    }
    
    
    @ViewBuilder
    private func makeRentTimeBlock(for time: String) -> some View {
        HStack(alignment: .top) {
            Text(time)
                .foregroundColor(.customPrimary)
                .font(.body)
                .fontWeight(.medium)
            
            
            Divider()
                .padding(.horizontal, 8)
                        
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.customPrimary)
                .frame(height: 100)
                .frame(maxWidth: .infinity)
                .overlay {
                    VStack(alignment: .leading) {
                        
                        HStack {
                            Text("Marilea Minasi")
                                .fontWeight(.semibold)
                            Spacer()
                        }
                        
                        HStack {
                            Text("Renault Megan (2022)")
                            Spacer()
                        }
                        Spacer()

                        
                        HStack {
                            Label("00:45:12", systemImage: "clock")
                                .foregroundColor(.gray200)
                                .font(.footnote)
                        }
                        
                    }
                    .foregroundColor(.white)
                    .padding()
                }
        }
        .padding()
    }
}

struct CalendarSheet_Previews: PreviewProvider {
    static var previews: some View {
        CalendarSheet(selectedDay: .init(date: Date()))
    }
}
