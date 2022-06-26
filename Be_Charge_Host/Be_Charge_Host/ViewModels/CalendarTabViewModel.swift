//
//  CalendatTabViewModel.swift
//  Be Charge Host
//
//  Created by Carmine Porricelli on 26/06/22.
//

import Foundation

class CalendarTabViewModel: ObservableObject {
    @Published private(set) var selectedDay = daysMock.first!
    
    func send(action: Action) {
        switch action {
        case .selectDay(let id):
            selectedDay = CalendarTabViewModel.daysMock.first { $0.id == id }!
        }
    }
    
    enum Action {
        case selectDay(id: String)
    }
        
    struct Day: Identifiable {
        var id: String { String(self.date.timeIntervalSince1970) }
        let date: Date
        
        var dayOfMonth: String {
            let formatter = DateFormatter()
            formatter.dateFormat = "dd"
            return formatter.string(from: self.date)
        }
        
        var weekdayLetter: String {
            let formatter = DateFormatter()
            formatter.dateFormat = "EEEEE"
            return formatter.string(from: self.date)
        }
    }
}


extension CalendarTabViewModel {
    static let daysMock = getMockDays()
    
    private static func getMockDays() -> [CalendarTabViewModel.Day] {
        var dates: [Date] = []
        for i in -2...3 {
            dates.append(Calendar.current.date(byAdding: .day, value: i, to: Date())!)
        }
        return dates.map { Day(date: $0) }
    }
}


