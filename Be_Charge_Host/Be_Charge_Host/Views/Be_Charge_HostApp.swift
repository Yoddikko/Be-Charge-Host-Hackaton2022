//
//  Be_Charge_HostApp.swift
//  Be Charge Host
//
//  Created by Carmine Porricelli on 26/06/22.
//

import SwiftUI
import UserNotifications

@main
struct Be_Charge_HostApp: App {
    let notificationService = NotificationService()
    
    var body: some Scene {
        WindowGroup {
            CustomTabBarView()
        }
    }
}
