//
//  CustomTabBarViewModel.swift
//  Be Charge Host
//
//  Created by Carmine Porricelli on 26/06/22.
//

import Foundation

final class CustomTabViewModel: ObservableObject {
    @Published private(set) var activeTab: Tab.TabType = .calendar
    
    func send(action: Action) {
        switch action {
        case .changeTab(let tab):
            activeTab = tab.type
        }
    }
    
    let tabs = [
        Tab(
            icon: "person",
            title: "Profile",
            type: .profile
        ),
        
        Tab(
            icon: "calendar",
            title: "Calendar",
            type: .calendar
        ),
        
        Tab(
            icon: "questionmark.circle",
            title: "Support",
            type: .help
        )
    ]
    
    enum Action {
        case changeTab(tab: Tab)
    }
    
    
    struct Tab: Hashable {
        let icon: String
        let title: String
        let type: TabType
        
        
        fileprivate init(icon: String, title: String, type: TabType) {
            self.icon = icon
            self.title = title
            self.type = type
        }
        
        enum TabType {
            case profile
            case calendar
            case help
        }
    }

}



