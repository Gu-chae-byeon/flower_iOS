//
//  MainView.swift
//  Flower-iOS
//
//  Created by dgsw8th38 on 7/17/24.
//

import SwiftUI

struct MainView: View {
    
    @State var currentView: Menu = .home
    @Namespace var animation
    
    enum Menu: String, CaseIterable {
        case center = "센터 찾기"
        case home = "홈"
        case profile = "프로필"
        
        var icon: Image {
            switch self {
            case .center: .init("Union")
            case .home: .init("home")
            case .profile: .init("profile")
            }
        }
        
        var content: AnyView {
            switch self {
            case .center: .init(MapView())
            case .home: .init(HomeView())
            case .profile: .init(Text("Profile"))
            }
        }
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ForEach(Menu.allCases, id: \.self) { view in
                view.content
                    .safeAreaPadding(.bottom, 80)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .offset(x: { () -> CGFloat in
                        let cases = Menu.allCases
                        let currentIndex = cases.firstIndex(of: currentView)!
                        let index = cases.firstIndex(of: view)!
                        if index == currentIndex {
                            return 0
                        } else if index < currentIndex {
                            return -10
                        } else {
                            return 10
                        }
                    }())
                    .opacity(view == currentView ? 1 : 0)
            }
            HStack {
                Spacer()
                ForEach(Menu.allCases, id: \.self) { view in
                    let active = currentView == view
                    ZStack {
                        if active {
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color("navColor"))
                                .matchedGeometryEffect(id: 0, in: animation)
                        }
                        Button {
                            currentView = view
                        } label: {
                            VStack(spacing: 7) {
                                view.icon
                                    .foregroundColor(active ? .white : .gray)
                                Text(view.rawValue)
                                    .font(.system(size: 12, weight: .semibold))
                            }
                        }
                    }
                    .frame(width: 60, height: 60)
                    .foregroundStyle(active ? .white : .gray)
                    Spacer()
                }
            }
            .frame(height: 80)
            .background(Color.white)
        }
        .animation(.spring(duration: 0.2), value: currentView)
    }
}

#Preview {
    FlowPreview {
        MainView()
    }
}
