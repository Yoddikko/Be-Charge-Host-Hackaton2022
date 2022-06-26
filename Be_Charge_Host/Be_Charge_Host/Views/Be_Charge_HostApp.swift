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
    @StateObject private var notificationService = NotificationService()
    
    var body: some Scene {
        WindowGroup {
            CustomTabBarView()
                .fullScreenCover(isPresented: $notificationService.isPresented) {
                    RequestView(isPresented: $notificationService.isPresented)
                }
        }
    }
}
