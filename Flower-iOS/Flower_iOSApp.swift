//
//  Flower_iOSApp.swift
//  Flower-iOS
//
//  Created by dgsw8th38 on 7/17/24.
//

import SwiftUI
import FlowKit

@main
struct Flower_iOSApp: App {
    var body: some Scene {
        WindowGroup {
            FlowPresenter(rootView: OnboardingView())
                .ignoresSafeArea()
        }
    }
}
