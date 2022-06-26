//
//  CalendarTabView.swift
//  Be Charge Host
//
//  Created by Martina Esposito on 26/06/2022.
//

import SwiftUI

struct CalendarTabView: View {
    @StateObject private var calendarTabViewModel: CalendarTabViewModel = CalendarTabViewModel()
    
    private var days: Array<CalendarTabViewModel.Day> { CalendarTabViewModel.daysMock }
    private var monthAndYear: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM YYYY"
        
        return formatter.string(from: Date())
    }
        
    
    var body: some View {
        
        ZStack {
            VStack(spacing: 0) {
                makeDaySelectionView()
                Spacer()
            }
            
            CalendarSheet()
            
        }
        .background(Color.gray100)
    }
    
    @ViewBuilder
    private func makeDaySelectionView() -> some View {
        VStack {
            HStack {
                Text(monthAndYear)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                
                Spacer()
            }
            
            HStack {
                
                ForEach(days) { day in
                    
                    let isActive = day.id == calendarTabViewModel.selectedDay.id
                    
                    VStack {
                        
                        Text(day.weekdayLetter)
                            .font(.caption)
                            .foregroundColor(isActive ? .customPrimary : .customSecondary)
                            .fontWeight(isActive ? .semibold : .regular)
                            .padding()
                        
                        Button {
                            calendarTabViewModel.send(action: .selectDay(id: day.id))
                        } label: {
                            
                            Text("\(day.dayOfMonth)")
                                .foregroundColor(isActive ? .customPrimary : .customSecondary)
                                .fontWeight(isActive ? .bold : .regular)
                            
                        }
                    }
                    .frame(maxWidth: .infinity)
                }
            }
            .padding()
        }

    }
}

struct CalendarTabView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarTabView()
    }
}
