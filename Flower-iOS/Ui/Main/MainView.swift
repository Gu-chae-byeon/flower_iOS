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
            case .center: .init(systemName: "flag.fill")
            case .home: .init(systemName: "house.fill")
            case .profile: .init(systemName: "person.fill")
            }
        }
        
        var content: AnyView {
            switch self {
            case .center: .init(Text("Center"))
            case .home: .init(Text("Home"))
            case .profile: .init(Text("Profile"))
            }
        }
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ForEach(Menu.allCases, id: \.self) { view in
                view.content
                    .safeAreaPadding(80)
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
                                .fill(Color.accentColor)
                                .matchedGeometryEffect(id: 0, in: animation)
                        }
                        Button {
                            currentView = view
                        } label: {
                            VStack(spacing: 7) {
                                view.icon
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
        }
        .animation(.spring(duration: 0.2), value: currentView)
    }
}

#Preview {
    MainView()
}
