//
//  OnboardingView.swift
//  Flower-iOS
//
//  Created by dgsw8th38 on 7/17/24.
//

import SwiftUI
import FlowKit

struct OnboardingView: View {
    
    var body: some View {
        VStack(spacing: 16) {
            Image(.logo)
                .resizable()
                .scaledToFit()
                .frame(height: 90)
                .padding(.top, 102)
            Text("플로워")
                .font(.customFont(32))
            Spacer()
            LargeButton("로그인") {
                
            }
            LargeButton("회원가입", isSecondary: true) {
                
            }
        }
        .padding(20)
        .navigationBarHidden(true)
    }
}

#Preview {
    OnboardingView()

}
