//
//  CustomTabBarView.swift
//  Be Charge Host
//
//  Created by Carmine Porricelli on 26/06/22.
//

import SwiftUI

import SwiftUI

struct CustomTabBarView: View {
    @StateObject private var customTabViewModel = CustomTabViewModel()
    
    private struct Settings {
        static let PaddingX: CGFloat = 30
        static let PaddingY: CGFloat = 10
        static let ActiveTabColor: Color = .accentColor
        static let InactiveTabColor: Color = .customSecondary
        
        static let IconFont: Font = .title3
        static let LabelFont: Font = .footnote.weight(.medium)
        
        static let TabItemVerticalSpacing: CGFloat = 8
        static let SelectedRectangleWidth: CGFloat = 40
        static let SelectedRectangleHeight: CGFloat = 2
        static let SelectedRectangleCornerRadius: CGFloat = 999
    }
    
    
    var body: some View {
        ZStack {
            switch customTabViewModel.activeTab {
            case .profile:
                DashboardTabView()
            case .calendar:
                CalendarTabView()
            case .help:
                EmptyView()
            }
            
            makeTabBar()
                .edgesIgnoringSafeArea(.bottom)
                
        }
    }
    
    @ViewBuilder
    private func makeTabItem(for tab: CustomTabViewModel.Tab) -> some View {
        
        let isActiveTab = customTabViewModel.activeTab == tab.type
        
        Button  {
            customTabViewModel.send(action: .changeTab(tab: tab))
        } label: {
            VStack(spacing: Settings.TabItemVerticalSpacing) {
                Image("bar")
                    .resizable()
                    .frame(
                        width: Settings.SelectedRectangleWidth,
                        height: Settings.SelectedRectangleHeight
                    )
                    .foregroundColor(.customPrimary)
                    .opacity(isActiveTab ? 1 : 0)
                HStack {
                    Image(systemName: tab.icon)
                        .font(Settings.IconFont)
                    
                    if (isActiveTab) {
                        Text(tab.title)
                            .font(Settings.LabelFont)
                    }
                    
                }
            }
            .foregroundColor(
                isActiveTab
                ? Settings.ActiveTabColor
                : Settings.InactiveTabColor
            )
        }
    }
    
    @ViewBuilder
    private func makeTabBar() -> some View {
        VStack {
            Spacer()
            
            HStack {
                ForEach(customTabViewModel.tabs, id: \.self) { tab in
                    makeTabItem(for: tab)
                    if tab != customTabViewModel.tabs.last {
                        Spacer()
                    }
                }
            }
            
            .padding(.bottom, Settings.PaddingY)
            .padding(.horizontal, Settings.PaddingX)
            .padding(.bottom, 34)
            .background {
                ZStack {
                    Color.white
                    VStack {
                        Rectangle()
                            .fill(Color.primary.opacity(0.1))
                            .frame(height: 1)
                        Spacer()
                    }
                }
            }
            

        }

    }
    
}

struct CustomTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBarView()
    }
}
