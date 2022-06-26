//
//  NotificationService.swift
//  Be Charge Host
//
//  Created by Carmine Porricelli on 26/06/22.
//

import UserNotifications
import Combine

class NotificationService: NSObject, ObservableObject, UNUserNotificationCenterDelegate {
    
    private var cancellables: Set<AnyCancellable> = []
    private let notificationCenter = UNUserNotificationCenter.current()
    
    override init() {
        super.init()
        
        notificationCenter.requestAuthorization(options: [.alert, .sound]) { _, error in
            if let error = error {
                print("Error: ", error)
            }
        }
        
        notificationCenter.delegate = self
        
        
        Timer.publish(every: 10, on: .main, in: .common)
            .autoconnect()
            .sink { _ in
                print("SENT")
                self.sendNotification()
            }
            .store(in: &cancellables)
    }
    
    private func sendNotification() {
        let content = UNMutableNotificationContent()
        let name = randomName
        let currentDayString = "\(currentDay) at \(randomTime)"
        content.title = "\(name) wants to use your charger!"
        content.body = currentDayString
        content.sound = UNNotificationSound.default
        content.userInfo = [
            "name": name,
            "day": currentDayString
        ]

        
        let trigger = UNTimeIntervalNotificationTrigger(
            timeInterval: 5,
            repeats: false
        )
        
        let request = UNNotificationRequest(
            identifier: UUID().uuidString,
            content: content,
            trigger: trigger
        )
            
        notificationCenter.add(request) { (error) in
            if let error = error {
                print("Notification Error: ", error)
            }
        }
        
    }
}


//MARK: - Mock Data
extension NotificationService {
    private var randomName: String { ["Carmine", "Marilea", "Luca", "Martina", "Alessio"].randomElement()! }
    private var randomTime: String { ["09:00", "10:30", "14:00", "15:00", "17:30"].randomElement()! }
    
    private var currentDay: String {
        let currentDateTime = Date()
        let formatter = DateFormatter()
        
        formatter.timeStyle = .none
        formatter.dateStyle = .long
        formatter.string(from: currentDateTime)
        
        return formatter.string(from: currentDateTime)
    }

}
